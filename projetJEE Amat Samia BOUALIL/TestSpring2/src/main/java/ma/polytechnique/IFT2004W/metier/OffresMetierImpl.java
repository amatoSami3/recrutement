package ma.polytechnique.IFT2004W.metier;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import ma.polytechnique.IFT2004W.dao.OffresRepository;
import ma.polytechnique.IFT2004W.entites.Candidatures;
import ma.polytechnique.IFT2004W.entites.Employee;
import ma.polytechnique.IFT2004W.entites.Offre;


//@Component
@Service
public class OffresMetierImpl implements OffresMetier {
	@Autowired
	private OffresRepository offresRepository;

	/* (non-Javadoc)
	 * @see ma.polytechnique.IFT2004W.metier.OffresMetier#delete(java.lang.Integer)
	 */
	@Override
	public void delete(Integer arg0) {
		offresRepository.delete(arg0);
	}

	/* (non-Javadoc)
	 * @see ma.polytechnique.IFT2004W.metier.OffresMetier#delete(ma.polytechnique.IFT2004W.entites.Offre)
	 */
	@Override
	public void delete(Offre arg0) {
		offresRepository.delete(arg0);
	}

	/* (non-Javadoc)
	 * @see ma.polytechnique.IFT2004W.metier.OffresMetier#findOne(java.lang.Integer)
	 */
	@Override
	public Offre findOne(Integer arg0) {
		return offresRepository.findOne(arg0);
	}

	/* (non-Javadoc)
	 * @see ma.polytechnique.IFT2004W.metier.OffresMetier#save(S)
	 */
	
	
	@Override
	public <S extends Offre> S save(S arg0) {
		return offresRepository.save(arg0);
	}

	/* (non-Javadoc)
	 * @see ma.polytechnique.IFT2004W.metier.OffresMetier#findByName(java.lang.String)
	 */
	@Override
	public Offre findByName(String arg0) {
		return offresRepository.findByName(arg0);
	}

	/* (non-Javadoc)
	 * @see ma.polytechnique.IFT2004W.metier.OffresMetier#findAll(org.springframework.data.domain.Pageable)
	 */
	@Override
	public Page<Offre> findAll(Pageable arg0) {
		return offresRepository.findAll(arg0);
	}
	@Override
	public List<Offre> findAll() {
		return offresRepository.findAll();
	}
	@Override
	public <S extends Offre> S saveAndFlush(S arg0) {
		return offresRepository.saveAndFlush(arg0);
	}

	/*public <S extends Offre> S saveAndFlush(S arg0) {
		return offresRepository.saveAndFlush(arg0);
	}*/
	
	@Override
	public List<Offre> findValidOffres(boolean a) {
		return offresRepository.findValidOffres(a);
	}
	
	@Override
	public List<Offre> findOffreEmp(Employee a,boolean b) {
		return offresRepository.findOffreEmp(a,b);
	}
	
	@Override
	public List<Offre> findNonAutorise(boolean a) {
		return offresRepository.findNonAutorise(a);
	}
	
	
	}
	

