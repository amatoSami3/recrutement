package ma.polytechnique.IFT2004W.metier;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
//import org.springframework.data.repository.query.Param;
import org.springframework.data.repository.query.Param;

import ma.polytechnique.IFT2004W.entites.Candidat;
import ma.polytechnique.IFT2004W.entites.Candidatures;
import ma.polytechnique.IFT2004W.entites.Employee;
import ma.polytechnique.IFT2004W.entites.Offre;

public interface CandidaturesMetier {

	void delete(Candidatures arg0);

	void delete(Integer arg0);

	Page<Candidatures> findAll(Pageable a);

	Candidatures findOne(Integer arg0);

	<S extends Candidatures> S save(S arg0);

	List<Candidatures> findByType(String arg0);

	Candidatures findByResponsable(Candidat arg0);

	List<Candidatures> findByOffre(Offre arg0);

	Candidatures findByStatut(String arg0);
	
	List<Candidatures> findAll() ;
	
	List<Candidatures> findSent(boolean s,Employee id,boolean d,boolean ok) ;

	<S extends Candidatures> S saveAndFlush(S arg0) ;
	
	List<Candidatures> findByTypeAndOffre(String type,Offre arg0) ;
	
    List<Candidatures> findByCandidat(int arg0);
    
    List<Candidatures> findActiveCandidatures(boolean deleted) ;
    
    List<Candidat> findCandidats(boolean deleted,Employee emp);
    
    Candidatures findByOffreCandidat(Candidat candidat,Offre offre);
    
    List<Candidatures> findOk(boolean d,boolean s) ;
	
	
	

}