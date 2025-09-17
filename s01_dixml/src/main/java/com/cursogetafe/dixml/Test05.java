package com.cursogetafe.dixml;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import javax.sql.DataSource;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Test05 {

    private DataSource dataSource;

    public Test05() {
    }

    public Test05(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    public void consulta() throws SQLException {
        Connection con = dataSource.getConnection();
        PreparedStatement ps = con.prepareStatement("select * from productos");

        ResultSet rs = ps.executeQuery();

        while (rs.next())
            System.out.println(rs.getInt(1) + ": " + rs.getString(2));

        con.close();
    }

    public static void main(String[] args) throws IOException, SQLException {


        BeanFactory ctx = new ClassPathXmlApplicationContext("a05_ctx.xml");

        Test05 test = ctx.getBean(Test05.class);

        test.consulta();
    }
}
