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
    	int count=0;
    	Statement stmt = ct.createStatement();
    	String sql = "INSERT INTO MemberInfoManager VALUES('"+usernameReal+"','"+passwordReal+"')";
    	// 执行数据库插入语句
    	stmt = ct.createStatement();
    	count = stmt.executeUpdate(sql);  //返回值是本次操作影响的记录数
    	if(count > 0){
    		request.getRequestDispatcher("login.jsp").forward(request, response);
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