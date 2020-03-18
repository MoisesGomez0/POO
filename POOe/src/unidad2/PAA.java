package unidad2;

public class PAA implements Quiz{

	@Override
	public Qualification evaluate() {
		// TODO Auto-generated method stub
		return null;
	}
	
	public String print() {
		
		StringBuilder result = new StringBuilder("<form>");
		
		InputTag nameEvaluator = new InputTag("nameEvaluator","nameEvaluator","Ingrese el nombre del Evaluador.");
		InputTag nameEvaluated = new InputTag("nameEvaluated","nameEvaluated","Ingrese el nombre del Evaluado.");
		
		result.append(nameEvaluator.print());
		result.append("<br>");
		result.append(nameEvaluated.print());
		result.append("<br>");
		
		result.append("</form>");
		return result.toString();
	}

}
