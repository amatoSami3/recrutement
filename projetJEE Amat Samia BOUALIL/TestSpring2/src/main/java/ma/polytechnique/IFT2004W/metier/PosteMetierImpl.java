//package ma.polytechnique.IFT2004W.metier;
//
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.data.domain.Page;
//import org.springframework.data.domain.Pageable;
//
////import ma.polytechnique.IFT2004W.dao.PersonneRepository;
//import ma.polytechnique.IFT2004W.dao.PosteRepository;
//import ma.polytechnique.IFT2004W.entites.Poste;
//
//public class PosteMetierImpl implements PosteMetier {
//	@Autowired
//	private PosteRepository posteRepository;
//
//	/* (non-Javadoc)
//	 * @see ma.polytechnique.IFT2004W.metier.PosteMetier#delete(java.lang.Integer)
//	 */
//	@Override
//	public void delete(Integer arg0) {
//		posteRepository.delete(arg0);
//	}
//
//	/* (non-Javadoc)
//	 * @see ma.polytechnique.IFT2004W.metier.PosteMetier#deleteAll()
//	 */
//	@Override
//	public void deleteAll() {
//		posteRepository.deleteAll();
//	}
//
//	/* (non-Javadoc)
//	 * @see ma.polytechnique.IFT2004W.metier.PosteMetier#findAll()
//	 */
//	@Override
//	public List<Poste> findAll() {
//		return posteRepository.findAll();
//	}
//
//	/* (non-Javadoc)
//	 * @see ma.polytechnique.IFT2004W.metier.PosteMetier#findOne(java.lang.Integer)
//	 */
//	@Override
//	public Poste findOne(Integer arg0) {
//		return posteRepository.findOne(arg0);
//	}
//
//	/* (non-Javadoc)
//	 * @see ma.polytechnique.IFT2004W.metier.PosteMetier#save(S)
//	 */
//	@Override
//	public <S extends Poste> S save(S arg0) {
//		return posteRepository.save(arg0);
//	}
//
//	/* (non-Javadoc)
//	 * @see ma.polytechnique.IFT2004W.metier.PosteMetier#saveAndFlush(S)
//	 */
//	@Override
//	public <S extends Poste> S saveAndFlush(S arg0) {
//		return posteRepository.saveAndFlush(arg0);
//	}
//
//	/* (non-Javadoc)
//	 * @see ma.polytechnique.IFT2004W.metier.PosteMetier#delete(ma.polytechnique.IFT2004W.entites.Poste)
//	 */
//	@Override
//	public void delete(Poste arg0) {
//		posteRepository.delete(arg0);
//	}
//
//	/* (non-Javadoc)
//	 * @see ma.polytechnique.IFT2004W.metier.PosteMetier#findAll(org.springframework.data.domain.Pageable)
//	 */
//	@Override
//	public Page<Poste> findAll(Pageable arg0) {
//		return posteRepository.findAll(arg0);
//	}
//
//	
//	
//	
//	
//	
//
//}
