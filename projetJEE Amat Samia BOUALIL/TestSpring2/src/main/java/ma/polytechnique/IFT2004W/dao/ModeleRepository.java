package ma.polytechnique.IFT2004W.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import ma.polytechnique.IFT2004W.entites.Candidatures;
import ma.polytechnique.IFT2004W.entites.Modele;
import ma.polytechnique.IFT2004W.entites.Offre;


@Repository
public interface ModeleRepository  extends JpaRepository<Modele, Integer> {
	
    @Query("Select d from Modele d where d.type=:x")
	Modele findByType(@Param("x") String type);
     
	
	 


}
