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

/*	@Entity
	@Table(name ="candidaturesEnvoye")

	public class CandidaturesEnvoye  implements java.io.Serializable {
		private Integer idCandidaturesEnvoye;
		private String statut;
		private Date dateModification;
		private String type;
		private Candidat candidat;
		private Offre offre;
		private String motivatio;
		private String profil;
		
		
		public CandidaturesEnvoye() {
			//super();
		}

		public CandidaturesEnvoye(Integer idCandidatures, String statut, Date dateModification, String type,
				Candidat candidat, Offre offre, String motivatio, String profil) {
			super();
			this.idCandidaturesEnvoye = idCandidatures;
			this.statut = statut;
			this.dateModification = dateModification;
			this.type = type;
			this.candidat = candidat;
			this.offre = offre;
			this.motivatio = motivatio;
			this.profil = profil;
		}




		@Id
		@GeneratedValue(strategy = IDENTITY)
		@Column(name = "idCandidaturesEnvoye", unique = true, nullable = false)
		public Integer getIdCandidatures() {
			return idCandidaturesEnvoye;
		}

		public void setIdCandidatures(Integer idCandidatures) {
			this.idCandidaturesEnvoye = idCandidatures;
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


		 
		
		
		
		

	}


}
*/