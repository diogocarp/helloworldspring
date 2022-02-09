package br.senai.sp.cotia.hellospring.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import br.senai.sp.cotia.hellospring.model.Produto;

public class DaoProduto {
	
	
	private Connection conexao;
	
	public DaoProduto() {
		
		conexao = ConnectionFactory.conectar();
		
		
	}
	
	public void inserir(Produto produto) {
		
		String sql = "insert into tb_produto" + "(nome, data_validade, preco, estoque, tipo_produto)" + "values (?,?,?,?,?)";
		
		PreparedStatement stmt;
		try {
			stmt = conexao.prepareStatement(sql);
			stmt.setString(1, produto.getNome());
			stmt.setDate(2, new Date(produto.getDataValidade().getTimeInMillis()));
			stmt.setDouble(3, produto.getPreco());
			stmt.setInt(4, produto.getEstoque());
			stmt.setInt(5, produto.getTipoProduto().ordinal());
			stmt.execute();
			conexao.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		
		
	}

}
