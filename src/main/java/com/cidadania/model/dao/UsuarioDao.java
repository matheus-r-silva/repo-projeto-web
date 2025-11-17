package com.cidadania.model.dao;

import java.util.List;

import com.cidadania.model.entities.Usuario;

public interface UsuarioDao {
	void inserir(Usuario obj);
	void atualizar(Usuario obj);
	void deletarPorId(Usuario obj);
	Usuario acharPorId(Usuario obj);
	List<Usuario> listarTodos();
}
