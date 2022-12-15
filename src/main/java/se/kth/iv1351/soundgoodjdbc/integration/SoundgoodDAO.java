package se.kth.iv1351.soundgoodjdbc.integration;

import se.kth.iv1351.soundgoodjdbc.model.Instrument;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class SoundgoodDAO {
    private Connection connection;

    private PreparedStatement findAvailableInstrumentsStmt;
    private PreparedStatement findAllAvailableInstrumentsStmt;
    private PreparedStatement createRentalStmt;
    private PreparedStatement countStudentRentalsStmt;
    private PreparedStatement terminateRentalStmt;

    public SoundgoodDAO(){
       try{
           connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/soundgood",
                   "postgres", "postgres");

           connection.setAutoCommit(false);
           prepareStatements();
       } catch (SQLException sqle) {
           sqle.printStackTrace();
       }
    }

     public List<Instrument> findInstruments(String instrumentType){
        List<Instrument> instruments =  new ArrayList<>();
        try{
            findAvailableInstrumentsStmt.setString(1, instrumentType);
            ResultSet result = findAvailableInstrumentsStmt.executeQuery();
            while (result.next()){
                instruments.add( new Instrument(
                        result.getInt("id"),
                        result.getString("type"),
                        result.getString("brand"),
                        result.getString("model"),
                        result.getDouble("rental_fee")));
            }
            connection.commit();
        }catch (SQLException sqle){
            sqle.printStackTrace();
        }

        return instruments;
     }

    public List<Instrument> findAllInstruments(){
        List<Instrument> instruments =  new ArrayList<>();
        try{
            ResultSet result = findAllAvailableInstrumentsStmt.executeQuery();
            while (result.next()){
                instruments.add( new Instrument(
                        result.getInt("id"),
                        result.getString("type"),
                        result.getString("brand"),
                        result.getString("model"),
                        result.getDouble("rental_fee")));
            }
            connection.commit();
        }catch (SQLException sqle){
            sqle.printStackTrace();
        }

        return instruments;
    }

    public void createRental(int student, int instrument) throws SgException {

        try {
            createRentalStmt.setInt(1, student);
            createRentalStmt.setInt(2, instrument);
            int updatedRows = createRentalStmt.executeUpdate();
            if(updatedRows != 1){
                handleException("Rental could not be created", null);
            }
            connection.commit();
        } catch (SQLException sqle) {
            handleException("Rental could not be created", sqle);
        }
    }

    public int getStudentRentals(int student) throws SgException {
        int studentRentals = 2;
        try{
            countStudentRentalsStmt.setInt(1, student);
            ResultSet results = countStudentRentalsStmt.executeQuery();
            results.next();
            studentRentals = results.getInt(1);
            connection.commit();
        } catch (SQLException e) {
            handleException("Getting student rentals failed", e);
        }

        return studentRentals;
    }

    public void terminateRental(int rental) throws SgException {

        try {
            terminateRentalStmt.setInt(1, rental);
            int updatedRows = terminateRentalStmt.executeUpdate();
            if(updatedRows != 1){
                handleException("Termination of rental failed", null);
            }
            connection.commit();
        } catch (SQLException e) {
            handleException("Termination of rental failed",e);
        }
    }

     private void prepareStatements() throws SQLException {
        findAvailableInstrumentsStmt = connection.prepareStatement(
                """
                        select * from instrument
                        left join\s
                        (select * from rental
                        where end_time is null)as r \s
                        on r.instrument_id = instrument.id
                        where r.id is null
                        \tand instrument.type = ?"""
        );
         findAllAvailableInstrumentsStmt = connection.prepareStatement(
                 """
                         select * from instrument
                         left join\s
                         (select * from rental
                         where end_time is null)as r \s
                         on r.instrument_id = instrument.id
                         where r.id is null
                         """
         );
         createRentalStmt = connection.prepareStatement(
                 "insert into rental (student_id, instrument_id, start_time) " +
                 "values (?, ?, current_date)"
         );
         countStudentRentalsStmt = connection.prepareStatement(
                 "select count(rental.id) from student " +
                 "left join rental on rental.student_id = student.id " +
                 "where student.id = ? " +
                 "and end_time is null"
         );
         terminateRentalStmt = connection.prepareStatement(
                 "update rental " +
                 "set terminated = true, end_time = current_date " +
                 "where rental.id = ?"
         );
     }

    private void handleException(String failureMsg, Exception cause) throws SgException {
        String completeFailureMsg = failureMsg;
        try {
            connection.rollback();
        } catch (SQLException rollbackExc) {
            completeFailureMsg = completeFailureMsg +
                    ". Also failed to rollback transaction because of: " + rollbackExc.getMessage();
        }

        if (cause != null) {
            throw new SgException(failureMsg, cause);
        } else {
            throw new SgException(failureMsg);
        }
    }
}
