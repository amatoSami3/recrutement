package ma.polytechnique.IFT2004W.dao;

 
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

 
import ma.polytechnique.IFT2004W.entites.Candidat;
//import ma.polytechnique.IFT2004W.entites.Candidatures;
import ma.polytechnique.IFT2004W.entites.Document;
//@Component
@Repository
public interface DocumentRepository  extends JpaRepository<Document, Integer> {
	@Query("Select di from Document di where di.candidat=:x")
	List<Document > findByPerso(@Param("x") Candidat candidat);

}
