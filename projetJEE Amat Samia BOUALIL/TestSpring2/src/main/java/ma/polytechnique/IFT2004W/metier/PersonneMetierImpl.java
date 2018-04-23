package ma.polytechnique.IFT2004W.metier;

import javax.management.relation.Role;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

//import ma.polytechnique.IFT2004W.dao.OffresRepository;
import ma.polytechnique.IFT2004W.dao.PersonneRepository;
import ma.polytechnique.IFT2004W.entites.Candidatures;
//import ma.polytechnique.IFT2004W.entites.Compte;
import ma.polytechnique.IFT2004W.entites.Personne;

//@Component
@Service
public class PersonneMetierImpl implements PersonneMetier {
	@Autowired
	private PersonneRepository personneRepository;

	/* (non-Javadoc)
	 * @see ma.polytechnique.IFT2004W.metier.PersonneMetier#delete(ma.polytechnique.IFT2004W.entites.Personne)
	 */
	@Override
	public void delete(Personne arg0) {
		personneRepository.delete(arg0);
	}

	/* (non-Javadoc)
	 * @see ma.polytechnique.IFT2004W.metier.PersonneMetier#findOne(java.lang.Integer)
	 */
	@Override
	public Personne findOne(Integer arg0) {
		return personneRepository.findOne(arg0);
	}
	
	/* (non-Javadoc)
	 * @see ma.polytechnique.IFT2004W.metier.PersonneMetier#findById(int)
	

	/* (non-Javadoc)
	 * @see ma.polytechnique.IFT2004W.metier.PersonneMetier#findAll(org.springframework.data.domain.Pageable)
	 */
	@Override
	public Page<Personne> findAll(Pageable arg0) {
		return personneRepository.findAll(arg0);
	}

	 
	
	

}
