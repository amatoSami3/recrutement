package ma.polytechnique.IFT2004W.entites;

import static javax.persistence.GenerationType.IDENTITY;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

@Entity
@Table(name = "compte" )
public class Compte implements java.io.Serializable{
   

	//private Integer idCompte;
	private int idPersonne;
	private String email;
	private String pass;
	private int acces;
	private Personne personne;
	
	public Compte ()  {}
	public Compte(  String emial, String pass, int acces, Personne personne) {
		super();
		//this.idCompte = idCompte;
		this.email = emial;
		this.pass = pass;
		this.acces = acces;
		this.personne = personne;
	}
	
	/*@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name ="idCompte", unique = true, nullable = false)
	public Integer getIdCompte() {
		return this.idCompte;
	}

	public void setIdCompte(Integer idCompte) {
		this.idCompte = idCompte;
	}
	*/
	
	@GenericGenerator(name = "generator", strategy = "foreign", parameters = @Parameter(name = "property", value = "personne"))
	@Id
	@GeneratedValue(generator = "generator")
	@Column(name = "idPersonne", unique = true, nullable = false)
	
	public int getIdPersonne() {
		return this.idPersonne;
	}

	public void setIdPersonne(int stockId) {
		this.idPersonne = stockId;
	}
	
	@OneToOne(fetch = FetchType.LAZY)
	@PrimaryKeyJoinColumn
	public Personne getPersonne() {
		return this.personne;
	}

	public void setPersonne( Personne candidat) {
		this.personne = candidat;
	}

	/*public void setPersonne( Candidat candidat) {
		this.personne = candidat;
	}
	
	public void setPersonne( Employee candidat) {
		this.personne = candidat;
	}*/
	
	
	@Column(name = "email", nullable = false)
	public String getEmail() {
		return this.email;
	}

	public void setEmail(String emial) {
		this.email = emial;
	}
	
	
	@Column(name = "password", nullable = false)
	public String getPass() {
		return this.pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	@Column(name = "acces", nullable = false)
	public int getAcces() {
		return this.acces;
	}
	 
	public void setAcces(int acces) {
		this.acces = acces;
	}
	
	@Override
	public String toString() {
		return "Compte [email=" + email + ", pass=" + pass + ", acces=" + acces + "]";
	}
	
	

}
