package se.kth.iv1351.soundgoodjdbc.startup;

import se.kth.iv1351.soundgoodjdbc.controller.*;
import se.kth.iv1351.soundgoodjdbc.view.*;

public class Main {

    public static void main(String[] args){
        new View(new Controller()).handleCmds();
    }
}
