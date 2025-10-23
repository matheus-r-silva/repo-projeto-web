package com.cidadania.model.entities;

import java.util.Date;
import java.util.Objects;

public class Denuncia {
	private Integer id;
	private Date data;
	private String descricao;
	
	public Denuncia() {}

	public Denuncia(Integer id, Date data, String descricao) {
		this.id = id;
		this.data = data;
		this.descricao = descricao;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Date getData() {
		return data;
	}

	public void setData(Date data) {
		this.data = data;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	@Override
	public int hashCode() {
		return Objects.hash(id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Denuncia other = (Denuncia) obj;
		return Objects.equals(id, other.id);
	}
	
	
}
