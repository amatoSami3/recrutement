package ma.polytechnique.IFT2004W.metier;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import ma.polytechnique.IFT2004W.entites.Personne;

public interface PersonneMetier {

	void delete(Personne arg0);

	Personne findOne(Integer arg0);

	

	Page<Personne> findAll(Pageable arg0);

}