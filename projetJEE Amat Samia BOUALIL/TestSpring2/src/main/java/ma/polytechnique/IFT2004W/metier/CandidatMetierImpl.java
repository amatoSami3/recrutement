package ma.polytechnique.IFT2004W.metier;

 

import java.sql.Date;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import ma.polytechnique.IFT2004W.dao.CandidatRepository;
import ma.polytechnique.IFT2004W.dao.UserRepository;
//import ma.polytechnique.IFT2004W.dao.CandidaturesRepository;
import ma.polytechnique.IFT2004W.entites.Candidat;
//import ma.polytechnique.IFT2004W.entites.Candidatures;
import ma.polytechnique.IFT2004W.entites.Candidatures;
import ma.polytechnique.IFT2004W.entites.Role;
import ma.polytechnique.IFT2004W.entites.User;

//@Component
@Service
public class CandidatMetierImpl implements CandidatMetier  {
	
	@Autowired
	private CandidatRepository candidatRepository;
	@Autowired
	private UserRepository userRepository;

	 
	/* (non-Javadoc)
	 * @see ma.polytechnique.IFT2004W.metier.CandidatMetier#delete(ma.polytechnique.IFT2004W.entites.Candidat)
	 */
	@Override
	public void delete(Candidat arg0) {
		candidatRepository.delete(arg0);
	}

	 
	/* (non-Javadoc)
	 * @see ma.polytechnique.IFT2004W.metier.CandidatMetier#findOne(java.lang.Integer)
	 */
	@Override
	public Candidat findOne(Integer arg0) {
		return candidatRepository.findOne(arg0);
	}

	 
	/* (non-Javadoc)
	 * @see ma.polytechnique.IFT2004W.metier.CandidatMetier#save(S)
	 */
	@Override
	public <S extends Candidat> S save(S arg0) {
		return candidatRepository.save(arg0);
	}

	 
	/* (non-Javadoc)
	 * @see ma.polytechnique.IFT2004W.metier.CandidatMetier#findById(java.lang.Integer)
	 */
/*	@Override
	public Candidat findById(Integer arg0) {
		return candidatRepository.findById(arg0);
	}*
	*/

	 

	/* (non-Javadoc)
	 * @see ma.polytechnique.IFT2004W.metier.CandidatMetier#findAll(org.springframework.data.domain.Pageable)
	 */
	@Override
	public Page<Candidat> findAll(Pageable arg0) {
		return candidatRepository.findAll(arg0);
	}


	/* (non-Javadoc)
	 * @see ma.polytechnique.IFT2004W.metier.CandidatMetier#findAll()
	 */
	@Override
	public List<Candidat> findAll() {
		return candidatRepository.findAll();
	}

	/* (non-Javadoc)
	 * @see ma.polytechnique.IFT2004W.metier.CandidatMetier#saveAndFlush()
	 */
	@Override
	public <S extends Candidat> S saveAndFlush(S arg0) {
		return candidatRepository.saveAndFlush(arg0);
	}

	@Override
	public void delete(Integer arg0) {
		candidatRepository.delete(arg0);
	}
	
	 
	@Override
	public List <Candidatures> findCandidatures(Candidat user_id){
		return candidatRepository.findCandidatures(user_id);
	}
	
	@Autowired
	private UserService t;
	@Override
	public void savecandidat(Candidat user) {
		//user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
       // user.setActive(1);
       // Role userRole = roleRepository.findByRole("user");
		 Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	       String name = auth.getName();
	       
	       
	       int id=(t.findUserByEmail(name)).getUser_id();
        user.setUser(userRepository.findOne(id));
       // user.setAge(age(user.getDateNaissance()));
       // user.setRoles(new HashSet<Role>(Arrays.asList(userRole)));
        candidatRepository.save(user);}
	
	private int age(Date d) {
		int age=0;
		java.util.Date date=new java.util.Date();
		 
	//	age=date.getYear()-d.getYear();
	// date.
		return age;
	}
	 
}
