package assembler.ziegelmueller;

import java.io.*;
import java.nio.file.Files;
import java.nio.file.Paths;
import javax.swing.*;

public class checkPt1Ziegelmueller {

    static String fName = "";
    static String fPath = "";

    public static void main(String[] args) throws FileNotFoundException, IOException, NullPointerException {
        try {
            String content = new String(Files.readAllBytes(Paths.get(importFile())));
            Files.write(Paths.get(fPath + ".hack"), content.getBytes());
            println("wrote to " + fPath + " with name " + fName);
        } catch (NullPointerException e) {
            println("no file chosen");
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
