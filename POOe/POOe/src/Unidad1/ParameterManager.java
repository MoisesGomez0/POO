package Unidad1;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

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
	 * Obtiene la cantidad de parámetros.
	 * @return count
	 */
	public int getCount() {
		return count;
	}

	/**
	 * @param count Establece la Cantidad de parámetros detectados
	 */
	public void setCount(int count) {
		this.count = count;
	}
	/** Respuesta de analisis de parámetros*/
	public ReponseParameterManager analize(Map<String,String[]> parameters) {
		List<ParameterAnalysis> results = new ArrayList<>();
		ReponseParameterManager rpm = new ReponseParameterManager();
		
		//Se ignora el indice
		for(String[] parameter : parameters.values()) {
			
			for(String element : parameter) {

				//Tamaño en caracteres del valor del parámetro
				int length;
				//Tipo del parametro
				String parameterType;
				
				length = element.length();
				
				if(element.matches("-?\\d+(\\.\\d+)?")) {
					parameterType = "numeric";
				}else {
					parameterType = "alphanumeric";
				}
				results.add(new ParameterAnalysis(element,length,parameterType));
			}
		}
		rpm.setCount(parameters.size());
		rpm.setResults(results);
		return rpm;
	}
	
	

}