package assembler.ziegelmueller;

import java.util.*;
import java.io.*;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.*;

public class Assembler {

    public static String content = "";
    public static String contentOUT = "";
    
    static String fName = "";
    static String fPath = "";

    public void main(String[] args) {
        readContent();
        new BufferedReader(new StringReader(content))
            .lines().forEach(this::parseLine);
        }
    
    
    private void parseLine(String line) {
        if(line.contains("//")){
            if(!line.startsWith("//")){
                line = line.substring(0, line.indexOf("//"));
            } else {
                
            }
        } else {
            //todo: process line data for labels
        }
    }

    public static void readContent() {
        try {
            //import file
            content = new String(Files.readAllBytes(Paths.get(importFile())));
            //name modify
            fName = fName.substring(0, fName.lastIndexOf(".")) + "\"";
            fPath = fPath.substring(0, fPath.lastIndexOf("."));
            //print
            println("read from " + fPath + " with name " + fName + ".asm");
        } catch (NullPointerException e) {
            println("no file chosen");
        } catch (IOException ex) {
            println("IO isn't working");
        }
    }
    
    public static void writeContent(){
        try {
            //write
            Files.write(Paths.get(fPath + ".hack"), contentOUT.getBytes());
            //print
            println("wrote to " + fPath + " with name " + fName + ".hack");
        } catch (IOException ex) {
            println("IO isn't working");
        }
    }

    public static String importFile() throws FileNotFoundException, IOException, NullPointerException {
        final JFileChooser jfc = new JFileChooser();
        jfc.showOpenDialog(null);
        File f = jfc.getSelectedFile();
        fName = f.getName();
        fPath = f.getPath();
        return f.getAbsolutePath();
    }

    public static void println(String s) {
        System.out.println(s);
    }

}
