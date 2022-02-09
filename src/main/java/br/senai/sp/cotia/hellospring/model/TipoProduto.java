package br.senai.sp.cotia.hellospring.model;

public enum TipoProduto {
	PERECIVEL ("Perecivel"), 
	NAO_PERECIVEL("Não Perecivel"),
	MEIO_PERECIVEL("Meio perecivel");
	
	
	String desc;

	public String toString() {
		return this.desc;
	}

	private TipoProduto(String desc) {
		this.desc = desc;
	}
	
	
	
}
