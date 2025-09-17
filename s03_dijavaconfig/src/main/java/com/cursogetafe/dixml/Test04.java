package com.cursogetafe.dixml;

import org.apache.commons.dbcp2.BasicDataSource;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import javax.sql.DataSource;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

public class Test04 {

    public static void main(String[] args) throws IOException, SQLException {

        BeanFactory ctx = new ClassPathXmlApplicationContext("a04_ctx.xml");

        DataSource ds = ctx.getBean("dataSource", DataSource.class);

        Connection con = ds.getConnection();

        PreparedStatement ps = con.prepareStatement("select * from productos");

        ResultSet rs = ps.executeQuery();

        while (rs.next())
            System.out.println(rs.getInt(1) + ": " + rs.getString(2));
    }
}
