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
 

public class Login implements java.io.Serializable{
	
	 

		//private Integer idCompte;
		//private int idPersonne;
		private String email;
		private String pass;
	 
		
		public Login ()  {}
		public Login(String emial, String pass) {
			super();
			//this.idCompte = idCompte;
			this.email = emial;
			this.pass = pass;
			 
		}
		 
		
	 
		
		
		
		public String getEmail() {
			return this.email;
		}

		public void setEmail(String emial) {
			this.email = emial;
		}
		
		
		
		public String getPass() {
			return this.pass;
		}

		public void setPass(String pass) {
			this.pass = pass;
		}
 
		 
	 
		
		 
		

	}

		
		 
 
		
