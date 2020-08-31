package Jdbctest;

import java.sql.*;

public class ZhangYanXia_homework {
    public static void main(String[] args) {
        //加载驱动
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        //建立连接
        Connection coon = null;
        try {
            coon = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping?useUnicode=true&characterEncoding=UTF-8", "root", "123456");
            System.out.println("连接成功");
            //创建statement对象，执行sql语句
            String sql1 = "insert into product values(null,'包包','C:\\Users\\26619\\Desktop\\product\\bao1','cheap',99,235)";
            String sql2 = "insert into product values(null,'眼镜','C:\\Users\\26619\\Desktop\\product\\bao2','cheap',49,187)";
            String sql3 = "insert into product values(null,'bag4','C:\\Users\\26619\\Desktop\\product\\bao3','cheap',88,100)";
            String sql4 = "insert into product values(null,'glass1','C:\\Users\\26619\\Desktop\\product\\bei1','cheap',28,35)";
            String sql5 = "insert into product values(null,'glass2','C:\\Users\\26619\\Desktop\\product\\bei1','cheap',36,78)";

            PreparedStatement pre1 = coon.prepareStatement(sql1);
            PreparedStatement pre2 = coon.prepareStatement(sql2);
            PreparedStatement pre3 = coon.prepareStatement(sql3);
            PreparedStatement pre4 = coon.prepareStatement(sql4);
            PreparedStatement pre5 = coon.prepareStatement(sql5);

            int row1 = pre1.executeUpdate();
            int row2 = pre2.executeUpdate();
            int row3 = pre3.executeUpdate();
            int row4 = pre4.executeUpdate();
            int row5 = pre5.executeUpdate();

            int[] count = new int[]{row1, row2, row3, row4, row5};

            for (int b : count) {
                if (b > 0) {
                    System.out.println("执行成功");
                } else {
                    System.out.println("操作无效");
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}





