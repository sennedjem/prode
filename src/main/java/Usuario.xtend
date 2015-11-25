package main.java

import java.util.List
import java.util.ArrayList

class Usuario {
	var List<Jugada> jugadas
	var Integer id 
	var String pass
	var Integer puntajeTotal
	
	
	new(String pass){
		this.pass = pass
		this.jugadas = new ArrayList<Jugada>
	}
	
	
	def void agregarJugada(Fecha fech){
	jugadas.add(new Jugada(fech))
	}
	
	def void actualizarPuntajeTotal(){
	for(Jugada jug : this.jugadas)
	puntajeTotal = puntajeTotal + jug.puntaje
	}
	
	def getJugada(Fecha fech){
	for(Jugada jug: this.jugadas)
	if(jug.id.equals(fech.id))
	return jug
		
	}
	
	def seCompletoFecha(Fecha fecha) {
	this.getJugada(fecha).completarJugada(fecha.getResultados())
	this.actualizarPuntajeTotal()
	}
	
}