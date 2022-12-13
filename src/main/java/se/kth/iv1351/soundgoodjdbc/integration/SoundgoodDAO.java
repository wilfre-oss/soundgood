package se.kth.iv1351.soundgoodjdbc.integration;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class SoundgoodDAO {
    private Connection connection;

    public SoundgoodDAO(){
       try{
           connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/soundgood",
                   "postgres", "Vattenskoter9");
           System.out.println("Connection successful");
       } catch (SQLException sqle) {
           sqle.printStackTrace();
       }
    }
}
