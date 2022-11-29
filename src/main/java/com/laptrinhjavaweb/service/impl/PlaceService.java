package com.laptrinhjavaweb.service.impl;


import com.laptrinhjavaweb.converter.PlaceConverter;
import com.laptrinhjavaweb.dto.PlaceDTO;

import com.laptrinhjavaweb.entity.CategoryEntity;
import com.laptrinhjavaweb.entity.PlaceEntity;

import com.laptrinhjavaweb.repository.CategoryRepository;
import com.laptrinhjavaweb.repository.PlaceRepository;

import com.laptrinhjavaweb.service.IPlaceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service
public class PlaceService implements IPlaceService {



	@Autowired
	PlaceRepository placeRepository;

	@Autowired
	CategoryRepository categoryRepository;

	@Autowired
	PlaceConverter placeConverter;

	@Override
	public List<PlaceDTO> findAll(Pageable pageable) {
		List<PlaceDTO> models = new ArrayList<>();
		List<PlaceEntity> placeEntities = placeRepository.findAll(pageable).getContent();
		for(PlaceEntity item : placeEntities)
		{
			PlaceDTO newModel = new PlaceDTO();
			newModel.setId(item.getId());
			newModel.setTitle(item.getTitle());
			newModel.setShortDescription(item.getShortDescription());
			models.add(newModel);
		}
 		return models;
	}

	@Override
	public Integer getTotalItem() {
		return (int) placeRepository.count();
	}

	@Override
	public PlaceDTO findbyID(Long id) {

		PlaceEntity entity = placeRepository.findOne(id);
		PlaceDTO result = placeConverter.toDTO(entity);
		return result;
	}

	@Override
	@Transactional
	public PlaceDTO insert(PlaceDTO dto) {
		return null;
	}

	@Override
	@Transactional
	public PlaceDTO update(PlaceDTO dto) {
		return  null;
	}

	@Override
	@Transactional
	public PlaceDTO save(PlaceDTO dto) {
		CategoryEntity categoryEntity = categoryRepository.findOneByCode(dto.getCategoryCode());
		PlaceEntity entity = new PlaceEntity();
		if(dto.getId() != null)
		{
			PlaceEntity oldEntity = placeRepository.findOne(dto.getId());
			entity = placeConverter.toEntity(oldEntity,dto);
			entity.setCategoryEntity(categoryEntity);
			entity = placeRepository.save(entity);
		}else
		{
			entity = placeConverter.toEntity(dto);
			entity.setCategoryEntity(categoryEntity);
			entity = placeRepository.save(entity);
		}
		return placeConverter.toDTO(entity);
	}
}
