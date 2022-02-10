package br.senai.sp.cotia.hellospring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.senai.sp.cotia.hellospring.dao.DaoProduto;
import br.senai.sp.cotia.hellospring.model.Produto;
import br.senai.sp.cotia.hellospring.model.TipoProduto;

@Controller
public class ProdutoController {
	
	@RequestMapping("formProduto")
	public String form(Model model) {
		model.addAttribute("tipos", TipoProduto.values());
		return "formproduto";
		
		
	}
	
	@RequestMapping("salvarProduto")
	public String salvarProduto(Produto produto) {
			
			System.out.println(produto.getNome());
			System.out.println(produto.getPreco());
			System.out.println(produto.getEstoque());
			System.out.println(produto.getDataValidade());
			System.out.println(produto.getTipoProduto());
			
			DaoProduto dao = new DaoProduto();
			dao.inserir(produto);
			return "redirect:listarProduto";
			
	}
	
	
	@RequestMapping("listarProduto")
	public String listarProdutos(Model model) {
		DaoProduto dao = new DaoProduto();
		model.addAttribute("produtos", dao.listar());
		return "listaproduto";
		
	}
	
	@RequestMapping("excluirProduto")
	public String excluir(long idProduto) {
		DaoProduto dao = new DaoProduto();
		dao.excluir(idProduto);
		return "redirect:listarProduto";
		
		
	}
	
	@RequestMapping("alterarProduto")
	public String altarar(long idProduto, Model model) {
		DaoProduto dao = new DaoProduto();
		model.addAttribute("produto", dao.buscar(idProduto));
		return "forward:formProduto";
		
		
	}
	

}
