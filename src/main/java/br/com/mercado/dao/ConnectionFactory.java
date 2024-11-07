package br.com.mercado.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionFactory {
	private static final String USER = "root";
	private static final String SENHA = "root";
	
	// Biblioteca -> java.sql
	public static Connection conectar() {
		
		// java database connection
		
		try {
			// pegando a biblioteca de conexao ao banco de dados
			Class.forName("com.mysql.jdbc.Driver");
			// CREATE DATABASE mercado; no mysql
			Connection conexao = DriverManager.getConnection("jdbc:mysql://localhost:3306/mercado", USER, SENHA);	
			return conexao;
		} catch (Exception e) {
			// throw -> jogar para cima
			// RuntimeException -> erro que aconteceu enquanto o código rodava
			throw new RuntimeException();
		}
		
		
	}
	
}
