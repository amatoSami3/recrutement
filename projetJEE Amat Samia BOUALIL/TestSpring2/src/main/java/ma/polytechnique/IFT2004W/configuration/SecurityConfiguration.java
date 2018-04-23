 package ma.polytechnique.IFT2004W.configuration;
// 
// 
//
//
 import javax.sql.DataSource;
//
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
////import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import ma.polytechnique.IFT2004W.metier.UserService;
//
@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {
//
////	@Autowired
////	private BCryptPasswordEncoder bCryptPasswordEncoder;
//
	@Autowired
	private DataSource dataSource;
//	
	@Value("${spring.queries.users-query}")
	private String usersQuery;
	
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	@Autowired
	 CustomSuccessHandler customSuccessHandler;
//	
@Value("${spring.queries.roles-query}")
	private String rolesQuery;
//
	@Override
	protected void configure(AuthenticationManagerBuilder auth)
			throws Exception {
		auth.
		jdbcAuthentication()
		.usersByUsernameQuery(usersQuery)
		.authoritiesByUsernameQuery(rolesQuery)
		.dataSource(dataSource)
		.passwordEncoder(bCryptPasswordEncoder);
	}
//
	@Override
	protected void configure(HttpSecurity http) throws Exception {
//		 
	
			http.
			authorizeRequests()
			.antMatchers("/").permitAll()
			.antMatchers("/login").permitAll()
			//temporairement
			//.antMatchers("/jsp/**").permitAll()
			///
			.antMatchers("/registration").permitAll()
			.antMatchers("/admin/**").access("hasRole('ADMIN')")
			.antMatchers("/employee/**").access("hasRole('RH')")
			
			.antMatchers("/html").permitAll()
			.antMatchers("/afficher-{idOffre}-detail1").permitAll()
			.antMatchers("/confirm").permitAll()
			.antMatchers("/conReussite").permitAll()
			.antMatchers("/admin/**").hasAuthority("ADMIN")
			.antMatchers("/employee/**").hasAuthority("RH")
			.antMatchers("/candidat/**").hasAnyAuthority("ADMIN","USER").anyRequest()
			.authenticated().and().csrf().disable().formLogin()
			//.loginPage("/login").failureUrl("/login?error=true")
			.and().formLogin().loginPage("/login").successHandler(customSuccessHandler)
			//.defaultSuccessUrl("/home")
			.usernameParameter("email")
			.passwordParameter("password")
			
			
			.and().logout()
			.logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
			.logoutSuccessUrl("/").and().exceptionHandling()
			.accessDeniedPage("/access-denied");
		
	}
//	
	@Override
	public void configure(WebSecurity web) throws Exception {
	    web
	       .ignoring()
	       .antMatchers("/resources/**","/webapp/**", "/static/**", "/css/**", "/js/**", "/images/**","/webjars/**");
	}
	
	
	
	 
	
//
}