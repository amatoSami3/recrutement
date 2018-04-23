package ma.polytechnique.IFT2004W.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import ma.polytechnique.IFT2004W.entites.Candidat;
import ma.polytechnique.IFT2004W.entites.Candidatures;
import ma.polytechnique.IFT2004W.entites.Employee;
@Repository
public interface EmployeeRepository  extends JpaRepository<Employee, Integer> {
	
	/*@Query("Select d from Personne d where d.user.role=:x")
	List <Employee> findAdmin (@Param("x")  Candidat candidat );*/
}

