package mvc;

public class CalculoCombustivelModel {
	Double precoAlcool;
	Double precoGasolina;
	Double valor;
	String resultado;
	public Double getPrecoAlcool() {
		return precoAlcool;
	}
	public void setPrecoAlcool(Double precoAlcool) {
		this.precoAlcool = precoAlcool;
	}
	public Double getPrecoGasolina() {
		return precoGasolina;
	}
	public void setPrecoGasolina(Double precoGasolina) {
		this.precoGasolina = precoGasolina;
	}
	public Double getValor() {
		return valor;
	}
	public void setValor(Double valor) {
		this.valor = valor;
	}
	public String getResultado() {
		return resultado;
	}
	public void setResultado(String resultado) {
		this.resultado = resultado;
	}
	public void calculaValor(Double precoAlcool, Double precoGasolina){
		this.valor= precoAlcool/precoGasolina;
	}
	public void mostraResultado(){
		if(this.valor < 0.7){
			this.resultado = "alcool";
		}
		else {
			this.resultado = "gasolina";
		}
	}
}
