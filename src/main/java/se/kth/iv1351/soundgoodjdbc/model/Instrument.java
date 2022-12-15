package se.kth.iv1351.soundgoodjdbc.model;

public class Instrument {
    private int id;
    private String type;
    private String brand;
    private String model;
    private double rentalFee;

    public Instrument(int id, String type, String brand, String model, double rentalFee) {
        this.id = id;
        this.type = type;
        this.brand = brand;
        this.model = model;
        this.rentalFee = rentalFee;
    }



    public int getId() {
        return id;
    }

    public String getType() {
        return type;
    }

    public String getBrand() {
        return brand;
    }

    public String getModel() {
        return model;
    }

    public double getRentalFee() {
        return rentalFee;
    }
}

