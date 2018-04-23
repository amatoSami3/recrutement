package ma.polytechnique.IFT2004W.entites;
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
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name ="candidatures")

public class Candidatures implements java.io.Serializable {
	private Integer idCandidatures;
	private String statut;
	private Date dateModification;
	private String type;
	private Candidat candidat;
	private Offre offre;
	private String motivatio;
	private String profil;
	private boolean sent; 
	private boolean deleted; 
	private boolean ok; 
	private boolean vu; 
	
	
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((candidat == null) ? 0 : candidat.hashCode());
		result = prime * result + ((dateModification == null) ? 0 : dateModification.hashCode());
		result = prime * result + (deleted ? 1231 : 1237);
		result = prime * result + ((idCandidatures == null) ? 0 : idCandidatures.hashCode());
		result = prime * result + ((motivatio == null) ? 0 : motivatio.hashCode());
		result = prime * result + ((offre == null) ? 0 : offre.hashCode());
		result = prime * result + ((profil == null) ? 0 : profil.hashCode());
		result = prime * result + (sent ? 1231 : 1237);
		result = prime * result + ((statut == null) ? 0 : statut.hashCode());
		result = prime * result + ((type == null) ? 0 : type.hashCode());
		return result;
	}


	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Candidatures other = (Candidatures) obj;
		if (candidat == null) {
			if (other.candidat != null)
				return false;
		} else if (!candidat.equals(other.candidat))
			return false;
		if (dateModification == null) {
			if (other.dateModification != null)
				return false;
		} else if (!dateModification.equals(other.dateModification))
			return false;
		if (deleted != other.deleted)
			return false;
		if (idCandidatures == null) {
			if (other.idCandidatures != null)
				return false;
		} else if (!idCandidatures.equals(other.idCandidatures))
			return false;
		if (motivatio == null) {
			if (other.motivatio != null)
				return false;
		} else if (!motivatio.equals(other.motivatio))
			return false;
		if (offre == null) {
			if (other.offre != null)
				return false;
		} else if (!offre.equals(other.offre))
			return false;
		if (profil == null) {
			if (other.profil != null)
				return false;
		} else if (!profil.equals(other.profil))
			return false;
		if (sent != other.sent)
			return false;
		if (statut == null) {
			if (other.statut != null)
				return false;
		} else if (!statut.equals(other.statut))
			return false;
		if (type == null) {
			if (other.type != null)
				return false;
		} else if (!type.equals(other.type))
			return false;
		return true;
	}


	public Candidatures() {
		//super();
	}


	public Candidatures(Integer idCandidatures, String statut, Date dateModification, String type, Candidat candidat,Offre offre) {
		//super();
		this.idCandidatures = idCandidatures;
		this.statut = statut;
		this.dateModification = dateModification;
		this.type = type;
		this.candidat = candidat;
		this.offre = offre;
	}

	


	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "idCandidatures", unique = true, nullable = false)
	public Integer getIdCandidatures() {
		return idCandidatures;
	}

	public void setIdCandidatures(Integer idCandidatures) {
		this.idCandidatures = idCandidatures;
	}
	
	
	
	@Column(name = "vu")
	public boolean isVu() {
		return vu;
	}


	public void setVu(boolean vu) {
		this.vu = vu;
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
	@JsonIgnore
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name ="idOffre", nullable = false)
	public Offre getOffre() {
		return this.offre;
	}

	public void setOffre(Offre stock) {
		this.offre = stock;
	}


	@Override
	public String toString() {
		return "Candidatures [idCandidatures=" + idCandidatures + ", statut=" + statut + ", dateModification="
				+ dateModification + ", type=" + type + "]";
	}

	@Column(name = "motivatio")
	public String getMotivatio() {
		return motivatio;
	}


	public void setMotivatio(String motivatio) {
		this.motivatio = motivatio;
	}

	@Column(name = "profil")
	public String getProfil() {
		return profil;
	}


	public void setProfil(String profil) {
		this.profil = profil;
	}

	@Column(name = "sent")
	public boolean isSent() {
		return sent;
	}


	public void setSent(boolean sent) {
		this.sent = sent;
	}

	@Column(name = "deleted")
	public boolean isDeleted() {
		return deleted;
	}


	public void setDeleted(boolean deleted) {
		this.deleted = deleted;
	}

	@Column(name = "ok")
	public boolean isOk() {
		return ok;
	}


	public void setOk(boolean ok) {
		this.ok = ok;
	}
	 
	
	
	
	

}
