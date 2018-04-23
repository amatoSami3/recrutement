package ma.polytechnique.IFT2004W.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import ma.polytechnique.IFT2004W.entites.User;
import ma.polytechnique.IFT2004W.entites.VerificationToken;

public interface VerificationTokenRepository extends JpaRepository<VerificationToken, Long> {
 
    VerificationToken findByToken(String token);
 
    VerificationToken findByUser(User user);
}
