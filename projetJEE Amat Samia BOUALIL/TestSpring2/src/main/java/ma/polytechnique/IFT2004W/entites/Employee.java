package ma.polytechnique.IFT2004W.entites;

import java.sql.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "employee")

public class Employee  extends Personne implements java.io.Serializable {

	
	

	private Date dateRecrutement ;
	private Poste poste;
	private Set<Offre> offres = new HashSet<Offre>(
			0);
 
	public Employee() {
	}

	/*public Employee(Integer idpersonne) {
		this.idPersonne = idpersonne;
		
		///*this.poste = poste;
	}*/

	//public Employee(Poste poste) {
		//this.idPersonne = idpersonne;
		 
	//	this.poste = poste;
	//}
	
	/*@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "idEmployee", unique = true, nullable = false)
	public Integer getIdEmployee() {
		return this.idEmployee;
	}

	public void setIdEmployee(Integer stockId) {
		this.idEmployee = stockId;
	}*/

	/*@Column(name = "idPersonne", unique = true, nullable = false, length = 10)
	public Integer getIdPersonne() {
		return this.idPersonne;
	}

	public void setIdPersonne(Integer stockCode) {
		this.idPersonne = stockCode;
	}*/

	 
	
	@Column(name = "dateRecrutement")
	public Date getDateRecrutement() {
		return this.dateRecrutement;
	}

	public void setDateRecrutement(Date stockName) {
		this.dateRecrutement = stockName;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "employee",cascade = CascadeType.ALL)
	public Set<Offre> getOffres() {
		return this.offres;
	}

	public void setOffres(Set<Offre> offres) {
		this.offres = offres;
	}
	
	//@JsonIgnore
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "idPoste")
	public Poste getPoste() {
		return this.poste;
	}

	public void setPoste(Poste stock) {
		this.poste = stock;
	}
	
	
	
	@Override
	public String toString() {
		return "Employee [dateRecrutement=" + dateRecrutement + "]";
	}
	

}
