package main.java

import java.util.Date
import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
class Partido {
	
	var String local
	var String visitante
	var Date fecha
	var Integer id
	var Integer golesLocal
	var Integer golesVisitante
	
	new(String local,String visitante,Date fecha){
		this.local = local
		this.visitante = visitante
		this.fecha = fecha
	}
	
	def void actualizar (Integer lo, Integer vis){
		this.golesLocal = lo
		this.golesVisitante = vis
	}
	
	def Boolean esGanador (String equipo){
		if(equipo.equals(this.local))
		return golesLocal>golesVisitante

	}
	
	def completa(Resultado resultado) {
		this.golesLocal = resultado.golesLocal
		this.golesVisitante = resultado.golesVisitante
	}
	
}