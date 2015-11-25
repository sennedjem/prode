package main.java

import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors
import java.util.ArrayList

@Accessors
public class ManejadorDePartidos {
	var List<Partido> partidos = new ArrayList<Partido>
	
	def void completarJugada(List<Resultado> res){
		for(Resultado resultado : res){
			this.getPartido(resultado).completa(resultado)
		}
	}
	
	def getPartido(Resultado resultado) {
		for(Partido par : partidos){
			if(par.id.equals(resultado.id))
				return par
			
		}
	}
	
	def getResultados() {
		var List<Resultado>  resu = new ArrayList<Resultado> 
		for(Partido par : partidos){
		resu.add(new Resultado(par.golesLocal, par.golesVisitante, par.id))	
		}
		return resu
	}
	
	
}