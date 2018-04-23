package ma.polytechnique.IFT2004W.metier;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

//import ma.polytechnique.IFT2004W.dao.CandidaturesRepository;
import ma.polytechnique.IFT2004W.dao.DocumentRepository;
import ma.polytechnique.IFT2004W.entites.Candidat;
import ma.polytechnique.IFT2004W.entites.Document;
 

@Service
public class DocumentMetierImpl implements DocumentMetier  {

	@Autowired
	private DocumentRepository documentRepository;

	/* (non-Javadoc)
	 * @see ma.polytechnique.IFT2004W.metier.DocumentMetier#delete(ma.polytechnique.IFT2004W.entites.Document)
	 */
	@Override
	public void delete(Document arg0) {
		 
		documentRepository.delete(arg0);
	}

	/* (non-Javadoc)
	 * @see ma.polytechnique.IFT2004W.metier.DocumentMetier#delete(java.lang.Integer)
	 */
	@Override
	public void delete(Integer arg0) {
		documentRepository.delete(arg0);
	}

	/* (non-Javadoc)
	 * @see ma.polytechnique.IFT2004W.metier.DocumentMetier#findAll()
	 */
	@Override
	public List<Document> findAll() {
		return documentRepository.findAll();
	}

	@Override 
	public <S extends Document> S save(S arg0) {
		return documentRepository.save(arg0);
	}

	/* (non-Javadoc)
	 * @see ma.polytechnique.IFT2004W.metier.DocumentMetier#findAll(org.springframework.data.domain.Pageable)
	 */
	@Override
	public Page<Document> findAll(Pageable arg0){
		return documentRepository.findAll(arg0);
	}

	@Override
	public <S extends Document> S saveAndFlush(S arg0) {
		return documentRepository.saveAndFlush(arg0);
	}

	@Override
	public Document findOne(Integer arg0) {
		return documentRepository.findOne(arg0);
	}
	

	@Override
	public List<Document > findByPerso(Candidat candidat) {
		return documentRepository.findByPerso(candidat);
	}
	
	



	 
}
