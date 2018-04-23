package ma.polytechnique.IFT2004W.entites;

import static javax.persistence.GenerationType.IDENTITY;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

@Entity
@Table(name="modele")
public class Modele {
	
	private int idModele;
	private String type;
	
	@Lob
	private String modelee;
	
	
	

	public Modele() {
	}
	
	public Modele(Integer idModele, String type, String modele) {
		super();
		this.idModele = idModele;
		this.type = type;
		this.modelee = modele;
	}
	
	@Id
	@GeneratedValue(strategy = IDENTITY)
	public int getIdModele() {
		return idModele;
	}

	public void setIdModele(int idModele) {
		this.idModele = idModele;
	}
	
	@Column(name = "type" )
	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}
	
	@Column(name = "modelee", columnDefinition="TEXT")
	public String getModelee() {
		return modelee;
	}

	public void setModelee(String modele) {
		this.modelee = modele;
	}

	 
	
	
	
}
