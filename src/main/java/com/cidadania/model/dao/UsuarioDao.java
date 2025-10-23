package com.cidadania.model.dao;

import java.util.List;

import com.cidadania.model.entities.Usuario;

public interface UsuarioDao {
	void inserir(Usuario obj);
	void atualizar(Usuario obj);
	void deletarPorId(Integer id);
	Usuario acharPorId(Integer id);
	List<Usuario> encontreTodos();
}
