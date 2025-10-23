package com.cidadania.model.dao;

import com.cidadania.db.BancoDeDados;
import com.cidadania.model.dao.impl.UsuarioDaoJDBC;

public class DaoFactory {
	
	public static UsuarioDao criarUsuarioDao() {
		return new UsuarioDaoJDBC(BancoDeDados.getConnection());
	}
	
	//Implementar Criação de Denúncia
	
}
