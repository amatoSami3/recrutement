package ma.polytechnique.IFT2004W.metier;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import ma.polytechnique.IFT2004W.dao.CandidaturesRepository;
import ma.polytechnique.IFT2004W.dao.EmployeeRepository;
import ma.polytechnique.IFT2004W.dao.UserRepository;
import ma.polytechnique.IFT2004W.entites.Candidat;
import ma.polytechnique.IFT2004W.entites.Candidatures;
import ma.polytechnique.IFT2004W.entites.Employee;
@Service
public class EmployeeMetierImpl implements EmployeeMetier {
	@Autowired
	private EmployeeRepository employeeRepository;
	
	@Autowired
	private UserService t;
	
	@Autowired
	private UserRepository userRepository;

	/* (non-Javadoc)
	 * @see ma.polytechnique.IFT2004W.metier.EmployeeMetier#delete(java.lang.Integer)
	 */
	@Override
	public void delete(Integer arg0) {
		employeeRepository.delete(arg0);
	}

	/* (non-Javadoc)
	 * @see ma.polytechnique.IFT2004W.metier.EmployeeMetier#deleteAll()
	 */
	@Override
	public void deleteAll() {
		employeeRepository.deleteAll();
	}

	/* (non-Javadoc)
	 * @see ma.polytechnique.IFT2004W.metier.EmployeeMetier#findOne(java.lang.Integer)
	 */
	@Override
	public Employee findOne(Integer arg0) {
		return employeeRepository.findOne(arg0);
	}

	/* (non-Javadoc)
	 * @see ma.polytechnique.IFT2004W.metier.EmployeeMetier#save(S)
	 */
	@Override
	public <S extends Employee> S save(S arg0) {
		return employeeRepository.save(arg0);
	}
	
	 

	/* (non-Javadoc)
	 * @see ma.polytechnique.IFT2004W.metier.EmployeeMetier#findAll(org.springframework.data.domain.Pageable)
	 */
	@Override
	public Page<Employee> findAll(Pageable arg0) {
		return employeeRepository.findAll(arg0);
	}
	
	@Override
	public List<Employee> findAll() {
		return employeeRepository.findAll();
	}

	@Override
	public <S extends Employee> S saveAndFlush(S arg0) {
		return employeeRepository.saveAndFlush(arg0);
	}
	
	
	@Override
	public void saveEmp(Employee user) {
		//user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
       // user.setActive(1);
       // Role userRole = roleRepository.findByRole("user");
		 Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	       String name = auth.getName();
	       
	       
	       int id=(t.findUserByEmail(name)).getUser_id();
        user.setUser(userRepository.findOne(id));
        
       // user.setRoles(new HashSet<Role>(Arrays.asList(userRole)));
        employeeRepository.save(user);}
	

	
	 
	

}
