package ma.polytechnique.IFT2004W;

import org.springframework.transaction.annotation.Transactional;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;

import ma.polytechnique.IFT2004W.metier.UserService;

@SpringBootApplication
public class TestSpringWebApplication extends SpringBootServletInitializer {
	@Autowired
	private UserService userMetierImpl;
	/*@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(TestSpringWebApplication.class);
	}

	public static void main(String[] args) {
		SpringApplication.run(TestSpringWebApplication.class, args);
	}*/
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(TestSpringApplication.class);
	}
	
	public static void main(String[] args) {
		SpringApplication.run(TestSpringApplication.class, args);
		
		
		
		
	}
	
	@Transactional
    public void run(String... args) throws Exception {
		//
	}

}
