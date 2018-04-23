package ma.polytechnique.IFT2004W.metier;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import ma.polytechnique.IFT2004W.entites.Candidat;
import ma.polytechnique.IFT2004W.entites.Employee;

public interface EmployeeMetier {

	void delete(Integer arg0);

	void deleteAll();

	Employee findOne(Integer arg0);

	<S extends Employee> S save(S arg0);

	Page<Employee> findAll(Pageable arg0);
	
	List<Employee> findAll();
	
	<S extends Employee> S saveAndFlush(S arg0) ;
	
	void saveEmp(Employee user);

}