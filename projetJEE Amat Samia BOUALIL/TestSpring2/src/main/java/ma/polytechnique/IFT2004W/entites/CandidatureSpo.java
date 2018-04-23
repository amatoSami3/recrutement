package ma.polytechnique.IFT2004W.entites;
import java.sql.Blob;
import java.sql.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name ="candidaturesSpo")

public class CandidatureSpo implements java.io.Serializable {
	private Integer idCandidaturesSpo;
	private String statut;
	private Date dateModification;
	private String type;
	private Candidat candidat;
	private Offre offre;
	//private String motivatio;
	private String profil;
	@Lob
	private String img;
	
	private boolean deleted; 

	
	public CandidatureSpo() {
		//super();
	}


	public CandidatureSpo(Integer idCandidatures, String statut, Date dateModification, String type, Candidat candidat,Offre offre) {
		//super();
		this.idCandidaturesSpo = idCandidatures;
		this.statut = statut;
		this.dateModification = dateModification;
		this.type = type;
		this.candidat = candidat;
		this.offre = offre;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "idCandidaturesSpo", unique = true, nullable = false)
	public Integer getIdCandidaturesSpo() {
		return idCandidaturesSpo;
	}

	public void setIdCandidaturesSpo(Integer idCandidatures) {
		this.idCandidaturesSpo = idCandidatures;
	}
	
	
	
	
	@Column(name = "statut", precision = 6)
	public String getStatut() {
		return statut;
	}

	public void setStatut(String statut) {
		this.statut = statut;
	}

	
	@Column(name = "date_modification", precision = 6)
	public Date getDateModification() {
		return dateModification;
	}

	public void setDateModification(Date dateModification) {
		this.dateModification = dateModification;
	}

	
	@Column(name = "type", precision = 6)
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	@JsonIgnore
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "user_id", nullable = false)
	public Candidat getCandidat() {
		return this.candidat;
	}

	public void setCandidat(Candidat candidat) {
		this.candidat = candidat;
	}
	 


	@Override
	public String toString() {
		return "Candidatures [idCandidatures=" + idCandidaturesSpo + ", statut=" + statut + ", dateModification="
				+ dateModification + ", type=" + type + "]";
	}

	/*@Column(name = "motivatio")
	public String getMotivatio() {
		return motivatio;
	}


	public void setMotivatio(String motivatio) {
		this.motivatio = motivatio;
	}*/

	@Column(name = "profil")
	public String getProfil() {
		return profil;
	}

	
	public void setProfil(String profil) {
		this.profil = profil;
	}

	@Column(name = "img", columnDefinition="TEXT")
	public String getImg() {
		return img;
	}


	public void setImg(String img) {
		this.img = img;
	}

	@Column(name = "deleted")
	public boolean isDeleted() {
		return deleted;
	}


	public void setDeleted(boolean deleted) {
		this.deleted = deleted;
	}

	 
	
	
	
	

}
