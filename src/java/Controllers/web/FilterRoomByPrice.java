/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers.web;

import Dao.RoomDao;
import Entites.web.RoomDetail;
import Service.web.IRoomService;
import Service.web.impl.RoomService;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ASUS-PRO
 */
@WebServlet(name = "FilterRoomByPrice", urlPatterns = {"/filterbyprice"})
public class FilterRoomByPrice extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String allPrice = request.getParameter("exit");
        String[] price = allPrice.split(",");
        int fromPrice = Integer.parseInt(price[0]);
        int toPrice = Integer.parseInt(price[1]);

        IRoomService service = new RoomService();
        List<RoomDetail> listRoom = service.listRoomByPrice(fromPrice, toPrice);
        PrintWriter out = response.getWriter();
        for (RoomDetail item : listRoom) {
            out.print("<div class=\"result_block\">\n"
                    + "                                    <div class=\"image_hotel\">\n"
                    + "                                        <img src=\"" + item.getRoomImg() + "\" alt=\"room hotel\">\n"
                    + "                                    </div>\n"
                    + "                                    <div class=\"content_hotel\">\n"
                    + "                                        <div class=\"main_content\">\n"
                    + "                                            <div class=\"title_hotel\">\n"
                    + "                                                <span>" + item.getRoomTypeName() + "</span>\n"
                    + "                                            </div>\n"
                    + "                                            <div class=\"address_hotel\">\n"
                    + "                                                <span>" + item.getHotelAddress() + "</span>\n"
                    + "                                            </div>\n"
                    + "                                            <div class=\"price_hotel\">\n"
                    + "                                                <span>From</span>\n"
                    + "                                                <h5>VND " + item.getRoomPrice() + "</h5>\n"
                    + "                                                <span>For Night</span>\n"
                    + "                                            </div>\n"
                    + "                                        </div>\n"
                    + "                                        <div class=\"btn_booking\">\n"
                    + "                                            <a href=\"#\">Booking</a>\n"
                    + "                                            <span></span>\n"
                    + "                                            <span></span>\n"
                    + "                                            <span></span>\n"
                    + "                                        </div>\n"
                    + "                                    </div>\n"
                    + "                                </div>");
        }
    }
}
