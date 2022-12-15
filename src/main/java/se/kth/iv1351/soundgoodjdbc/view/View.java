package se.kth.iv1351.soundgoodjdbc.view;

import se.kth.iv1351.soundgoodjdbc.controller.Controller;
import se.kth.iv1351.soundgoodjdbc.integration.SgException;
import se.kth.iv1351.soundgoodjdbc.model.Instrument;

import java.util.Scanner;
import java.util.List;

public class View {
    private static final String PROMPT = "> ";
    private final Scanner console = new Scanner(System.in);
    private Controller controller;
    private boolean keepReceivingCmds = false;

    /**
     * Creates a new instance that will use the specified controller for all operations.
     *
     * @param ctrl The controller used by this instance.
     */
    public View(Controller ctrl) {
        this.controller = ctrl;
    }

    /**
     * Stops the commend interpreter.
     */
    public void stop() {
        keepReceivingCmds = false;
    }

    /**
     * Interprets and performs user commands. This method will not return until the
     * UI has been stopped. The UI is stopped either when the user gives the
     * "quit" command, or when the method <code>stop()</code> is called.
     */
    public void handleCmds() {
        keepReceivingCmds = true;
        while (keepReceivingCmds) {
            try {
                CmdLine cmdLine = new CmdLine(readNextLine());
                switch (cmdLine.getCmd()) {
                    case HELP:
                        for (Command command : Command.values()) {
                            if (command == Command.ILLEGAL_COMMAND) {
                                continue;
                            }
                            System.out.println(command.toString().toLowerCase());
                        }
                        break;
                    case QUIT:
                        keepReceivingCmds = false;
                        break;
                    case NEW:
                        try{
                            String rental = controller.newRental(
                                    cmdLine.getParameter(0),
                                    cmdLine.getParameter(1));
                            System.out.println(rental);
                        } catch (SgException e) {
                            e.printStackTrace();
                        }

                        break;
                    case TERMINATE:
                        controller.terminateRental(cmdLine.getParameter(0));
                        break;
                    case LIST:
                        printInstruments(controller.listInstruments(cmdLine.getParameter(0)));
                        break;
                    default:
                        System.out.println("illegal command");
                }
            } catch (Exception e) {
                System.out.println("Operation failed");
                System.out.println(e.getMessage());
                e.printStackTrace();
            }
        }
    }

    private String readNextLine() {
        System.out.print(PROMPT);
        return console.nextLine();
    }

    private void printInstruments(List<Instrument> instruments){
        System.out.print("+-----+");
        System.out.print("-----------+");
        System.out.print("-----------+");
        System.out.println("--------+");
        System.out.printf("%1s%5s%1s", "|", "Id", "|");
        System.out.printf("%11s%1s", "Type", "|");
        System.out.printf("%11s%1s", "Model", "|");
        System.out.printf("%8s%1s\n", "Fee", "|");
        System.out.print("+-----+");
        System.out.print("-----------+");
        System.out.print("-----------+");
        System.out.println("--------+");
        for(Instrument instrument : instruments){
            System.out.printf("%1s%5s%1s", "|", instrument.getId(), "|");
            System.out.printf("%11s%1s", instrument.getType(), "|");
            System.out.printf("%11s%1s", instrument.getModel(), "|");
            System.out.printf("%8s%1s\n", instrument.getRentalFee(), "|");
        }
        System.out.print("+-----+");
        System.out.print("-----------+");
        System.out.print("-----------+");
        System.out.println("--------+");
    }
}
