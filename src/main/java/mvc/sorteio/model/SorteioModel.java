package mvc.sorteio.model;

public class SorteioModel {
	int mostraNumero;
	String message;
	int contador;

	public int getMostraNumero() {
		return mostraNumero;
	}

	public void setMostraNumero(int mostraNumero) {
		this.mostraNumero = mostraNumero;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage() {
		this.message = "";
	}

	public int getContador() {
		return contador;
	}

	public void setContador() {
		this.contador = this.contador + 1;
	}
	
	public void zerarContador(){
		this.contador = 0;
	}
	
}
