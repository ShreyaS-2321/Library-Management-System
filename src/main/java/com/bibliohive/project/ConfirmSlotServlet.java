package com.bibliohive.project;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class ConfirmSlotServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String slotTime = request.getParameter("slotTime");

       
        boolean isSuccess = confirmSlotInDatabase(slotTime);

      
        if (isSuccess) {
            response.getWriter().write("Slot confirmed successfully!");
        } else {
            response.getWriter().write("Slot is already taken. Please try again.");
        }
    }

    private boolean confirmSlotInDatabase(String slotTime) {
        
        try {
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bibliohive", "root", "shreya23");
            String query = "UPDATE libslots SET is_taken = true WHERE slot_time = ? AND is_taken = false";
            PreparedStatement pst = conn.prepareStatement(query);
            pst.setString(1, slotTime);
            int result = pst.executeUpdate();

            return result > 0;  
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
