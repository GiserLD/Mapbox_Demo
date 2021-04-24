<%@ page language="java" contentType="text/html; charset=utf-8"   pageEncoding="utf-8"%>
<%@ page  import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<%
    String usernameReal = request.getParameter("username");
	String passwordReal = request.getParameter("password");

    PreparedStatement ps = null;
    Connection ct = null;
    ResultSet rs = null;
    String url = "jdbc:sqlserver://localhost:1433;databaseName=SLD";
    String user="sld";  //超级管理员
    String password="416";  //密码
    try {
        //1.加载驱动
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        System.out.println("加载驱动成功！");
    }catch(Exception e) {
        e.printStackTrace();
        System.out.println("加载驱动失败！");
    }
    try {  
        //2.连接
        ct=DriverManager.getConnection( url,user,password);
        System.out.println("连接数据库成功！");
    }catch(Exception e) {
        e.printStackTrace();
        System.out.println("连接数据库失败！");
    }
    
    
    out.println("select count(*) from MemberInfoManager"+"<br>");    
    /*尝试查询数据库*/
    try{
    	Statement stmt = ct.createStatement();
    	String sql = "select * from MemberInfoManager where UserName = '"+usernameReal+"' and UserPwd = '"+passwordReal+"' ";
    	//String sql = "select * from MemberInfoManager where UserName = 'admin' and UserPwd = 'admin' ";
    	// 执行数据库查询语句
        rs = stmt.executeQuery(sql);
        int count=-1;    //用来判断当前数据是否在数据库中
        //处理结果
		while (rs.next()) {
			count = 1;
			System.out.println("数dd失败");
		}
	    if (count > 0) {
	    	request.getRequestDispatcher("广西地域分析.jsp").forward(request, response);
	    	System.out.println("数dd成功");
		}else {
			request.getRequestDispatcher("error.jsp").forward(request, response);
			System.out.println("数dd失败");
		}
        if (rs != null) {
            rs.close();
            rs = null;
        }
        if (stmt != null) {
            stmt.close();
            stmt = null;
        }
        if (ct != null) {
            ct.close();
            ct = null;
        }
    }
    catch (SQLException e) {
        e.printStackTrace();
        System.out.println("数据库连接失败");
    }
       
    
     %>
</body>
</html>