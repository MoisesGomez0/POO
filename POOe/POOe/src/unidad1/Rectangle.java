package unidad1;

/**
 * Permite dibujar una figura rectangular en la pantalla usando etiquetas HTML.
 * @author swd
 * @version 0.1.0
 * */
public class Rectangle {
	/**
	 * Constructor vacío de la clase.
	 * */
	public Rectangle() {}
	
	public String draw(Point p, int h, int w, String color) {
		StringBuilder result = new StringBuilder(String.format("<div style='border:1px solid black;background-color:%s; position:fixed; top:%svh; left:%svw; width:%svw; height:%svh;'>&nbsp</div>",
				color, p.getY(), p.getX(), w, h));
		return result.toString();
	}
	
	public String draw(Point pointA, Point pointB, String color){
		int h = pointB.getY() - pointA.getX();
		int w = pointB.getY() - pointA.getY();
		
		return this.draw(pointA, h, w, color);
	}
	
	public String draw(Point p, int h, int w, String color, int times) {
		if(times == 0) {
			return this.draw(p, h, w, color);
		}
		return this.draw(p,h,w,color).replace("&nbsp", this.draw(p, h, w, color,times-1));
	}
	
	
	
}
