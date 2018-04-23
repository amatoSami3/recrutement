package ma.polytechnique.IFT2004W.metier;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import ma.polytechnique.IFT2004W.entites.Modele;

public interface ModeleMetier {

	void delete(Modele arg0);

	Modele findOne(Integer arg0);

	<S extends Modele> Iterable<S> save(Iterable<S> arg0);

	<S extends Modele> S save(S arg0);

	Modele findByType(String arg0);

	Page<Modele> findAll(Pageable arg0);
	
	List<Modele> findAll();
	
	<S extends Modele> S saveAndFlush(S arg0) ;

}