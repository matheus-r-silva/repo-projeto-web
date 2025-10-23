package com.cidadania.model.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import com.cidadania.db.BancoDeDados;
import com.cidadania.db.DbException;
import com.cidadania.model.dao.UsuarioDao;
import com.cidadania.model.entities.Usuario;

public class UsuarioDaoJDBC implements UsuarioDao {
	
	private Connection conn;
	
	public UsuarioDaoJDBC(Connection conn) {
		this.conn = conn;
	}
	
	@Override
	public void inserir(Usuario obj) {
		PreparedStatement st = null;
		try {
			st = conn.prepareStatement(
					"INSERT INTO Usuario "
					+ "(nome, email, senha) "
					+ "VALUES "
					+ "(?, ?, ?)",
					Statement.RETURN_GENERATED_KEYS);
			
			st.setString(1, obj.getNome());
			st.setString(2, obj.getEmail());
			st.setString(3, obj.getSenha());
			
			int rowsAffected = st.executeUpdate();
			
			if(rowsAffected > 0) {
				ResultSet rs = st.getGeneratedKeys();
				if(rs.next()) {
					int id = rs.getInt(1);
					obj.setId(id);
				}
				
				BancoDeDados.closeResultSet(rs);
				
			}else {
				throw new DbException("Erro inesperado! Nenhuma linha afetada!");
			}
			
		}catch(SQLException e) {
			throw new DbException(e.getMessage());
			
		}finally {
			BancoDeDados.closeStatement(st);
		}
	}

	@Override
	public void atualizar(Usuario obj) {
		PreparedStatement st = null;
		try {
			st = conn.prepareStatement(
					"UPDATE usuario "
					+ "SET nome = ?, email = ?, senha = ? "
					+ "WHERE id = ?");
			
			st.setString(1, obj.getNome());
			st.setString(2, obj.getEmail());
			st.setString(3, obj.getSenha());
			st.setInt(4, obj.getId());
			
			st.executeUpdate();
			
		}catch(SQLException e) {
			throw new DbException(e.getMessage());
			
		}finally {
			BancoDeDados.closeStatement(st);
		}
			
	}
		

	@Override
	public void deletarPorId(Integer id) {
		PreparedStatement st = null;
		try {
			st = conn.prepareStatement("DELE FROM usuario where id = ?");
			st.setInt(1, id);
			st.executeUpdate();
			
		}catch(SQLException e) {
			throw new DbException(e.getMessage());
			
		}finally {
			BancoDeDados.closeStatement(st);
		}
	}

	@Override
	public Usuario acharPorId(Integer id) {
		PreparedStatement st = null;
		ResultSet rs = null;
		
		try {
			st = conn.prepareStatement(
					"SELECT usuario.* FROM Usuario "
					+ "WHERE usuario.id = ?");
			
			st.setInt(1, id);
			rs = st.executeQuery();
			// FALTA COMPLETAR IMPLEMENTAÇÃO!!!!!!!!!!
			
		}catch(SQLException e) {
			throw new DbException(e.getMessage());
		}
		
		return null;
	}
	
	// FALTA COMPLETAR IMPLEMENTAÇÃO!!!!!!!!!!
	
	@Override
	public List<Usuario> encontreTodos() {
		// TODO Auto-generated method stub
		return null;
	}
	
}
