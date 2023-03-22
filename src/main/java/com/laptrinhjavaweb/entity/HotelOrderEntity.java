package com.laptrinhjavaweb.entity;

import javax.persistence.*;
import java.util.Date;


@Entity
@Table(name = "hotelOrder")
public class HotelOrderEntity extends BaseEntity {

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id")
    private UserEntity userEntity;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "hotel_id")
    private HotelEntity hotelEntity;

    @Column(name = "check_in_day")
    private Date checkInDay;

    @Column(name = "number_room")
    private long soLuong;

    @Column(name ="sum_price")
    private long sumPrice;

    @Column(name = "room_state")
    private boolean roomState;

    public UserEntity getUserEntity() {
        return userEntity;
    }

    public void setUserEntity(UserEntity userEntity) {
        this.userEntity = userEntity;
    }

    public HotelEntity getHotelEntity() {
        return hotelEntity;
    }

    public void setHotelEntity(HotelEntity hotelEntity) {
        this.hotelEntity = hotelEntity;
    }

    public Date getCheckInDay() {
        return checkInDay;
    }

    public void setCheckInDay(Date checkInDay) {
        this.checkInDay = checkInDay;
    }

    public long getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(long soLuong) {
        this.soLuong = soLuong;
    }

    public long getSumPrice() {
        return sumPrice;
    }

    public void setSumPrice(long sumPrice) {
        this.sumPrice = sumPrice;
    }
}
