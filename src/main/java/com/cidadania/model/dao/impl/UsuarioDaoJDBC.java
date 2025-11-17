package com.cidadania.model.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.cidadania.db.BancoDeDados;
import com.cidadania.db.ConnectionFactory;
import com.cidadania.db.DbException;
import com.cidadania.model.dao.UsuarioDao;
import com.cidadania.model.entities.Usuario;

public class UsuarioDaoJDBC implements UsuarioDao {
	
	private Connection conn;
	
//	public UsuarioDaoJDBC(Connection conn) {
//		this.conn = conn;
//	}
	
	public UsuarioDaoJDBC() {
		this.conn = new ConnectionFactory().getConnection();
	}
	
	@Override
	public void inserir(Usuario obj) {
		PreparedStatement st = null;
		try{
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
	public void deletarPorId(Usuario obj) {
		PreparedStatement st = null;
		try {
			st = conn.prepareStatement("DELE FROM usuario where id = ?");
			st.setInt(1, obj.getId());
			st.executeUpdate();
			
		}catch(SQLException e) {
			throw new DbException(e.getMessage());
			
		}finally {
			BancoDeDados.closeStatement(st);
		}
	}

	@Override
	public Usuario acharPorId(Usuario obj) {
		PreparedStatement st = null;
		ResultSet rs = null;
		try {
			st = conn.prepareStatement(
					"SELECT usuario.* FROM Usuario "
					+ "WHERE usuario.id = ?");
			
			st.setInt(1, obj.getId());
			rs = st.executeQuery();
			
			if(rs.next()) {
				Usuario usuario = instanciarUsuario(rs);
				return usuario;
			}
			return null;
			
		}catch(SQLException e) {
			throw new DbException(e.getMessage());
		}finally {
			try {
				st.close();
			} catch (SQLException e) {

				e.printStackTrace();
			}
		}
		
	}
	

	
	@Override
	public List<Usuario> listarTodos() {
		try {
			List<Usuario> usuarios = new ArrayList<>();
			PreparedStatement stmt = this.conn.prepareStatement("SELECT * FROM Usuario");
			ResultSet rs = stmt.executeQuery();
			
			while(rs.next()) {
				Usuario usuario = new Usuario();
				usuario.setId(rs.getInt("id"));
				usuario.setNome(rs.getString("nome"));
				usuario.setEmail(rs.getString("email"));
				usuario.setSenha(rs.getString("senha"));
				
				usuarios.add(usuario);
			}
			
			rs.close();
			stmt.close();
			return usuarios;
			
		}catch(SQLException e) {
			throw new DbException(e.getMessage());
		}
		
	}
	
	public Usuario instanciarUsuario(ResultSet rs) throws SQLException {
		Usuario obj = new Usuario();
		obj.setId(rs.getInt("id"));
		obj.setNome(rs.getString("nome"));
		obj.setEmail(rs.getString("email"));
		return obj;
	}
	
}
