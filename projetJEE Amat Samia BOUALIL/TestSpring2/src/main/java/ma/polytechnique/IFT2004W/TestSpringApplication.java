package ma.polytechnique.IFT2004W;



import java.io.File;
import java.io.FileInputStream;
import java.sql.Blob;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.transaction.annotation.Transactional;

 

import ma.polytechnique.IFT2004W.entites.* ;

import ma.polytechnique.IFT2004W.dao.*;
import ma.polytechnique.IFT2004W.metier.*;



@SpringBootApplication 
public class TestSpringApplication {
	//implements CommandLineRunner {


	/* @Autowired
	 private CandidatMetier candidatMetierImpl;
	 @Autowired
     private ModeleMetier modeleMetier;
	 @Autowired
	 private CandidaturesMetier candiMetierImpl;
	 @Autowired
	 private CompteMetier compMetierImpl;
	 @Autowired
	private DocumentMetier docMetierImpl;
	@Autowired
	 private EmployeeMetier empMetierImpl;
	@Autowired
	private OffresMetier ofMetierImpl;
	@Autowired
	private ModeleMetier modeleMetierImpl;
	@Autowired
    private PersonneMetier pesMetierImpl;
	@Autowired
	private PosteMetier poMetierImpl;
	
	public static void main(String[] args) {
		SpringApplication.run(TestSpringApplication.class, args);
	}
	
	@Transactional
    @Override
    public void run(String... args) throws Exception {
//test save:
		
		//Candidat 
		
		/*  Candidat c=new Candidat();
		c.setNom("aa");
		c.setPrenom("boual");
		c.setCin("w444444");
		//c.setEmail("jjjjj");
		candidatMetierImpl.save(c);*/
		
		//employee:
		
		 /* Employee c=new Employee();
			c.setNom("aa");
			c.setPrenom("boual");
			c.setCin("w444444");
			//c.set
			empMetierImpl.save(c);*/
			
		
		
		//Document:
	 /*	Document d=new Document();
		d.setDoc("eeeeeeeeeeeeeeeeeeee");
		d.setNomDoc("eeeeeee");
	   d.setPersonne(pesMetierImpl.findById(1));
		docMetierImpl.save(d);*/
		
		//modele:
		/* Modele modele=new Modele();
		modele.setType("refus");
		modele.setModele("jjjjjjjjjjjjjjjjjjjjj");
		modeleMetier.save(modele); */
		
		

		
			
		//offre:
		/* Offre offre=new Offre();
		offre.setTypeOffre(1);
		 
		offre.setEmployee( empMetierImpl.findOne(2));
		
		        
		empMetierImpl.findOne(2).getOffres().add(offre);
        
		ofMetierImpl.save(offre);//*/
		
			//POSTE:
			/* Poste po=new Poste();
			po.setTitre("RH");
			po.setType("freelance");
			poMetierImpl.save(po); */
			
			
		//COMPTE:
		/* Compte c=new Compte();
		c.setAcces(2);
		c.setEmail("amat@gmail.com");
		c.setPass("ama");
		
          
		//pesMetierImpl=new PersonneMetierImpl();
		//ca=(Candidat)pesMetierImpl.findById(1);
		//session.save(p);
		c.setPersonne(empMetierImpl.findOne(2));
		compMetierImpl.save(c); */
		
		//candidatures:
		/*Candidatures cand=new Candidatures();
		cand.setType("stage");
		cand.setStatut("ouvert");
		
	
		
		cand.setCandidat(candidatMetierImpl.findOne(1));        
		candidatMetierImpl.findOne(1).getCandidatures().add(cand);
		
		cand.setOffre(ofMetierImpl.findOne(2));        
		ofMetierImpl.findOne(2).getCandidatures().add(cand);
		
		candiMetierImpl.save(cand);*/
		
		
//test delete:
		
		
		//   candidatMetierImpl.delete(candidatMetierImpl.findOne(1));
		 
		// candiMetierImpl.delete(candiMetierImpl.findOne(1));
		 
		// /* modeleMetierImpl.delete(modeleMetierImpl.findOne(1));
		///*  docMetierImpl.delete(candidatMetierImpl.findOne(1);
		//  empMetierImpl.delete(candidatMetierImpl.findOne(1);
		//  ofMetierImpl.delete(ofMetierImpl.findOne(1)); 
		  //pesMetierImpl.delete(candidatMetierImpl.findOne(1);
		//  poMetierImpl.delete(poMetierImpl.findOne(1));
		
		
		
//Test Maj:
		//candidatMetierImpl.findOne(1).setCin("amato");
		
//affichage:
		/*System.out.print(candiMetierImpl.findOne(2));
		System.out.println(compMetierImpl.findOne(2));
		//System.out.println(docMetierImpl.findOne(2));
		System.out.println(empMetierImpl.findOne(2));
		System.out.println(ofMetierImpl.findOne(2));
		 
		System.out.println(poMetierImpl.findOne(2));
		
		System.out.println(pesMetierImpl.findOne(2));*/
		
		
	/////		Creation de fichier
 	 
 	
 /*	Document doc = new Document();
 	File file = new File("/home/amato/Desktop/essai.pdf");
 	byte[] imageData = new byte[(int) file.length()];
 	Blob blob = new javax.sql.rowset.serial.SerialBlob(imageData);
 	try {
 	    FileInputStream fileInputStream = new FileInputStream(file);
 	    fileInputStream.read(imageData);
 	    fileInputStream.close();
  	} catch (Exception e) {
 	    e.printStackTrace();
 	}
//	// System.out.println("Salut" + file.length()); // Debuggage pendant la creation de TinyBlob c'était frustrant
 
 			//Document d=new Document();
 			//d.setDoc("eeeeeeeeeeeeeeeeeeee");
 			doc.setNomDoc("eeeeeee");
 		    doc.setPersonne(pesMetierImpl.findById(1));
 			//docMetierImpl.save(d);
 	doc.setDoc(blob);
	//fichier.setTicket(ticket);
	docMetierImpl.save(doc);
      
    }*/
 }
