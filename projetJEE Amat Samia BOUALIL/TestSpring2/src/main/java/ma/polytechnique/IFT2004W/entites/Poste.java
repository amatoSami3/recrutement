package ma.polytechnique.IFT2004W.entites;

import static javax.persistence.GenerationType.IDENTITY;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name = "poste"/*, uniqueConstraints = {
		///*@UniqueConstraint(columnNames = "employe") }*/)


public class Poste implements java.io.Serializable {
	private Integer idPoste;
	private String titre;
	private String type; // poste plein temps,stage, freelance:
	private Set<Employee> employee = new HashSet<Employee>(
			0);
	
	public Poste( ) {
	}

	
	public Poste(Integer idPoste, String titre, String type) {
		super();
		this.idPoste = idPoste;
		this.titre = titre;
		this.type = type;
	}


	/*public Poste( String titre, String type) {
		super();
		this.titre = titre;
		this.type = type;
		}*/
	
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "idPoste", unique = true, nullable = false)
	public Integer getIdPoste() {
		return idPoste;
	}
	public void setIdPoste(Integer idPoste) {
		this.idPoste = idPoste;
	}
	
	@Column(name = "titre", nullable = false, length = 10)
	public String getTitre() {
		return titre;
	}
	public void setTitre(String titre) {
		this.titre = titre;
	}
	
	@Column(name = "type",  nullable = false, length = 10)
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "poste")
	public Set<Employee> getEmployee() {
		return this.employee;
	}

	public void setEmployee(Set<Employee> offres) {
		this.employee = offres;
	}


	@Override
	public String toString() {
		return "Poste [idPoste=" + idPoste + ", titre=" + titre + ", type=" + type + "]";
	}
	
}
	

