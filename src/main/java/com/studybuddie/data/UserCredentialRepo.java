package com.studybuddie.data;

import com.studybuddie.model.FieldOfStudy;
import com.studybuddie.model.RegisterUserForm;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcOperations;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Nikesh
 */
@Repository
public class UserCredentialRepo implements UserCredential {

    @Autowired
    private JdbcOperations jdbc;

    @Override
    public int registerUser(RegisterUserForm userForm) {
        return 0;
    }

    @Override
    public int login(String username, String password) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int logout() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<FieldOfStudy> getListOfFieldOfStudy() {
        List<FieldOfStudy> listOfFieldOfStudy = new ArrayList<FieldOfStudy>();

        listOfFieldOfStudy = jdbc.query(
                "SELECT * FROM field_of_study",
                new RowMapper<FieldOfStudy>() {
                    @Override
                    public FieldOfStudy mapRow(ResultSet rs, int rowNum) throws SQLException {
                        return new FieldOfStudy(rs.getInt("field_id"), rs.getString("field_name"));
                    }
                });

        return listOfFieldOfStudy;
    }

}
