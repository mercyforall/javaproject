<%
    String a=request.getParameter("ans");
    int ans=Integer.parseInt(a);
    int[] uans=(int[])session.getAttribute("UANS");
    int index=Integer.parseInt(session.getAttribute("INDEX")+"");
    uans[index]=ans;
    session.setAttribute("UANS",uans);
%>