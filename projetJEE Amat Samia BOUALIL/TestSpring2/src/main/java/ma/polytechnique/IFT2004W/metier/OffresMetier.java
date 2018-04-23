package ma.polytechnique.IFT2004W.metier;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.access.annotation.Secured;

import ma.polytechnique.IFT2004W.entites.Candidatures;
import ma.polytechnique.IFT2004W.entites.Employee;
import ma.polytechnique.IFT2004W.entites.Offre;

public interface OffresMetier {

	void delete(Integer arg0);

	void delete(Offre arg0);

	Offre findOne(Integer arg0);
	
	@Secured("ROLE_RH")
	<S extends Offre> S save(S arg0);

	Offre findByName(String arg0);

	Page<Offre> findAll(Pageable arg0);
	
	List<Offre> findAll();

	 //<S extends Offre> saveAndFlush(S arg0);
	
	 <S extends Offre> S saveAndFlush(S arg0);
	 
	 List<Offre> findValidOffres(boolean valid) ;
	 
	 List<Offre> findOffreEmp(Employee valid,boolean b) ;
	 
	 List<Offre> findNonAutorise(boolean autorise) ;

}