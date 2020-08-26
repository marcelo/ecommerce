package araujo.santos.marcelo.ecommerce;

import java.io.Serializable;
import java.math.BigDecimal;

public class Produto implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8551941546520549767L;
	String nome;
	String url;
	String categoria;
	String peso;
	String cor;
	String classificacao;
	String preco;
	String desconto;

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getCategoria() {
		return categoria;
	}

	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}

	public String getPeso() {
		return peso;
	}

	public void setPeso(String peso) {
		this.peso = peso;
	}

	public String getCor() {
		return cor;
	}

	public void setCor(String cor) {
		this.cor = cor;
	}

	public String getClassificacao() {
		return classificacao;
	}

	public void setClassificacao(String classificacao) {
		this.classificacao = classificacao;
	}

	

	public String getPreco() {
		return preco;
	}

	public void setPreco(String preco) {
		this.preco = preco;
	}

	public String getDesconto() {
		return desconto;
	}

	public void setDesconto(String desconto) {
		this.desconto = desconto;
	}

	@Override
	public String toString() {
		return "Produto [nome=" + nome + ", url=" + url + ", classificacao=" + classificacao + ", preco=" + preco + "]";
	}

}
