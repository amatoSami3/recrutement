package ma.polytechnique.IFT2004W.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import ma.polytechnique.IFT2004W.entites.Candidat;
import ma.polytechnique.IFT2004W.entites.CandidatureSpo;
import ma.polytechnique.IFT2004W.entites.Candidatures;
import ma.polytechnique.IFT2004W.entites.Employee;
//import ma.polytechnique.IFT2004W.entites.Candidat;
//import ma.polytechnique.IFT2004W.entites.Candidatures;
import ma.polytechnique.IFT2004W.entites.Offre;
@Repository
public interface OffresRepository  extends JpaRepository<Offre, Integer> {
	
	@Query("Select d from Offre d where d.titre=:x")
	Offre findByName(@Param("x") String titre);
	
	@Query("Select d from Offre d where d.valid=:x  ")
   	List<Offre> findValidOffres(@Param("x") boolean valid );
	 
	@Query("Select d from Offre d where d.employee=:x and d.autorise=:y ")
   	List<Offre> findOffreEmp(@Param("x") Employee emp,@Param("y") boolean autorise );
	
	
	
	@Query("Select d from Offre d where d.autorise=:x  ")
   	List<Offre> findNonAutorise (@Param("x") boolean autorise );
	
}
