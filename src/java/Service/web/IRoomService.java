/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service.web;

import Entites.web.RoomDetail;
import java.util.List;
import java.util.Map;

/**
 *
 * @author ASUS-PRO
 */
public interface IRoomService {

    public List<RoomDetail> listRoom();

    public Map<Integer, List<RoomDetail>> listRoomByPlace(String cityId);

    public List<RoomDetail> listRoomByPrice(int price, int toPrice);

    public List<RoomDetail> listRoomByRoomType(String roomType);
    
    public List<RoomDetail> listRoomByBedType(String bedType);

}
