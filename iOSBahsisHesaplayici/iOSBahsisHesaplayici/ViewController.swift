//
//  ViewController.swift
//  iOSBahsisHesaplayici
//
//  Created by Mehmetcan Yavrucuk on 8.02.2017.
//  Copyright © 2017 Mehmetcan Yavrucuk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var txtYemekMaliyeti: UITextField!
    
    @IBOutlet weak var txtVerilecekBahsis: UITextField!
    
    @IBOutlet weak var lblBahsis: UILabel!
    @IBOutlet weak var lblBahsisliToplam: UILabel!
    
    var yemekMaliyeti   = ""
    var verilecekBahsis = ""
    
    var bahsis          : Float = 0.0
    var bahsisliToplam  : Float = 0.0
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
     
    }

    override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
}


    @IBAction func btnHesaplaACTION(_ sender: UIButton) {

        //self.yemekMaliyeti.append("c")
        self.view.endEditing(true)
        // textfield lara degerler yazildiktan sonra ekranin
        // herhangi bir yerine tikladiktan sonra
        // klavye kapaniyor
        
        yemekMaliyeti           = txtYemekMaliyeti.text!
        verilecekBahsis         = txtVerilecekBahsis.text!
        
        let fYemekMaliyeti      = Float(yemekMaliyeti)
        let fVerilecekBahsis    = Float(verilecekBahsis)
        
        bahsis = fYemekMaliyeti! * (fVerilecekBahsis! / 100) // verilecek bahşişin %si hesaplanacak
       // bahsisliToplam = fYemekMaliyeti! + bahsis // toplam maliyet hesaplandı
        
        bahsisliToplam = Float(yemekMaliyeti)! + bahsis
        
        lblBahsis.text          = "Bahşiş: \(bahsis)0₺"
        lblBahsisliToplam.text  = "Toplam:\(bahsisliToplam)0₺"
        
    }
    
    @IBAction func btnTemizleACTION(_ sender: UIButton) {
          self.view.endEditing(true)
 
        lblBahsisliToplam.text  = "Toplam: 0.00 ₺"
        lblBahsis.text          = "Bahşiş: 0.00 ₺"
        
        txtYemekMaliyeti.text   = ""
        txtVerilecekBahsis.text = ""
    }

}

