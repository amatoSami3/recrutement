package ma.polytechnique.IFT2004W.metier;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import ma.polytechnique.IFT2004W.entites.Candidat;
import ma.polytechnique.IFT2004W.entites.Document;

public interface DocumentMetier {

	void delete(Document arg0);

	void delete(Integer arg0);

	List<Document> findAll();

	Page<Document> findAll(Pageable arg0);
	
	<S extends Document> S save(S arg0);
	
	<S extends Document> S saveAndFlush(S arg0);
	
	 Document findOne(Integer arg0);
	 public List<Document > findByPerso( Candidat candidat );

}