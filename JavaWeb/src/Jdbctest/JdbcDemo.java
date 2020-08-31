package Jdbctest;

import java.sql.*;

public class JdbcDemo {

    public static void main(String[] args) {
        //com.mysql.jdbc.Driver
        //加载驱动
//        try {
//            Class.forName("com.mysql.jdbc.Driver");
//        } catch (ClassNotFoundException e) {
//            e.printStackTrace();
//        }
        //创建连接
//        try {
//            Connection coon=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping","root","123456");
//            System.out.println("连接成功");
//            //创建Statement对象，执行sql语句
//            Statement stml=coon.createStatement();
//            String sql="select * from users";
//
//            PreparedStatement ps=coon.prepareStatement(sql);
//            //接收查询结果
//            ResultSet rs=ps.executeQuery();
//            //循环遍历
//            while (rs.next()){
//                System.out.println(rs.getInt("userid")+" "+rs.getString("username")+" "+rs.getInt(6));
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }

        //----------------------------------------------------
        //加载驱动，
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        //获取连接
        try {
            Connection coon=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping","root","123456");

            //编写sqlyuju
            String sql="insert into users values(null,'wangwu','456','123456789','shanxi',500000)";
//            String sql = "insert into product values(null,'眼镜','C:\\Users\\26619\\Desktop\\product\\bei1','便宜',36,78)";
            //获取执行对象
            PreparedStatement ps=coon.prepareStatement(sql);
            //执行sql语句(执行增删改操作，返回受影响的行)
            int row=ps.executeUpdate();
            //处理结果
            if(row>0){
                System.out.println("执行成功");
            }else{
                System.out.println("操作无效");
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

}
