package com.studybuddie.tests;

import com.studybuddie.config.DataConfig;
import com.studybuddie.config.RootConfig;
import com.studybuddie.config.WebConfig;
import com.studybuddie.data.UserCredential;
import com.studybuddie.data.UserCredentialRepo;
import org.junit.After;
import org.junit.AfterClass;
import static org.junit.Assert.assertNotNull;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 *
 * @author Nikesh
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {RootConfig.class})
public class UserCredentialTest {
    
    @Autowired
    private UserCredential jdbc;

    // TODO add test methods here.
    // The methods must be annotated with annotation @Test. For example:
    //
    @Test
    public void hello() {
        assertNotNull(jdbc);
        assertNotNull(jdbc.getListOfFieldOfStudy());
        System.out.println("List Size: " + jdbc.getListOfFieldOfStudy().size());
    }
}
