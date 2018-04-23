package ma.polytechnique.IFT2004W.dao;

 

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import ma.polytechnique.IFT2004W.entites.Role;
import ma.polytechnique.IFT2004W.entites.User;

 

@Repository("userRepository")
public interface UserRepository extends JpaRepository<User, Integer> {
	 User findByEmail(String email);
	 // User (String confirmationToken);
	  
	  @Query("Select d from User d where d.user_id=:x")
	   User findEnabled (@Param("x")  int user_id );
	  
	//  @Query("Select d from User d where d.confirmationToken=:x")
	   User findByConfirmationToken (String confirmationToken );
	   
	  /* @Query("Select d from User d where d.role=:x")
	   List <User> findEmployee (@Param("x") int RH );*/
	  
}
