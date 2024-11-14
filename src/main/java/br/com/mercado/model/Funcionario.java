package br.com.mercado.model;

public class Funcionario {

	private long idFunc;
	private String nomeFunc;
	private String cargo;
	private String idade;
	
	public long getIdFunc() {
		return idFunc;
	}
	public void setIdFunc(long idFunc) {
		this.idFunc = idFunc;
	}
	public String getNomeFunc() {
		return nomeFunc;
	}
	public void setNomeFunc(String nomeFunc) {
		this.nomeFunc = nomeFunc;
	}
	public String getCargo() {
		return cargo;
	}
	public void setCargo(String cargo) {
		this.cargo = cargo;
	}
	public String getIdade() {
		return idade;
	}
	public void setIdade(String idade) {
		this.idade = idade;
	}
	
}
