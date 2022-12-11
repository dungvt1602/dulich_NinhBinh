package com.laptrinhjavaweb.dto;

import com.laptrinhjavaweb.entity.PlaceEntity;
import com.laptrinhjavaweb.entity.UserEntity;
import org.springframework.web.multipart.MultipartFile;

public class CommentDTO extends AbstractDTO<CommentDTO> {

    private String thumbnail;
    private String content;

    private MultipartFile imageFile;

    private PlaceEntity placeEntity;

    private UserEntity userEntity;

    public PlaceEntity getPlaceEntity() {
        return placeEntity;
    }

    public void setPlaceEntity(PlaceEntity placeEntity) {
        this.placeEntity = placeEntity;
    }

    public UserEntity getUserEntity() {
        return userEntity;
    }

    public void setUserEntity(UserEntity userEntity) {
        this.userEntity = userEntity;
    }

    public MultipartFile getImageFile() {
        return imageFile;
    }

    public void setImageFile(MultipartFile imageFile) {
        this.imageFile = imageFile;
    }


    public String getThumbnail() {
        return thumbnail;
    }
    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    public String getContent() {
        return content;
    }
    public void setContent(String content) {
        this.content = content;
    }

}
