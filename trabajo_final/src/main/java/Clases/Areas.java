package Clases;

public class Areas 
{	
	private int id_area	;
	private String nombre;
	private int telefono;
	private String mail;
	private int estado;
	
	

	public Areas(int id,String nombre,int telefono,String mail, int estado)
	{
		this.setId_area(id);   
		this.setNombre(nombre);  
		this.setTelefono(telefono);
		this.setMail(mail);		
		this.setEstado(estado);
	}

	
	public int getId_area() {
		return id_area;
	}
	public void setId_area(int id_area) {
		this.id_area = id_area;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public int getTelefono() {
		return telefono;
	}
	public void setTelefono(int telefono) {
		this.telefono = telefono;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public int getEstado() {
		return estado;
	}
	public void setEstado(int estado) {
		this.estado = estado;
	}
	

	
	
}
