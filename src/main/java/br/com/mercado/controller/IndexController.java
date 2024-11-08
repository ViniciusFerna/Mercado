package br.com.mercado.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.mercado.dao.ConnectionFactory;
import br.com.mercado.dao.ProdutoDao;
import br.com.mercado.model.Produto;

// Anotação
@Controller

public class IndexController {
	
	@RequestMapping("/")
	public String inicio() {
		// Conectar ao banco de dados
		ConnectionFactory.conectar();
		// Redirecionar para rota /home
		return "redirect:home";
	}
	

	@RequestMapping("/home") // http://localhost:8080 /
	// String -> Retorno de uma pagina
	public String index(Model model) { // org.springframework
		ProdutoDao dao = new ProdutoDao();
		
		
		// items="${prodtos}"
		model.addAttribute("produtos", dao.listar());
		
		return "home"; // home.html
	}
	
	@RequestMapping("/form") 
	public String form(Long id, Model model) {
		ProdutoDao dao = new ProdutoDao();
		
		Produto p = new Produto();
		
		if (id != null) {
			p = dao.buscar(id);
		}
		
		model.addAttribute("produto", p);
		
		
		return "form"; // form.html
	}
	
	@RequestMapping("/produto")
	public String produto(Long id, Model model) {
		ProdutoDao dao = new ProdutoDao();
		// /produto?idProduto=523
		model.addAttribute("produto", dao.buscar(id));
		
		return "produto";
	}
	
	@RequestMapping(value = "salvarProduto", method = RequestMethod.POST)
	public String adicionarProduto(Produto produto) {
		ProdutoDao dao = new ProdutoDao();
		dao.inserir(produto);
		return "redirect:home";
	}
	
	@RequestMapping("deletarProduto")
	public String deletarProduto(Long id) {
		ProdutoDao dao = new ProdutoDao();
		dao.deletar(id);
		
		return "home";
		
	}
	
	/*
	 * GET - Buscar Informações
	 * POST - Criar Informações
	 * PUT - Atualizar Informações
	 * DELETE - Deletar Informações
	 */
	
	@RequestMapping(value = "atualizarProduto", method = RequestMethod.PUT)
	public String atualizarProduto(Long id, Produto p) {
		ProdutoDao dao = new ProdutoDao();
		
		dao.atualizar(p, id);
		
		return "redirect:home";
	}
	
	
	
	
	
	
	
	
	
	
}
