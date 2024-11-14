package br.com.mercado.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import br.com.mercado.model.Funcionario;

public class FuncionarioDao {

	private Connection conexao;
	
	public FuncionarioDao() {
		conexao = ConnectionFactory.conectar();
	}
	
	public void inserirFunc(Funcionario funcionario) {
		String sql = "INSERT INTO funcionarios (nomeFunc, cargo, idade) VALUES (?, ?, ?)";
		
		PreparedStatement smtp;
		try {
			smtp = conexao.prepareStatement(sql);
			
			smtp.setString(1, funcionario.getNomeFunc());
			smtp.setString(2, funcionario.getCargo());
			smtp.setString(3, funcionario.getIdade());
			
			smtp.execute();
			smtp.close();
			conexao.close();
		} catch (Exception e) {
			System.out.println("Deu erro:" + e.getMessage());
		}
	}
	
	
	
}
