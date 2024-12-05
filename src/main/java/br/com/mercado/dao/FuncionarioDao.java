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
		String sql = "INSERT INTO funcionarios (nomeFunc, cargo, idade)" + "VALUES (?, ?, ?)";
		
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
	
	public List<Funcionario> listarFunc() {
		String sql = "SELECT * FROM funcionarios";
			
			PreparedStatement smtp;
			List<Funcionario> funcionarios = new ArrayList<Funcionario>();
			
			try {
				smtp = conexao.prepareStatement(sql);
				ResultSet resultado = smtp.executeQuery();
				
				while (resultado.next()) {
					Funcionario func = new Funcionario();
					
					func.setIdFunc(resultado.getLong("idFunc"));
					func.setNomeFunc(resultado.getString("nomeFunc"));
					func.setCargo(resultado.getString("cargo"));
					func.setIdade(resultado.getString("idade"));
					funcionarios.add(func);
				}
				
				resultado.close();
				smtp.close();
				conexao.close();
				return funcionarios;
				
			} catch (Exception e) {
				throw new RuntimeException();
			}
	}
	
	public Funcionario buscarFunc(Long idFunc) {
		String sql = "SELECT * FROM funcionarios WHERE idFunc = ?";
		
		PreparedStatement smtp;
		
		try {
			smtp = conexao.prepareStatement(sql);
			smtp.setLong(1, idFunc);
			ResultSet resultado = smtp.executeQuery();
			Funcionario f = null;
			
			while (resultado.next()) {
				f = new Funcionario();
				f.setIdFunc(resultado.getLong("idFunc"));
				f.setNomeFunc(resultado.getString("nomeFunc"));
				f.setCargo(resultado.getString("cargo"));
				f.setIdade(resultado.getString("idade"));
			}
			
			smtp.close();
			resultado.close();
			conexao.close();
			return f;
		} catch (Exception e) {
			throw new RuntimeException();
		}
	}
	
	public void deletarFunc(Long idFunc) {
		String sql = "DELETE FROM funcionarios WHERE idFunc = ?";
		
		PreparedStatement smtp;
		
		try {
			smtp = conexao.prepareStatement(sql);
			smtp.setLong(1, idFunc);
			
			smtp.execute();
			smtp.close();
			conexao.close();
			
			
		} catch (Exception e) {
			throw new RuntimeException();
		}
	}
	
	public void atualizarFunc(Funcionario funcionario, Long idFunc) {
		String sql = "UPDATE funcionarios SET nomeFunc = ?, cargo = ?, idade = ? WHERE idFunc = ?";
		
		PreparedStatement smtp;
		
		try {
			smtp = conexao.prepareStatement(sql);
			
			smtp.setString(1, funcionario.getNomeFunc());
			smtp.setString(2, funcionario.getCargo());
			smtp.setString(3, funcionario.getIdade());
			smtp.setLong(4, idFunc);
			
			smtp.execute();
			smtp.close();
			conexao.close();
			
		} catch (Exception e) {
			throw new RuntimeException();
		}
	}
	
	
	
	
	
}
