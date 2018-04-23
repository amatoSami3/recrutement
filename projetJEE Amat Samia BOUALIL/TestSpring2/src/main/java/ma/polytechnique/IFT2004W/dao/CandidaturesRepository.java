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
import ma.polytechnique.IFT2004W.entites.Offre;
//import ma.polytechnique.IFT2004W.entites.Department;
import ma.polytechnique.IFT2004W.entites.Personne;

@Repository
public interface CandidaturesRepository extends JpaRepository<Candidatures, Integer> {
	
	@Query("Select d from Candidatures d where d.type=:x")
	List<Candidatures> findByType(@Param("x") String type);
	
	@Query("Select di from Candidatures di where di.candidat=:x")
	Candidatures findByResponsable(@Param("x") Candidat candidat);
	
	@Query("Select d from Candidatures d where d.offre=:x")
	List<Candidatures> findByOffre(@Param("x") Offre offre);
	 
	@Query("Select d from Candidatures d where d.statut=:x")
	Candidatures findByStatut(@Param("x") String satut);
	
	@Query("Select d from Candidatures d where d.type=:x and d.offre=:o")
	List<Candidatures> findByTypeAndOffre(@Param("x") String type,@Param("o") Offre o);

	@Query("Select d from Candidatures d where d.sent=:x and d.offre.employee=:o and d.deleted=:z and d.ok=:e")
	List<Candidatures> findSent(@Param("x") boolean sent,@Param("o") Employee id,@Param("z") boolean deleted,@Param("e") boolean ok);
	
    @Query("Select d from Candidatures d where d.candidat.user_id=:x ")
	List<Candidatures> findByCandidat(@Param("x") int user_id );
    
   /* @Query("Select d from Candidatures d where d.deleted=:x and d.statut!=:y ")
   	List<Candidatures> findActiveCandidatures(@Param("x") boolean deleted,@Param("y") String statut );*/
    

    @Query("Select d from Candidatures d where d.deleted=:x  ")
   	List<Candidatures> findActiveCandidatures(@Param("x") boolean deleted );
	 
    
    @Query("Select distinct d.candidat from Candidatures d where d.deleted=:x and d.offre.employee=:y")
   	List<Candidat> findCandidats(@Param("x")boolean deleted,@Param("y") Employee emp);
    
    @Query("Select distinct d.candidat from Candidatures d where d.deleted=:x and d.offre=:y")
   	List<Candidat> findCandidatsO(@Param("x")boolean deleted,@Param("y") Offre offre);
    
    @Query("Select d from Candidatures d where d.deleted=:x  ")
   	boolean isExist(@Param("x") boolean deleted );
    
    @Query("Select  d from Candidatures d where d.candidat=:x and d.offre=:o")
	Candidatures findByOffreCandidat(@Param("x") Candidat candidat,@Param("o") Offre offre);
	
    @Query("Select d from Candidatures d where d.ok=:x and d.deleted=:y ")
    List<Candidatures> findOk(@Param("x") boolean ok ,@Param("y") boolean deleted );
	 
}
