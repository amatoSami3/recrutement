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
//import ma.polytechnique.IFT2004W.entites.Candidatures;
import ma.polytechnique.IFT2004W.entites.Personne;

//@Component
@Repository
public interface CandidatRepository  extends JpaRepository<Candidat, Integer> {
	 
	/*@Query("Select d from Personne d where d.idPersonne=:x")
	Candidat findById(@Param("x") Integer name);*/
	
/*	@Query("Select d from Personne d where d.email=:x and d.pass=:y")
	Candidat findByEmailAndPass(@Param("x")  String email,@Param("y") String pass);
	
	@Query("Select d from Personne d where d.nom=:x")
	Candidat findByEmail(@Param("x")  String nom );*/
	
	@Query("Select d from Candidatures d where d.candidat=:x")
	List <Candidatures> findCandidatures(@Param("x")  Candidat candidat );
}
