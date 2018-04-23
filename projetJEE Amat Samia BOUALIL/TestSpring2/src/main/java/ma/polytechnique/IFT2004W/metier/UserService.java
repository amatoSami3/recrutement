package ma.polytechnique.IFT2004W.metier;

import java.util.List;

import ma.polytechnique.IFT2004W.entites.Candidat;
import ma.polytechnique.IFT2004W.entites.Role;
import ma.polytechnique.IFT2004W.entites.User;
import ma.polytechnique.IFT2004W.entites.VerificationToken;
 
public interface UserService {
	public User findUserByEmail(String email);
	public void saveUser(User user);
	public void saveUserSecond(User user);
	public void saveUserA(User user);
	public void saveUserAd(User user);
	public User findEnabled(Integer arg0);
	public List<User> findAll();
  //  public List<User> findEmployee(int a);
		    //User getUser(String verificationToken); 
    public   User findOne(Integer arg0);
  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		    
		    public User findByConfirmationToken(String confirmationToken);   
	
}
