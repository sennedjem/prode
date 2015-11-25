package main.java

import org.eclipse.xtend.lib.annotations.Accessors
import java.util.List
import java.util.ArrayList

@Accessors 
class Fecha extends ManejadorDePartidos{
	var Sistema sistema
	var Boolean estaCompleta
	
	new(List<Partido> pass,Sistema sistema){
		this.partidos = pass
		this.sistema = sistema
	}
	 
	override void completarJugada(List<Resultado> res){
		for(Resultado resultado : res){
			this.getPartido(resultado).completa(resultado)
		}
		this.estaCompleta= true
		sistema.notify(this)
	}
}