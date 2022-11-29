package Dao;


import Context.DBContext;
import Entites.web.Comment;

import Entites.web.RoomDetail1;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
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

    public RoomDetail1 getRoomDetail(int id) {
        String query = "SELECT R.RoomNo,R.RoomTypeName,RT.RoomPrice,RT.RoomImg,RT.RoomDesc,R.Occupancy,R.FloorNo \n"
                + "FROM Room R IN RoomType RT ON R.RoomTypeName = RT.RoomTypeName \n"
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
                RoomDetail1 detail = new RoomDetail1(roomNo, rtn, price, img, desc, occ, fn);
                return detail;
            }
        } catch (SQLException ex) {
            Logger.getLogger(RoomDetailDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public List<Comment> getComment(int id) {
        String query;
        query = "SELECT rt.*, (FirstName + LastName) as FullName, r.RoomNo\n"
                + "FROM RoomRate rt LEFT JOIN Guest g\n"
                + "ON rt.GuestID = g.GuestID JOIN Room r\n"
                + "ON rt.RoomRateID = r.RoomRateID \n"
                + "WHERE R.RoomNo= ? ";
        List<Comment> comments = new ArrayList<Comment>();
        try {
            con = DBContext.getDBContext();
            ps = con.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                int RoomRateID = rs.getInt(1);
                int StarRating = rs.getInt(2);
                String RoomComment = rs.getString(3);
                String GuestID = rs.getString(4);
                String FullName = rs.getString(5);
                int RoomNo = rs.getInt(6);
                comments.add(new Comment(RoomRateID, StarRating, RoomComment, GuestID, FullName, RoomNo));
            }
        } catch (SQLException ex) {
            Logger.getLogger(RoomDetailDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return comments;
    }

    public void pushCommentToDB(String cm, int guestID) {
        String query;
        query = "INSERT INTO [dbo].[RoomRate]([RoomComment], [GuestID])\n"
                + "VALUES(? , ?)";
        try {
            con = DBContext.getDBContext();
            ps = con.prepareStatement(query);
            ps.setString(1, cm);
            ps.setInt(2, guestID);
            rs = ps.executeQuery();                  
        } catch (SQLException ex) {
            Logger.getLogger(RoomDetailDao.class.getName()).log(Level.SEVERE, null, ex);
        }
       
    }

}
