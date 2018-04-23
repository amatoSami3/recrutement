package ma.polytechnique.IFT2004W.metier;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import ma.polytechnique.IFT2004W.dao.CandidatRepository;
import ma.polytechnique.IFT2004W.dao.CandidaturesRepository;
import ma.polytechnique.IFT2004W.dao.CandidaturesSpoRepository;
import ma.polytechnique.IFT2004W.dao.UserRepository;
import ma.polytechnique.IFT2004W.entites.Candidat;
import ma.polytechnique.IFT2004W.entites.Candidatures;
import ma.polytechnique.IFT2004W.entites.CandidatureSpo;

@Service
public class CandidaturesSpoMetierImpl implements CandidaturesSpoMetier {
	
	@Autowired
	private CandidaturesSpoRepository candidaturesSpoRepository;
	
	@Autowired
	private CandidatRepository candidatRepository;
	
	@Autowired
	private UserService t;

	/* (non-Javadoc)
	 * @see ma.polytechnique.IFT2004W.metier.CandidaturesSpoMetier#delete(java.lang.Integer)
	 */
	@Override
	public void delete(Integer arg0) {
		candidaturesSpoRepository.delete(arg0);
	}
	
	/*@Override
	public List<Integer> findCandidats() {
		return candidaturesSpoRepository.findCandidats();
	}*/
	
	

	/* (non-Javadoc)
	 * @see ma.polytechnique.IFT2004W.metier.CandidaturesSpoMetier#findAll()
	 */
	@Override
	public List<CandidatureSpo> findAll() {
		return candidaturesSpoRepository.findAll();
	}

	/* (non-Javadoc)
	 * @see ma.polytechnique.IFT2004W.metier.CandidaturesSpoMetier#findOne(java.lang.Integer)
	 */
	@Override
	public CandidatureSpo findOne(Integer arg0) {
		return candidaturesSpoRepository.findOne(arg0);
	}

	/* (non-Javadoc)
	 * @see ma.polytechnique.IFT2004W.metier.CandidaturesSpoMetier#save(java.lang.Iterable)
	 */
	 
	/* (non-Javadoc)
	 * @see ma.polytechnique.IFT2004W.metier.CandidaturesSpoMetier#save(S)
	 */
	@Override
	public <S extends CandidatureSpo> S save(S arg0) {
		return candidaturesSpoRepository.save(arg0);
	}
	 

	/* (non-Javadoc)
	 * @see ma.polytechnique.IFT2004W.metier.CandidaturesSpoMetier#saveAndFlush(S)
	 */
	@Override
	public <S extends CandidatureSpo> S saveAndFlush(S arg0) {
		return candidaturesSpoRepository.saveAndFlush(arg0);
	}
	
	@Override
	public void saveCandidaturesSpo(CandidatureSpo user) {
		//user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
       // user.setActive(1);
       // Role userRole = roleRepository.findByRole("user");
		 
        user.setCandidat(candidatRepository.findOne(get()));   
       // user.setRoles(new HashSet<Role>(Arrays.asList(userRole)));
        candidaturesSpoRepository.save(user);}
	
	
	private int get() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String name = auth.getName();
        
        return  (t.findUserByEmail(name)).getUser_id();
        }

	@Override
	public List<CandidatureSpo> findByCandidat(Candidat candidat,boolean d) {
		// TODO Auto-generated method stub
		return 	candidaturesSpoRepository.findByCandidat(candidat,d);
	}
    
	@Override
	public List<CandidatureSpo> findActiveCandidatures(boolean a) {
		return candidaturesSpoRepository.findActiveCandidatures(a);
	}
	
	@Override
	public List<Candidat> findCandidats() {
		return candidaturesSpoRepository.findCandidats();
	}
	
	

}
