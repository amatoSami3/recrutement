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
import ma.polytechnique.IFT2004W.entites.CandidatureSpo;
import ma.polytechnique.IFT2004W.entites.Offre;
//import ma.polytechnique.IFT2004W.entites.Department;
import ma.polytechnique.IFT2004W.entites.Personne;

@Repository
public interface CandidaturesSpoRepository extends JpaRepository<CandidatureSpo, Integer> {
	
	/*@Query("Select d from Candidatures d where d.type=:x")
	List<Candidatures> findByType(@Param("x") String type);
	
	@Query("Select di from Candidatures di where di.candidat=:x")
	Candidatures findByResponsable(@Param("x") Candidat candidat);
	
	@Query("Select d from Candidatures d where d.offre=:x")
	Candidatures findByOffre(@Param("x") Offre offre);
	 
	@Query("Select d from Candidatures d where d.statut=:x")
	Candidatures findByStatut(@Param("x") String satut);
	
	@Query("Select d from Candidatures d where d.type=:x and d.offre=:o")
	List<Candidatures> findByTypeAndOffre(@Param("x") String type,@Param("o") Offre o);
	
    @Query("Select d from Candidatures d where d.user_id=:x ")
	List<Candidatures> findCandidats(@Param("x") int user_id );*/
	
  /*  @Query("Select d.user_id from CandidaturesSpo d")
	List<Integer> findCandidats( );*/
	
	@Query("Select d from CandidatureSpo d where d.candidat=:x and d.deleted=:y")
	List<CandidatureSpo> findByCandidat(@Param("x") Candidat candidat , @Param("y") boolean deleted);
	
	 @Query("Select d from CandidatureSpo d where d.deleted=:x  ")
	   	List<CandidatureSpo> findActiveCandidatures(@Param("x") boolean deleted );
		 
	
	  @Query("Select distinct d.candidat from CandidatureSpo d")
	   	List<Candidat> findCandidats( );
	 
}
