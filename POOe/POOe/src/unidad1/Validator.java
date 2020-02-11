package unidad1;
/**
 * Permite limpiar y validar distintos tipo de parámetros para la gestión de usuarios.
 * @author moises
 * @version 0.1.0
 * */
public class Validator {
	
	/** Procesa el nombre de usuario y devuelve una cadena válida.
	 *  @param userName El nombre de usuario con caracteres no válidos.
     *	@return El nombre de usuario limpio de caracteres inválidos.
	 * */
	public String cleanUserName(String userName) {
		userName = userName.trim().replaceAll("[^\\w]+", "");
		return userName;
	}
	
	/** Procesa la edad dada por el usuario y devuelve una cantidad válida.
	 * @param age edad dada por el usuario.
	 * @return un valor numérico con la edad del usuario.
	 * */
	public int cleanAge(String age) {
		age = age.trim().replaceAll("\\D+", "");
		return Integer.parseInt(age);
	}
}
