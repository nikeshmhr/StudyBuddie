package com.studybuddie.config;

import javax.sql.DataSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcOperations;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

/**
 *
 * @author Nikesh
 */
@Configuration
public class DataConfig {

    @Bean
    public DataSource getDataSource() {
        DriverManagerDataSource source = new DriverManagerDataSource("jdbc:mysql://localhost:3306/study_bud", "root", "");//new SimpleDriverDataSource(d, "jdbc:mysql://localhost:3306/spittr", "root", "");
        source.setDriverClassName("com.mysql.jdbc.Driver");

        return source;
    }

    @Bean
    public JdbcOperations getJdbcTemplate(DataSource source) {
        return new JdbcTemplate(source);
    }

}
