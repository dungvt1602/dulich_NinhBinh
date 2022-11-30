package com.laptrinhjavaweb.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.laptrinhjavaweb.converter.UserConverter;
import com.laptrinhjavaweb.dto.UserDTO;
import com.laptrinhjavaweb.repository.RoleRepository;
import com.laptrinhjavaweb.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import org.springframework.stereotype.Service;

import com.laptrinhjavaweb.constant.SystemConstant;
import com.laptrinhjavaweb.dto.MyUser;
import com.laptrinhjavaweb.entity.RoleEntity;
import com.laptrinhjavaweb.entity.UserEntity;
import com.laptrinhjavaweb.repository.UserRepository;
import org.springframework.transaction.annotation.Transactional;

@Service
@EnableAspectJAutoProxy(proxyTargetClass=true)
public class CustomUserDetailsService  implements UserDetailsService , IUserService {
	
	@Autowired
	private UserRepository userRepository;

	@Autowired
	UserConverter userConverter ;


	@Autowired
	RoleRepository roleRepository;



	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		UserEntity userEntity = userRepository.findOneByUserNameAndStatus(username, SystemConstant.ACTIVE_STATUS);
		
		if (userEntity == null) {
			throw new UsernameNotFoundException("User not found");
		}
		List<GrantedAuthority> authorities = new ArrayList<>();
		for (RoleEntity role: userEntity.getRoles()) {
			authorities.add(new SimpleGrantedAuthority(role.getCode()));
		}
		MyUser myUser = new MyUser(userEntity.getUserName(), userEntity.getPassword(), 
							true, true, true, true, authorities);
		myUser.setFullName(userEntity.getFullName());
		return myUser;
	}


	@Override
	@Transactional
	public UserDTO save(UserDTO dto) {
		UserEntity entity = new UserEntity();
		List<RoleEntity> roleEntityList = roleRepository.findAllByCode("USER");

		if(dto.getId()!= null)
		{
			UserEntity oldEntity = userRepository.findOne(dto.getId());
			entity = userConverter.toEntity(oldEntity , dto);
			entity = userRepository.save(entity);
		}
		else {
			entity = userConverter.toEntity(dto);
			entity.setRoles(roleEntityList);
			entity = userRepository.save(entity);
		}
		return userConverter.toDTO(entity);
	}
}
