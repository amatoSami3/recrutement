//package ma.polytechnique.IFT2004W.metier;
//
//import java.util.List;
//
//import org.springframework.data.domain.Page;
//import org.springframework.data.domain.Pageable;
//import ma.polytechnique.IFT2004W.entites.Poste;
//
//public interface PosteMetier {
//
//	void delete(Integer arg0);
//
//	void deleteAll();
//
//	List<Poste> findAll();
//
//	Poste findOne(Integer arg0);
//
//	<S extends Poste> S save(S arg0);
//
//	<S extends Poste> S saveAndFlush(S arg0);
//
//	void delete(Poste arg0);
//
//	Page<Poste> findAll(Pageable arg0);
//
//}