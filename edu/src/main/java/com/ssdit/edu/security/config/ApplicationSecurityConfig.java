package com.ssdit.edu.security.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import com.ssdit.edu.security.service.UserDetailsServiceImplimentation;

@Configuration
@EnableWebSecurity
public class ApplicationSecurityConfig extends WebSecurityConfigurerAdapter{

	@Autowired
	UserDetailsServiceImplimentation udService;
	
	@Bean
	public AuthenticationProvider authProvider() {
		DaoAuthenticationProvider provider = new DaoAuthenticationProvider();
		provider.setUserDetailsService(udService);
		provider.setPasswordEncoder(NoOpPasswordEncoder.getInstance());
		return provider;
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {

		http
			.csrf().disable()
			.authorizeRequests().antMatchers("/school360/login","/assets/**","/school360/login-error").permitAll()
			.anyRequest().authenticated()
			.and()
			.formLogin().loginPage("/school360/login")
			.defaultSuccessUrl("/school360")
			.failureUrl("/school360/login-error")
			.and()
			.logout().invalidateHttpSession(true).clearAuthentication(true)
			.logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
			.logoutSuccessUrl("/school360/login").permitAll();

	}
	
}