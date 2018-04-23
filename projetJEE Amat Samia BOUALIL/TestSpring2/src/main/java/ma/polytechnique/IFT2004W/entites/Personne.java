package ma.polytechnique.IFT2004W.entites;

import static javax.persistence.GenerationType.IDENTITY;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;


@Entity
@Table(name = "personne")
@Inheritance(strategy=InheritanceType.SINGLE_TABLE) 

public abstract class Personne implements java.io.Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 7923357488068806744L;
	//private Integer idPersonne;
	//private String nom;
	//private String pass;
//	private String prenom;
	private Integer user_id;
	private User user;
	private String civilite;
	private String photo;
	
	 private String telephone;
	 
	private Compte compte;
	private String image;
	
	
	
	
	@Column(name = "telephone")
	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	
	 
	
	private Set<Document> documents = new HashSet<Document>(
			0);
	
	
	
	/*public Personne() {
		super();
	}*/
	
	/*@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "idPersonne", unique = true, nullable = false)
	public Integer getIdPersonne() {
		return idPersonne;
	}

	public void setIdPersonne(Integer idPersonne) {
		this.idPersonne = idPersonne;
	}*/
	@Column(name = "photo")
	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	@GenericGenerator(name = "generator", strategy = "foreign",
			parameters = @Parameter(name = "property", value = "user"))
			@Id
			@GeneratedValue(generator = "generator")
			@Column(name = "user_id", unique = true, nullable = false)
			public Integer getUser_id() {
				return this.user_id;
			}

			public void setUser_id(Integer stockId) {
				this.user_id = stockId;
			}

			@OneToOne(fetch = FetchType.LAZY)
			@PrimaryKeyJoinColumn
			public User getUser() {
				return this.user;
			}

			public void setUser(User stock) {
				this.user = stock;
			}
	
			
			
	 
	
	@OneToOne(fetch = FetchType.LAZY, mappedBy = "personne", cascade = CascadeType.ALL)
	public Compte getCompte() {
		return this.compte;
	}

	public void setCompte(Compte email) {
		this.compte = email;
	}
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "candidat")
	public Set<Document>  getDocuments () {
		return this.documents ;
	}

	public void setDocuments(Set<Document> offres) {
		this.documents = offres;
	}
	
	@Column(name = " civilite")
	public String getCivilite() {
		return civilite;
	}

	public void setCivilite(String civilite) {
		this.civilite = civilite;
	}
	
	@Column(name = " image")
	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
	 
	
	 
	

	/*@Override
	public String toString() {
		return "Personne [idPersonne=" + idPersonne + ", nom=" + nom + ", pass=" + pass + ", prenom=" + prenom
				+ ", cin=" + cin + ", email=" + email + "]";
	}*/

}
 
 
