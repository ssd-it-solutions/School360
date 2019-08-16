package com.ssdit.edu.security.model;

import java.util.Collection;
import java.util.Collections;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.ssdit.edu.dto.StaffDTO;

@SuppressWarnings("serial")
public class UserDetailsImplimentation implements UserDetails{

	private StaffDTO staff;
	
	
	
	public UserDetailsImplimentation(StaffDTO staff){
		super();
		this.staff = staff;
	}
	
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		return Collections.singleton(new SimpleGrantedAuthority(staff.getRole()));
		
	}

	@Override
	public String getPassword() {
		return staff.getPassword();
	}

	@Override
	public String getUsername() {
		return staff.getUsername();
	}

	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	@Override
	public boolean isEnabled() {
		return true;
	}

	public StaffDTO getStaff() {
		return staff;
	}

	public void setStaff(StaffDTO staff) {
		this.staff = staff;
	}

}
