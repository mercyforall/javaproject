/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;


/**
 *
 * @author Freeware Sys
 */
@WebServlet(urlPatterns = {"/dbQuestion"})
public class dbQuestion extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    {
        try{
                PrintWriter out=response.getWriter();
                response.setContentType("text/html");
                PreparedStatement stmt;
                Class.forName("org.gjt.mm.mysql.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1/Onlineexam","root","");
                stmt=con.prepareStatement("insert into questions values('1','Fullset1','In the following the questions choose the word which best expresses the opposite meaning of the given word.  TREACHEROUS ',' Loyal ',' Catchy ',' Quirky ','Traitorous','1','1')");
                stmt.executeUpdate();
                stmt=con.prepareStatement("insert into questions values('2','Fullset1','Choose a pair that has most similar relationship to the given pair:  SABBATICAL: PROFESSOR ',' hibernation: bear ','interval: lunch','breakthrough: singer','wicket: bowler','1','1')");
                stmt.executeUpdate();
                stmt=con.prepareStatement("insert into questions values('3','Fullset1','In the following sentence, some part of the sentence is underlined. Beneath the sentence you will find four ways of phrasing the underlined part. Choose the best choice that follows the requirements of standard written English.  His speech was idealistic, but at the end of it, he strokes a note of caution. ','strokes a note of caution.','strut for a note of caution','striked a note of a caution','struck a note of caution','4','1')");
                stmt.executeUpdate();
                stmt=con.prepareStatement("insert into questions values('4','Fullset1','In a sports store, the profit is 520% of the cost. If the cost increases by 30% but the selling price remains constant, approximately what percentage of the selling price is the profit?','54.5%','62.3%','45.08%','79.03%','4','1')");
                stmt.executeUpdate();
                stmt=con.prepareStatement("insert into questions values('5','Fullset1','The work can be completed in 5 days by 20 men and 45 women together. It takes 200 days for one man alone to complete the same work. How many days will be required for one woman alone to complete the same work?','350 days','500 days','300 days','450 days','4','1')");
                stmt.executeUpdate();
                stmt=con.prepareStatement("insert into questions values('6','Fullset1','Employees who spend long hours typing on a computer keyboard often develop Carpel Tunnel  Syndrome CTS  an inflammation of the wrist tendons. A study of the effectiveness of various common treatment methods found that acupuncture has no more beneficial effect than has no treatment at all.','Specially designed wrist strengthening exercises have been shown to be more effective than acupuncture for long_term treatment of CTS. ','The number of acupuncturists offering relief for CTS has increased in the past year. ','The health plans preferred by the vast majority of companies have begun addressing the CTS issue by offering acupuncture to the list of treatments fully covered by insurance. ','While undergoing acupuncture treatment  CTS sufferers have reported they can type comfortably for a greater number of hours than before they began treatment','4','2')");
                stmt.executeUpdate();
                /*stmt=con.prepareStatement("insert into questions values('7','Fullset1','In the following question below is given a statement followed by two conclusions numbered 1 and 2. You have to assume everything in the statement to be true  then consider the two conclusions together and decide which of them logically follows beyond a reasonable doubt from the information given in the statement. Which of the conclusion can be drawn from the statement?  Statement- A good company has marketed the software product. Go ahead. purchase it if price     and quality are your consideration.  Conclusion 1 The software product must be good in quality.2_ The price of the software product must be reasonable. ','Only Conclusion I follows ',' Only Conclusion II follows ',' Both I and II follows ',' Neither I nor II follows ','3','2')");
                stmt.executeUpdate();*/
                stmt=con.prepareStatement("insert into questions values('8','Fullset1','A train overtakes two men walking along a railway track. The first one walks at 2.5 km/hr. The other one walks at 3.2 km/hr. The train needs 10.2 and 10.3 seconds respectively to overtake them. The speed of the train if both the men are walking in the same direction as the train is____________ km/hr. ','','','','','74.6','2')");
                stmt.executeUpdate();
                stmt=con.prepareStatement("insert into questions values('9','Fullset1','A milk vendor has 2 cans of milk. The first contains 25% water and the rest milk. The second contains 50% water. How much milk should he mix from each of the containers so as to get 12 litres of milk such that the ratio of water to milk is 3:5? ','5 litres 7 litres','6 litres  6 litres','4 litres  8 litres','8 litres  4 litres','2','2')");
                stmt.executeUpdate();
                stmt=con.prepareStatement("insert into questions values('10','Fullset1','Two ships are sailing in the ocean on the two sides of a light house. The angle of elevation of the top of light house is obseved from the ships are 45° & 60° respectively. If the light house is 100m high, the distance between the two ships is ____ metres. ','','','','','157.7','2')");
                stmt.executeUpdate();
                stmt=con.prepareStatement("insert into questions values('11','Fullset1','Find the coefficient of x200 in the generating function G (x) = 1/1 2x','2^200','-2^200','-2^201',' None of these ','1','2')");
                stmt.executeUpdate();
                stmt=con.prepareStatement("insert into questions values('12','Fullset1','Let A, B be two matrices such that A.B=A and B.A=B. Then which of the following   statements is/are TRUE? (I) A.A =A (II) A.A .B =A.A  (III) B.B .A =B.B   (IV) A.B.A =A','','','','','4','2')");
                stmt.executeUpdate();
                stmt=con.prepareStatement("insert into questions values('13','Fullset1','In how many ways can letters of the word ATTITUDE be rearranged such that no two be T’s are adjacent to each other? ','','','','','2400','2')");
                stmt.executeUpdate();
                out.write("Done");
        }catch(Exception ee)
            {
                System.out.println(ee);
            }
    }
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
