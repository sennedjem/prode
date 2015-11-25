package main.java

import org.eclipse.xtend.lib.annotations.Accessors
import java.util.List
import java.util.Observable

@Accessors
class Sistema {
	
	var List<Usuario> usuarios
	var List<Fecha> fechas
	
	def void agregarFecha(List<Partido> partidos){
		var Fecha fecha = new Fecha(partidos,this)
		fechas.add(fecha)
		this.notify(fecha)
	}
	
	def void notify(Fecha fech){
		for(Usuario usr : this.usuarios)
		if(!fech.estaCompleta)
			usr.agregarJugada(fech)
		else
			usr.seCompletoFecha(fech)
	}
	
		
	
}