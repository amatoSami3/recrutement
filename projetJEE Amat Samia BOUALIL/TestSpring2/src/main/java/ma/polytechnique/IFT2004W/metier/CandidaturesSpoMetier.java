package ma.polytechnique.IFT2004W.metier;

import java.util.List;

import org.springframework.data.repository.query.Param;

import ma.polytechnique.IFT2004W.entites.Candidatures;
import ma.polytechnique.IFT2004W.entites.Candidat;
import ma.polytechnique.IFT2004W.entites.CandidatureSpo;

public interface CandidaturesSpoMetier {

	void delete(Integer arg0);

	List<CandidatureSpo> findAll();

	CandidatureSpo findOne(Integer arg0);
 
	<S extends CandidatureSpo> S save(S arg0);

	<S extends CandidatureSpo> S saveAndFlush(S arg0);
	
	void saveCandidaturesSpo(CandidatureSpo user);
	
	List<CandidatureSpo> findByCandidat(Candidat candidat,boolean d);
	 List<CandidatureSpo> findActiveCandidatures(boolean deleted) ;
	
	//List<Integer> findCandidats();
	 
	 List<Candidat> findCandidats();

}