package com.bibliohive.project;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class FilterBooks extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
        String stream = request.getParameter("stream");
        String year = request.getParameter("year");

        
        List<Books> allBooks = getAllBooks(); 

     
        List<Books> filteredBooks = new ArrayList<>();

       
        if ((stream == null || stream.isEmpty()) && 
            (year == null || year.isEmpty())) {
          
            filteredBooks = allBooks; 
        } else {
            
            for (Books book : allBooks) {
                boolean matches = true;

        
                if (stream != null && !stream.isEmpty() && !book.getStream().equals(stream)) {
                    matches = false;
                }
                if (year != null && !year.isEmpty() && book.getYear() != Integer.parseInt(year)) {
                    matches = false;
                }
              
                if (matches) {
                    filteredBooks.add(book);
                }
            }
        }

    
        request.setAttribute("filteredBooks", filteredBooks);

   
        RequestDispatcher dispatcher = request.getRequestDispatcher("/dashboard.jsp");
        dispatcher.forward(request, response);
    }

  
    private List<Books> getAllBooks() {
        List<Books> books = new ArrayList<>();

       
        books.add(new Books("Computer Aided Engineering", "bc24.jpg", "CSE", 3));
        books.add(new Books("Engineering Graphics And Design", "bc2.jpeg", "ME", 2));
        books.add(new Books("Chemical Engineering", "bc3.jpeg", "CE", 3));
        books.add(new Books("Elements of Mechanical Engineering", "bc4.jpeg", "ME",1));
        books.add(new Books("AI in Aerospace Engineering", "bc17.jpg", "AI", 2));
        books.add(new Books("Prompt Engineering for Generative AI", "bc18.jpeg", "AI", 3));
        books.add(new Books("Basic Computer Engineering", "bc20.jpeg", "CSE", 1));
        books.add(new Books("The Computer Engineering Handbook", "bc21.jpg", "CSE", 2));
        books.add(new Books("Objective Electrical Engineering", "bc12.jpg", "EE", 4));
        books.add(new Books("Basic Electrical Engineering", "bc11.jpeg", "EE", 1));
        

        return books;
    }
}

