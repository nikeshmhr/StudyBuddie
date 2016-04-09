package com.studybuddie.data;

import com.studybuddie.model.FieldOfStudy;
import com.studybuddie.model.RegisterUserForm;
import java.util.List;

/**
 *
 * @author Nikesh
 */
public interface UserCredential {
    
    int registerUser(RegisterUserForm userForm);
    
    int login(String username, String password);
    
    int logout();
    
    List<FieldOfStudy> getListOfFieldOfStudy();
    
}
