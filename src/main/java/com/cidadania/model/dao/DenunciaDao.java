package com.cidadania.model.dao;

import java.util.List;

import com.cidadania.model.entities.Denuncia;

public interface DenunciaDao {
	void inserir(Denuncia obj);
	void atualizar(Denuncia obj);
	void deletarPorId(Integer id);
	Denuncia encontrePorId(Integer id);
	List<Denuncia> encontreTodos();
}
