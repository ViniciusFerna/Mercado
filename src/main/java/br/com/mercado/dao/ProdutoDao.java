package br.com.mercado.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import br.com.mercado.model.Produto;

public class ProdutoDao {

	private Connection conexao;
	
	// ProdutoDao = new ProdutoDao();
	public ProdutoDao() {
		conexao = ConnectionFactory.conectar();
	}
	
	public void inserir(Produto produto) {
		String sql = "INSERT INTO produtos (nome, preco, descricao)" + "VALUES (?, ?, ?)";
		
		// Java.sql
		PreparedStatement smtp; // Executar a consulta sql
		try {
			smtp = conexao.prepareStatement(sql);
			
			// Preencher a posição 1 com o nome da pizza
			smtp.setString(1, produto.getNome());
			smtp.setDouble(2, produto.getPreco());
			smtp.setString(3, produto.getDescricao());
			
			smtp.execute();	// Executar
			smtp.close();
			conexao.close();
			
		} catch (Exception e) {
			System.out.println("Deu erro: " + e.getMessage());
		}
	}
	
	
	// java.util
	public List<Produto> listar() {
		String sql = "SELECT * FROM produtos";
				
				PreparedStatement smtp;
				List<Produto> produtos = new ArrayList<Produto>();
				try {
					smtp = conexao.prepareStatement(sql);
					// resultado = Lista de produtos [], [ {}, {} ]
					// java.sql
					ResultSet resultado = smtp.executeQuery();			
					// resultado ( Lista de Produtos <ResultSet> )
					while (resultado.next()) {
						Produto pro = new Produto();
						
						pro.setId(resultado.getLong("id"));
						pro.setNome(resultado.getString("nome"));
						pro.setPreco(resultado.getDouble("preco"));
						pro.setDescricao(resultado.getString("descricao"));
						pro.setValidade_lote(resultado.getDate("validade_lote"));
						produtos.add(pro);
					}
					resultado.close();
					smtp.close();
					conexao.close();
					return produtos;
					
				} catch (Exception e) {
					throw new RuntimeException();
					
				}
				
		
	}
	
	public Produto buscar(Long id) {
		String sql = "SELECT * FROM produtos WHERE id = ?";
		
		PreparedStatement smtp;
		
		try {
			smtp = conexao.prepareStatement(sql);
			smtp.setLong(1, id);
			ResultSet resultado = smtp.executeQuery();
			Produto p = null; // não instanciado
			
			while (resultado.next()) {
				p = new Produto();
				p.setId(resultado.getLong("id"));
				p.setNome(resultado.getString("nome"));
				p.setPreco(resultado.getDouble("preco"));
				p.setDescricao(resultado.getString("descricao"));
			}
			
			smtp.close();
			resultado.close();
			conexao.close();
			return p;
			
		} catch (Exception e) {
			throw new RuntimeException();
		}
		
	}
	
	public void deletar(Long id) {
		String sql = "DELETE FROM produtos WHERE id = ?";
		
		PreparedStatement smtp;
		
		try {
			smtp = conexao.prepareStatement(sql);
			smtp.setLong(1, id);
			
			smtp.execute();
			smtp.close();
			conexao.close();
			
		} catch (Exception e) {
			throw new RuntimeException();
			
		}
		
		
	}
	
	public void atualizar(Produto produto, Long id) {
		String sql = "UPDATE produtos SET nome = ?, preco = ?, descricao = ?, validade_lote = ? WHERE id = ?";
		
		PreparedStatement smtp;
		
		try {
			// 1 => nome, 2 => preco, 3 => descricao...
			smtp = conexao.prepareStatement(sql);
			
			smtp.setString(1, produto.getNome());
			smtp.setDouble(2, produto.getPreco());
			smtp.setString(3, produto.getDescricao());
			smtp.setDate(4, produto.getValidade_lote());
			smtp.setLong(5, id);
			
			smtp.execute();
			smtp.close();
			conexao.close();
			
		} catch (Exception e) {
			throw new RuntimeException();
		}
		
	}
	
	
	
	
	
	
}
