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

@Entity
@Table(name = "candidat")
public class Candidat extends Personne implements java.io.Serializable{
	
	private Set<Candidatures> candidatures = new HashSet<Candidatures>(
			0);
	private Set<CandidatureSpo> candidaturesSpo = new HashSet<CandidatureSpo>(
			0);
	 	 private String profil; 
		 private String adresse;              
		 private Date dateNaissance;
		 private String ville;
		 private String formation;
		 private String experience;
		// private int age  ;
	 
		public Candidat() {
		}
		
		public Candidat(Set<Candidatures> candidatures) {
	        //super();
			this.candidatures = candidatures;
		}




		/*@Id
		@GeneratedValue(strategy = IDENTITY)
		@Column(name = "idCandidat", unique = true, nullable = false)
		public Integer getIdCandidat () {
			return this.idCandidat ;
		}

		public void setIdCandidat(Integer stockId) {
			this.idCandidat = stockId;
		}
		 */
		
		@OneToMany(fetch = FetchType.LAZY, mappedBy = "candidat")
		public Set<Candidatures>  getCandidatures () {
			return this.candidatures ;
		}

		public void setCandidatures(Set<Candidatures> offres) {
			this.candidatures = offres;
		}
		
		@OneToMany(fetch = FetchType.LAZY, mappedBy = "candidat")
		public Set<CandidatureSpo>  getCandidaturesSpo () {
			return this.candidaturesSpo ;
		}

		public void setCandidaturesSpo(Set<CandidatureSpo> offres) {
			this.candidaturesSpo = offres;
		}
		
		@Column(name = "adresse")
		public String getAdresse() {
			return adresse;
		}

		public void setAdresse(String adresse) {
			this.adresse = adresse;
		}
		
		/*@Column(name = "age")
		public int getAge() {
			return age;
		}

		public void setAge(int age) {
			this.age = age;
		}*/

		@Column(name = "dateNaissance")
		public Date getDateNaissance() {
			return dateNaissance;
		}

		public void setDateNaissance(Date dateNaissance) {
			this.dateNaissance = dateNaissance;
		}

		@Column(name = "ville")
		public String getVille() {
			return ville;
		}

		public void setVille(String ville) {
			this.ville = ville;
		}

		@Column(name = "formation")
		public String getFormation() {
			return formation;
		}

		public void setFormation(String formation) {
			this.formation = formation;
		}

		@Column(name = "experience")
		public String getExperience() {
			return experience;
		}

		public void setExperience(String experience) {
			this.experience = experience;
		}

		@Column(name = "profil")
		public String getProfil() {
			return profil;
		}

		public void setProfil(String profil) {
			this.profil = profil;
		}
		
		
		 
		
	 
		
		
		 
 
		
		
		

	 

}
