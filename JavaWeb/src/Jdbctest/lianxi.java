package Jdbctest;

import java.sql.*;

public class lianxi {
    public static void main(String[] args) {
        //加载数据
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        //建立连接

        //查询
//        try {
//            Connection coon=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping","root","123456");
//            System.out.println("连接成功");
//            //编写语句
//            String sql="select * from users";
//            //获取执行的对象
//            PreparedStatement ps=coon.prepareStatement(sql);
//            //执行语句
//            ResultSet rs=ps.executeQuery();
////            ResultSet rs=ps.executeQuery();
//            //遍历
//           while(rs.next()){
//               System.out.println(rs.getInt("userid")+" "+rs.getString("username")+" "+rs.getString("address"));
//           }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }

        //插入
        //建立连接
        try {
            Connection coon=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping?useUnicode=true&characterEncoding=UTF-8","root","123456");
            System.out.println("建立连接");

//            String sql="INSERT INTO users VALUES(NULL,'datou','785','123456885','广州',100000)";
            String sql="INSERT INTO users VALUES(NULL,?,?,?,'广州',100000)";
            PreparedStatement ps=coon.prepareStatement(sql);
            ps.setString(1,"大头");
            ps.setString(2,"250");
            ps.setString(3,"1526254222");
            int a=ps.executeUpdate();
            if(a>0){
                System.out.println("执行成功");
            }else{
                System.out.println("执行失败");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
