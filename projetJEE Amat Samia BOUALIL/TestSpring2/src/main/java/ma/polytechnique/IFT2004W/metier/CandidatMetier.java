package ma.polytechnique.IFT2004W.metier;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import ma.polytechnique.IFT2004W.entites.Candidat;
import ma.polytechnique.IFT2004W.entites.Candidatures;

public interface CandidatMetier {

	void delete(Candidat arg0);

	Candidat findOne(Integer arg0);

	<S extends Candidat> S save(S arg0);

//	Candidat findById(Integer arg0);

	Page<Candidat> findAll(Pageable arg0);

	List<Candidat> findAll();
	
	<S extends Candidat> S saveAndFlush(S arg0) ;
	
	void delete(Integer arg0);
	  void savecandidat(Candidat user) ;
	
	List <Candidatures> findCandidatures(Candidat user_id );
	
	/*Candidat findByEmailAndPass(String e, String p);
	Candidat findByEmail(String e);*/
	

}