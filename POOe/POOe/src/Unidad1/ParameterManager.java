package Unidad1;
/*
 * Visibilidad:
 * Caracteristica de los objetos
 * 	public: Cuando el atributo o método se puede ver desde dentro o fuera de la clase.
 * 	private: No se puede heredar ni son visibles fuera de la clase.
 * 	protected: No son visibles fuera de la clase pero son heredables.
 * */
/**
 * Gestiona la cantidad de parámetros recibidos.
 * Cuantifica y categoriza los parámetros recibidos por el programa.
 * @author @POO
 * @version 0.1.0*/
public class ParameterManager{
	/** Cuantifica la cantidad de parámetros.*/
	private int count;

	/**
	 * @return the count
	 */
	public int getCount() {
		return count;
	}

	/**
	 * @param count the count to set
	 */
	public void setCount(int count) {
		this.count = count;
	}
	/** Respuesta de analisis de parámetros*/
	public ReponseParameterManager analize(String[] parameters) {
		ReponseParameterManager rpm = new ReponseParameterManager();
		return rpm;
	}
	
	

}