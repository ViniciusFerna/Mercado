package br.com.mercado.model;

import java.sql.Date;

public class Produto {
	// Long -> 2
	// long -> 2
	// double -> 2.0
	// int -> 4M
	
	private Long id;
	private String nome;
	private double preco;
	private String descricao;
	private Date validade_lote;
	
	public Date getValidade_lote() {
		return validade_lote;
	}
	public void setValidade_lote(Date validade_lote) {
		this.validade_lote = validade_lote;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public double getPreco() {
		return preco;
	}
	public void setPreco(double preco) {
		this.preco = preco;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	
	
	
}
