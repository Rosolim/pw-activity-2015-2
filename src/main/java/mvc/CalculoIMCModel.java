package mvc;

public class CalculoIMCModel {
	Double altura;
	Double peso;
	Double imc;
	String resultado;
	
	public Double getAltura() {
		return altura;
	}
	public void setAltura(Double altura) {
		this.altura = altura;
	}
	public Double getPeso() {
		return peso;
	}
	public void setPeso(Double peso) {
		this.peso = peso;
	}
	public Double getImc() {
		return imc;
	}
	public void setImc(Double imc) {
		this.imc = imc;
	}
	public String getResultado() {
		return resultado;
	}
	public void setResultado(String resultado) {
		this.resultado = resultado;
	}
	public void calculaIMC(Double peso, Double altura){
		this.imc = peso / (altura * altura);
	}
	public void mostrarResultado(){
		if (imc < 18.5){
			resultado="Magro";
		}
		else if (imc >= 18.5 && imc <=25) {
			resultado="Normal";
		}
		else{
			resultado="Acima do peso";
		}
	}
}
