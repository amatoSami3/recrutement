package ma.polytechnique.IFT2004W.entites;

 
import java.sql.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Lob;

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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.UniqueConstraint;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "offre" /*, 
uniqueConstraints = @UniqueConstraint(columnNames = "typeOffre")*/)
public class Offre implements java.io.Serializable {

	  

	private Integer idOffre;
	private Employee employee;
	private String titre;
	private String typeOffre;
	private String experience;
	private String formation;
	private String ville;
	private String fonction;
	
	private Date dateExpir;
    @Lob
	private String description;
	private String profil;
	private Date datPub;
	private boolean valid; 
	private int civilite;
	private boolean autorise; 
	
	
	private Set<Candidatures> candidatures = new HashSet<Candidatures>(
			0);

	public Offre() {
	}

	public Offre(Employee stock, Date date) {
		this.employee = stock;
		this.datPub = date;
	}

	public Offre(Employee stock, String titre,String priceOpen, String priceClose,
			Date priceChange, String volume, Date date,Set<Candidatures> candidatures) {
		this.employee = stock;
		this.titre=titre;
		this.typeOffre = priceOpen;
		this.profil = priceClose;
		this.dateExpir = priceChange;
		this.description = volume;
		this.datPub = date;
		this.candidatures= candidatures;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "idOffre", unique = true, nullable = false)
	public Integer getIdOffre() {
		return this.idOffre;
	}

	public void setIdOffre(Integer recordId) {
		this.idOffre = recordId;
	}
	
	
	 
	

	@Column(name = "titre", precision = 6)
	public String getTitre() {
		return this.titre;
	}

	public void setTitre(String titre) {
		this.titre = titre;
	}

	@Column(name = "typeOffre", precision = 6)
	public String getTypeOffre() {
		return this.typeOffre;
	}

	public void setTypeOffre(String i) {
		this.typeOffre = i;
	}
	
	@JsonIgnore
	@ManyToOne(fetch = FetchType.LAZY,cascade = CascadeType.ALL)
	@JoinColumn(name = "user_id", nullable = false)
	public Employee getEmployee() {
		return this.employee;
	}

	public void setEmployee(Employee stock) {
		this.employee = stock;
	}
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy ="offre" ,cascade = CascadeType.ALL)
	public Set<Candidatures> getCandidatures() {
		return this.candidatures;
	}

	public void setCandidatures(Set<Candidatures> offres) {
		this.candidatures = offres;
	}
	
	@Column(name = "profil", precision = 6)
	public String getProfil() {
		return profil;
	}
	
	public void setProfil(String profil) {
		this.profil = profil;
	}
	@Column(name = "dateExpir", precision = 6)
	public Date getDateExpir() {
		return dateExpir;
	}

	public void setDateExpir(Date dateExpir) {
		this.dateExpir = dateExpir;
	}
	@Column(name = "description", columnDefinition="TEXT")
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	@Column(name = "datePub", precision = 6)
	public Date getDatPub() {
		return datPub;
	}

	public void setDatPub(Date datPub) {
		this.datPub = datPub;
	}
	
	
	@Column(name = "experience", precision = 6)
	public String getExperience() {
		return experience;
	}

	public void setExperience(String experience) {
		this.experience = experience;
	}
	
	@Column(name = "formation", precision = 6)
	public String getFormation() {
		return formation;
	}

	public void setFormation(String formation) {
		this.formation = formation;
	}
	
	@Column(name = "ville", precision = 6)
	public String getVille() {
		return ville;
	}

	public void setVille(String ville) {
		this.ville = ville;
	}
	@Column(name = "fonction", precision = 6)
	public String getFonction() {
		return fonction;
	}

	public void setFonction(String fonction) {
		this.fonction = fonction;
	}

	
	@Column(name = "civilite")
	public int getCivilite() {
		return civilite;
	}

	public void setCivilite(int civilite) {
		this.civilite = civilite;
	}

	

    @Column(name="valid")
	public boolean isValid() {
		return valid;
	}

	public void setValid(boolean valid) {
		this.valid = valid;
	}
	

    @Column(name="autorise")
	public boolean isAutorise() {
		return autorise;
	}

	public void setAutorise(boolean autorise) {
		this.autorise = autorise;
	}

	@Override
	public String toString() {
		return "Offre [idOffre=" + idOffre + ", titre=" + titre + ", typeOffre=" + typeOffre + ", profil=" + profil
				+ ", dateExpir=" + dateExpir + ", description=" + description + ", datPub=" + datPub + "]";
	}
	
 

}
