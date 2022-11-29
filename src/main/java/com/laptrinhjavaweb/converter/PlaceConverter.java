package com.laptrinhjavaweb.converter;

import com.laptrinhjavaweb.dto.NewDTO;
import com.laptrinhjavaweb.dto.PlaceDTO;

import com.laptrinhjavaweb.entity.PlaceEntity;
import org.springframework.stereotype.Component;

import java.util.jar.Pack200;


@Component
public class PlaceConverter {

    public PlaceDTO toDTO(PlaceEntity entity)
    {
        PlaceDTO newDTO = new PlaceDTO();
        newDTO.setId(entity.getId());
        newDTO.setTitle(entity.getTitle());
        newDTO.setShortDescription(entity.getShortDescription());
        newDTO.setContent(entity.getContent());
        newDTO.setThumbnail(entity.getThumbnail());
        newDTO.setCategoryCode(entity.getCategoryEntity().getCode());
        return newDTO;
    }

    public  PlaceEntity toEntity(PlaceDTO dto){
        PlaceEntity result = new PlaceEntity();
        result.setTitle(dto.getTitle());
        result.setShortDescription(dto.getShortDescription());
        result.setContent(dto.getContent());
        result.setThumbnail(dto.getThumbnail());

        return result;
    }


    public  PlaceEntity toEntity(PlaceEntity result,PlaceDTO dto){

        result.setTitle(dto.getTitle());
        result.setShortDescription(dto.getShortDescription());
        result.setContent(dto.getContent());
        result.setThumbnail(dto.getThumbnail());

        return result;
    }


}
