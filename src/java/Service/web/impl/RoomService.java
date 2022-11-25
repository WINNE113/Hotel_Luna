/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service.web.impl;

import Dao.RoomDao;
import Entites.web.RoomDetail;
import Service.web.IRoomService;
import java.util.List;
import java.util.Map;

/**
 *
 * @author ASUS-PRO
 */
public class RoomService implements IRoomService {

    private RoomDao dao;

    public RoomService() {
        dao = new RoomDao();
    }

    @Override
    public List<RoomDetail> listRoom() {
        return dao.listRoomHighRate();
    }

    @Override
    public Map<Integer, List<RoomDetail>> listRoomByPlace(String cityId) {
        return dao.listRoomByPlace(cityId);
    }

    @Override
    public List<RoomDetail> listRoomByPrice(int price, int toPrice) {
        return dao.listRoomByPrice(price, toPrice);
    }

    @Override
    public List<RoomDetail> listRoomByRoomType(String roomType) {
        return dao.listRoomByRoomType(roomType);
    }

    @Override
    public List<RoomDetail> listRoomByBedType(String bedType) {
        return dao.listRoomByBedType(bedType);
    }

}
