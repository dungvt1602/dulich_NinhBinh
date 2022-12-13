package com.laptrinhjavaweb.converter;

import com.laptrinhjavaweb.dto.CommentDTO;
import com.laptrinhjavaweb.dto.PlaceDTO;
import com.laptrinhjavaweb.entity.CommentPlaceEntity;
import com.laptrinhjavaweb.entity.PlaceEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.servlet.ServletContext;
import java.sql.Timestamp;


@Component
public class CommentConverter {



    public CommentDTO toDTO(CommentPlaceEntity entity)
    {
        CommentDTO newDTO = new CommentDTO();
        newDTO.setContent(entity.getContent());
        newDTO.setId(entity.getId());
        newDTO.setThumbnail(entity.getThumbnail());
        newDTO.setCreateDate((Timestamp) entity.getCreatedDate());
        newDTO.setUserName(entity.getUserEntity().getFullName());
        return newDTO;
    }

    public  CommentPlaceEntity toEntity(CommentDTO dto){

        CommentPlaceEntity result = new CommentPlaceEntity();
        result.setContent(dto.getContent());
        result.setThumbnail(dto.getThumbnail());

        return result;
    }





}
