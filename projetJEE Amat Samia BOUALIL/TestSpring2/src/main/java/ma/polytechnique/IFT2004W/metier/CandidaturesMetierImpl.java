package ma.polytechnique.IFT2004W.metier;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import ma.polytechnique.IFT2004W.dao.CandidaturesRepository;
import ma.polytechnique.IFT2004W.entites.Candidat;
import ma.polytechnique.IFT2004W.entites.Candidatures;
import ma.polytechnique.IFT2004W.entites.Employee;
import ma.polytechnique.IFT2004W.entites.Offre;

//@Component
@Service
public class CandidaturesMetierImpl implements CandidaturesMetier {

	@Autowired
	private CandidaturesRepository candidaturesRepository;

	/* (non-Javadoc)
	 * @see ma.polytechnique.IFT2004W.metier.CandidaturesMetier#delete(ma.polytechnique.IFT2004W.entites.Candidatures)
	 */
	@Override
	public void delete(Candidatures arg0) {
		candidaturesRepository.delete(arg0);
	}
	
	@Override
	public List<Candidat> findCandidats(boolean deleted,Employee emp) {
		return candidaturesRepository.findCandidats(deleted,emp);
	}
	
	

	/* (non-Javadoc)
	 * @see ma.polytechnique.IFT2004W.metier.CandidaturesMetier#delete(java.lang.Integer)
	 */
	@Override
	public void delete(Integer arg0) {
		candidaturesRepository.delete(arg0);
	}

	/* (non-Javadoc)
	 * @see ma.polytechnique.IFT2004W.metier.CandidaturesMetier#findAll(org.springframework.data.domain.Pageable)
	 */
	@Override
	public Page<Candidatures> findAll(Pageable a) {
		return candidaturesRepository.findAll(a);
	}

	/* (non-Javadoc)
	 * @see ma.polytechnique.IFT2004W.metier.CandidaturesMetier#findOne(java.lang.Integer)
	 */
	@Override
	public Candidatures findOne(Integer arg0) {
		return candidaturesRepository.findOne(arg0);
	}

	/* (non-Javadoc)
	 * @see ma.polytechnique.IFT2004W.metier.CandidaturesMetier#save(S)
	 */
	@Override
	public <S extends Candidatures> S save(S arg0) {
		return candidaturesRepository.save(arg0);
	}
	
	/* (non-Javadoc)
	 * @see ma.polytechnique.IFT2004W.metier.CandidaturesMetier#findByType(java.lang.String)
	 */
	@Override
	public List<Candidatures> findByType(String arg0) {
		return candidaturesRepository.findByType(arg0);
	}
	
	/* (non-Javadoc)
	 * @see ma.polytechnique.IFT2004W.metier.CandidaturesMetier#findByResponsable(int)
	 */
	@Override
	public Candidatures findByResponsable(Candidat arg0) {
		return candidaturesRepository.findByResponsable(arg0);
	}
	
	/* (non-Javadoc)
	 * @see ma.polytechnique.IFT2004W.metier.CandidaturesMetier#findByOffre(ma.polytechnique.IFT2004W.entites.Offre)
	 */
	@Override
	public List<Candidatures> findByOffre(Offre arg0) {
		return candidaturesRepository.findByOffre(arg0);
	}
	
	/* (non-Javadoc)
	 * @see ma.polytechnique.IFT2004W.metier.CandidaturesMetier#findByStatut(java.lang.String)
	 */
	@Override
	public Candidatures findByStatut(String arg0) {
		return candidaturesRepository.findByStatut(arg0);
		}
	
	/* (non-Javadoc)
	 * @see ma.polytechnique.IFT2004W.metier.CandidaturesMetier#findAll()
	 */
	@Override
	public List<Candidatures> findAll() {
		return candidaturesRepository.findAll();
	}
	
	
	
	@Override
	public List<Candidatures> findSent(boolean s,Employee id,boolean d,boolean ok) {
		return candidaturesRepository.findSent(s, id,d,ok);
	}
	
	@Override
	public <S extends Candidatures> S saveAndFlush(S arg0) {
		return candidaturesRepository.saveAndFlush(arg0);
	}
	
	@Override
	public List <Candidatures> findByTypeAndOffre(String type,Offre arg0) {
		return candidaturesRepository.findByTypeAndOffre(type,arg0);
	}
	
	@Override
	public List<Candidatures> findByCandidat(int arg0) {
		return candidaturesRepository.findByCandidat(arg0);
	}
	
	@Override
	public List<Candidatures> findActiveCandidatures(boolean a) {
		return candidaturesRepository.findActiveCandidatures(a);
	}

	@Override
	public Candidatures findByOffreCandidat(Candidat candidat, Offre offre) {
		 
		return candidaturesRepository.findByOffreCandidat(candidat,offre);
	}

	@Override
	public List<Candidatures> findOk(boolean d,boolean k) {
		// TODO Auto-generated method stub
		return candidaturesRepository.findOk(d,k);
	}
	

	
	 
	
	

}
