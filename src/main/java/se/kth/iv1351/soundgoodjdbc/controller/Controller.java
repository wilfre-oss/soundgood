package se.kth.iv1351.soundgoodjdbc.controller;

import se.kth.iv1351.soundgoodjdbc.integration.SoundgoodDAO;

public class Controller {
    private final SoundgoodDAO soundgoodDAO;

    public Controller(){
        soundgoodDAO = new SoundgoodDAO();
    }

    public void testConnection(){

    }
}
