package Dao;

import Context.DBContext;
import Entites.web.RoomDetail;
import Entites.web.RoomDetail1;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author ndatw
 */
public class RoomDetailDao {

    private Connection con = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;

    public RoomDetail getRoomDetail(int id) {
        String query = "SELECT R.RoomNo,R.RoomTypeName,RT.RoomPrice,RT.RoomImg,RT.RoomDesc,R.Occupancy,R.FloorNo \n"
                + "FROM Room R JOIN RoomType RT ON R.RoomTypeName = RT.RoomTypeName \n"
                + "WHERE R.RoomNo= ? ";
        try {
            con = DBContext.getDBContext();
            ps = con.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                int roomNo = rs.getInt(1);
                String rtn = rs.getString(2);
                float price = rs.getFloat(3);
                String img = rs.getString(4);
                String desc = rs.getString(5);
                int occ = rs.getInt(6);
                int fn = rs.getInt(7);
                RoomDetail1 detail1 = new RoomDetail1(roomNo, rtn, price, img, desc, occ, fn);
                return detail1;  
            }
        } catch (SQLException ex) {
            Logger.getLogger(RoomDetailDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
