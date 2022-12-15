package se.kth.iv1351.soundgoodjdbc.integration;

public class SgException extends Exception{

    public SgException(String message){
        super(message);
    }

    public SgException(String message, Throwable cause){
        super(message, cause);
    }
}
