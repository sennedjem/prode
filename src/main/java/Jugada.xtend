package main.java

import java.util.List
import java.util.ArrayList
import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
class Jugada extends ManejadorDePartidos{

	var Integer puntaje
	var Integer id
	
	new(Fecha fech){
		this.puntaje = 0;
		this.id = fech.id
		for(Partido par: fech.partidos){
			this.partidos.add(new Partido(par.local,par.visitante,par.fecha))
		}
	}
	

	

	
}