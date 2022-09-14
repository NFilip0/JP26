/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Project/Maven2/JavaApp/src/main/java/${packagePath}/${mainClassName}.java to edit this template
 */

package edunova;

import edunova.controller.ObradaSmjer;
import edunova.model.Smjer;
import edunova.util.EdunovaException;
import edunova.util.HibernateUtil;
import edunova.util.PocetniInsert;
import java.math.BigDecimal;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author dell
 */
public class Start {

    public Start() {
       
//        PocetniInsert.izvedi();
//        for(Smjer s : new ObradaSmjer().read()){
//            System.out.println(s.getNaziv());         
//        }

//        ObradaSmjer os = new ObradaSmjer();
//        Smjer s = new Smjer();
//        s.setNaziv("Prvi pomoću kontrolera");
//        s.setCijena(BigDecimal.ONE);
//        os.setEntitet(s);
//        try {
//            os.create();
//        } catch (EdunovaException ex) {
//            System.out.println(ex.getPoruka());
//        }
//        s = new Smjer();
//        s.setNaziv("Prvi pomoću kontrolera");
//        os.setEntitet(s);
//        try {
//            os.create();
//        } catch (EdunovaException ex) {
//            System.out.println(ex.getPoruka());
//        }
        
        new PocetniInsert();
      
    }
    
    

    public static void main(String[] args) {
       new Start();
    }
}
