package Clases;

public class Empleados 
{
	private int id_empleado;
	private String nombre;
	private String apellido;
	private int dni;
	private String mail;	
	private int id_area;
	private int estado;
	

	public Empleados(int id,String nombre,String apellido,int dni,String mail,int id_area, int estado)
	{
		this.setId_empleado(id);   
		this.setNombre(nombre);  
		this.setApellido(apellido);
		this.setDni(dni);
		this.setMail(mail);		
		this.setId_area(id_area);
		this.setEstado(estado);
	}


	
	public int getId_empleado() {
		return id_empleado;
	}
	public void setId_empleado(int id_empleado) {
		this.id_empleado = id_empleado;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellido() {
		return apellido;
	}
	public void setApellido(String apellido) {
		this.apellido = apellido;
	}
	public int getDni() {
		return dni;
	}
	public void setDni(int dni) {
		this.dni = dni;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public int getId_area() {
		return id_area;
	}
	public void setId_area(int id_area) {
		this.id_area = id_area;
	}
	public int getEstado() {
		return estado;
	}
	public void setEstado(int estado) {
		this.estado = estado;
	}

}

