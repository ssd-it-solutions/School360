package com.ssdit.edu.security.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.ssdit.edu.dto.StaffDTO;
import com.ssdit.edu.entity.Staff;
import com.ssdit.edu.repo.StaffRepository;
import com.ssdit.edu.security.model.UserDetailsImplimentation;

@Service
public class UserDetailsServiceImplimentation implements UserDetailsService{

	@Autowired
	StaffRepository staffRepository;
	
	private ObjectMapper objectMapper = new ObjectMapper();
	private static Logger LOG = LoggerFactory.getLogger(UserDetailsServiceImplimentation.class);

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		Staff staff = staffRepository.findByUsername(username);
		if(null == staff) {
			throw new UsernameNotFoundException("User with name "+username+" not found");
		}
		return new UserDetailsImplimentation(objectMapper.convertValue(staff,StaffDTO.class));
	}
	
	
}
