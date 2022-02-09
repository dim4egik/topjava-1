package ru.javawebinar.topjava.web;

import org.slf4j.Logger;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;


import static org.slf4j.LoggerFactory.getLogger;
import static ru.javawebinar.topjava.repository.ApplicationDAOImpl.mealsTo;


@WebServlet(name = "MealServlet", value = "/MealServlet")
public class MealServlet extends HttpServlet {
    private static final Logger log = getLogger(MealServlet.class);

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        log.debug("redirect to meals");
        request.setAttribute("mealsTo" , mealsTo);
        request.getRequestDispatcher("/WEB-INF/meals.jsp").forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) {

    }
}
