package ma.polytechnique.IFT2004W.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import ma.polytechnique.IFT2004W.entites.Candidatures;
import ma.polytechnique.IFT2004W.entites.Poste;
@Repository
public interface PosteRepository  extends JpaRepository<Poste, Integer> {
	

}
