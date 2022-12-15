package se.kth.iv1351.soundgoodjdbc.controller;

import se.kth.iv1351.soundgoodjdbc.integration.SgException;
import se.kth.iv1351.soundgoodjdbc.integration.SoundgoodDAO;
import se.kth.iv1351.soundgoodjdbc.model.Instrument;

import java.util.List;
import java.util.Objects;

public class Controller {
    private final SoundgoodDAO soundgoodDAO;

    public Controller(){
        soundgoodDAO = new SoundgoodDAO();
    }

    public void testConnection(){

    }

    public List<Instrument> listInstruments(String instrumentType){
        List<Instrument> instruments;
        if(Objects.equals(instrumentType, "")){
            instruments = soundgoodDAO.findAllInstruments();
        }
        else {
            instruments = soundgoodDAO.findInstruments(instrumentType);
        }
        return instruments;
    }

    public String newRental(String studentId, String instrumentId) throws SgException {
        int studentRentals = soundgoodDAO.getStudentRentals(Integer.parseInt(studentId));
        if(studentRentals >= 2){
            return "Student have too many active rentals";
        }

        List<Instrument> instruments = soundgoodDAO.findAllInstruments();

        try{
            for(Instrument i : instruments){
                if(i.getId() == Integer.parseInt(instrumentId)){
                    soundgoodDAO.createRental(Integer.parseInt(studentId), Integer.parseInt(instrumentId));
                    return "Rental successfully added";
                }
            }
        } catch (SgException e) {
            throw new SgException(e.getMessage(),e);
        }
        return "Instrument already rented";
    }

    public void terminateRental(String rental){
        try{
            soundgoodDAO.terminateRental(Integer.parseInt(rental));
        } catch (SgException e) {
            e.printStackTrace();
        }
    }
}
