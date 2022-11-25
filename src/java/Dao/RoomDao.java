/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Context.DBContext;
import Entites.web.RoomDetail;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * @author ASUS-PRO
 */
public class RoomDao {

    private Connection con;
    private PreparedStatement ps;
    private ResultSet rs;

    public List<RoomDetail> listRoomHighRate() {
        String query = "select distinct top 5 c.CityName, h.HotelAddress, r.RoomTypeName, rt.RoomPrice, rt.RoomImg, rr.RoomRateDesc, rs.RoomStatusDesc,rr.RoomRateDesc\n"
                + "                from City as c , Hotel as h, Room as r, RoomType as rt , RoomRate as rr, RoomStatus as rs\n"
                + "                where c.CityID = h.CityID and h.HotelCode = r.HotelCode \n"
                + "				and r.RoomTypeName = rt.RoomTypeName and r.RoomStatusID = rs.RoomStatusID \n"
                + "				and  rs.RoomStatusDesc = 'AVAILABLE' and rr.RoomRateID = '3'";
        try {
            con = DBContext.getDBContext();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            List<RoomDetail> listRoom = new ArrayList<>();
            while (rs.next()) {
                RoomDetail rd = new RoomDetail(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6));
                listRoom.add(rd);
            }
            return listRoom;
        } catch (Exception e) {
            return null;
        }
    }

    public Map<Integer, List<RoomDetail>> listRoomByPlace(String cityId) {
        String query = "select distinct c.CityName, h.HotelAddress, r.RoomTypeName, rt.RoomPrice, rt.RoomImg, rr.RoomRateDesc, rs.RoomStatusDesc,rr.RoomRateDesc\n"
                + "from City as c , Hotel as h, Room as r, RoomType as rt , RoomRate as rr, RoomStatus as rs\n"
                + "where c.CityID = h.CityID and h.HotelCode = r.HotelCode \n"
                + "		and r.RoomTypeName = rt.RoomTypeName and r.RoomStatusID = rs.RoomStatusID \n"
                + "      	and  rs.RoomStatusDesc = 'AVAILABLE' and  c.CityID = ?";
        try {
            con = DBContext.getDBContext();
            ps = con.prepareStatement(query);
            ps.setString(1, cityId);
            rs = ps.executeQuery();
            Map<Integer, List<RoomDetail>> map = new HashMap<>();
            List<RoomDetail> listRoom = new ArrayList<>();
            int totalResult = 0;       // Total result
            while (rs.next()) {
                RoomDetail rd = new RoomDetail(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6));
                listRoom.add(rd);
                totalResult++;
            }
            map.put(totalResult, listRoom);
            return map;
        } catch (SQLException e) {
            System.out.println("ex: " + e);
        }
        return null;
    }

    public List<RoomDetail> listRoomByRoomType(String roomType) {
        String query = "select distinct c.CityName, h.HotelAddress, r.RoomTypeName, rt.RoomPrice, rt.RoomImg, rr.RoomRateDesc\n"
                + "from City as c , Hotel as h, Room as r, RoomType as rt , RoomRate as rr, RoomStatus as rs\n"
                + " where c.CityID = h.CityID and h.HotelCode = r.HotelCode \n"
                + " and r.RoomTypeName = rt.RoomTypeName and r.RoomStatusID = rs.RoomStatusID\n"
                + "and  rs.RoomStatusDesc = 'AVAILABLE' and rt.RoomTypeName = ?";
        try {
            con = DBContext.getDBContext();
            ps = con.prepareStatement(query);
            ps.setString(1, roomType);
            rs = ps.executeQuery();
            List<RoomDetail> listRoom = new ArrayList<>();
            while (rs.next()) {
                RoomDetail rd = new RoomDetail(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6));
                listRoom.add(rd);
            }
            return listRoom;
        } catch (SQLException e) {
            System.out.println("ex: " + e);
        }
        return null;
    }

    public List<RoomDetail> listRoomByPrice(int price, int toPrice) {
        String query = "select distinct c.CityName, h.HotelAddress, r.RoomTypeName, rt.RoomPrice, rt.RoomImg, rr.RoomRateDesc\n"
                + "from City as c , Hotel as h, Room as r, RoomType as rt , RoomRate as rr, RoomStatus as rs\n"
                + "where c.CityID = h.CityID and h.HotelCode = r.HotelCode \n"
                + "and r.RoomTypeName = rt.RoomTypeName and r.RoomStatusID = rs.RoomStatusID\n"
                + "and  rs.RoomStatusDesc = 'AVAILABLE' and rt.RoomPrice Between ? and ?";
        try {
            con = DBContext.getDBContext();
            ps = con.prepareStatement(query);
            ps.setInt(1, price);
            ps.setInt(2, toPrice);
            rs = ps.executeQuery();
            List<RoomDetail> listRoom = new ArrayList<>();
            while (rs.next()) {
                RoomDetail rd = new RoomDetail(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6));
                listRoom.add(rd);
            }
            return listRoom;
        } catch (SQLException e) {
            System.out.println("ex: " + e);
        }
        return null;
    }

    public List<RoomDetail> listRoomByBedType(String bedType) {
        String query = "select distinct c.CityName, h.HotelAddress, r.RoomTypeName, rt.RoomPrice, rt.RoomImg, rr.RoomRateDesc\n"
                + "from City as c , Hotel as h, Room as r, RoomType as rt , RoomRate as rr, RoomStatus as rs\n"
                + "where c.CityID = h.CityID and h.HotelCode = r.HotelCode \n"
                + "and r.RoomTypeName = rt.RoomTypeName and r.RoomStatusID = rs.RoomStatusID\n"
                + "and  rs.RoomStatusDesc = 'AVAILABLE' and rt.BedType = ?";
        try {
            con = DBContext.getDBContext();
            ps = con.prepareStatement(query);
            ps.setString(1, bedType);
            rs = ps.executeQuery();
            List<RoomDetail> listRoom = new ArrayList<>();
            while (rs.next()) {
                RoomDetail rd = new RoomDetail(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6));
                listRoom.add(rd);
            }
            return listRoom;
        } catch (SQLException e) {
            System.out.println("ex: " + e);
        }
        return null;
    }
}
