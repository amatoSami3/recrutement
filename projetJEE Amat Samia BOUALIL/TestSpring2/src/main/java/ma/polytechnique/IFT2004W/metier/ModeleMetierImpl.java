package ma.polytechnique.IFT2004W.metier;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import ma.polytechnique.IFT2004W.dao.ModeleRepository;
import ma.polytechnique.IFT2004W.entites.Candidatures;
import ma.polytechnique.IFT2004W.entites.Modele;
import ma.polytechnique.IFT2004W.entites.Offre;

 
//@Component
@Service
public class ModeleMetierImpl implements ModeleMetier {
	

	@Autowired
	private ModeleRepository modeleRepository;

	/* (non-Javadoc)
	 * @see ma.polytechnique.IFT2004W.metier.ModeleMetier#delete(ma.polytechnique.IFT2004W.entites.Modele)
	 */
	@Override
	public void delete(Modele arg0) {
		modeleRepository.delete(arg0);
	}

	/* (non-Javadoc)
	 * @see ma.polytechnique.IFT2004W.metier.ModeleMetier#findOne(java.lang.Integer)
	 */
	@Override
	public Modele findOne(Integer arg0) {
		return modeleRepository.findOne(arg0);
	}

	/* (non-Javadoc)
	 * @see ma.polytechnique.IFT2004W.metier.ModeleMetier#save(java.lang.Iterable)
	 */
	@Override
	public <S extends Modele> Iterable<S> save(Iterable<S> arg0) {
		return modeleRepository.save(arg0);
	}
	
	/* (non-Javadoc)
	 * @see ma.polytechnique.IFT2004W.metier.ModeleMetier#save(S)
	 */
	@Override
	public <S extends Modele> S save(S arg0) {
		return modeleRepository.save(arg0);
	}
	
	/* (non-Javadoc)
	 * @see ma.polytechnique.IFT2004W.metier.ModeleMetier#findByType(java.lang.String)
	 */
	@Override
	public Modele findByType(String arg0) {
		return modeleRepository.findByType(arg0);
	}

	/* (non-Javadoc)
	 * @see ma.polytechnique.IFT2004W.metier.ModeleMetier#findAll(org.springframework.data.domain.Pageable)
	 */
	@Override
	public Page<Modele> findAll(Pageable arg0) {
		return modeleRepository.findAll(arg0);
	}
	
	@Override
	public List<Modele> findAll() {
		return modeleRepository.findAll();
	}
	@Override
	public <S extends Modele> S saveAndFlush(S arg0) {
		return modeleRepository.saveAndFlush(arg0);
	}
	

}
