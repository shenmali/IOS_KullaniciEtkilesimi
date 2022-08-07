//
//  ViewController.swift
//  KullaniciEtkilesimi
//
//  Created by MaSheN on 7.08.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ButtonAlert(_ sender: Any) {
        let allertController = UIAlertController(title: "Baslik", message: "Mesaj", preferredStyle: .alert)
        
        let iptalAction = UIAlertAction(title: "iptal", style: .cancel){
            action in print("Iptal secildi")
        }
        
        allertController.addAction(iptalAction)
        
        let tamamAction = UIAlertAction(title: "TAMAM", style: .destructive){
            action in print("Tamam secildi")
        }
        
        allertController.addAction(tamamAction)
        self.present(allertController, animated: true)
        
    }
    
    @IBAction func ButtonActionSheet(_ sender: Any) {
        let allertController = UIAlertController(title: "Baslik", message: "Mesaj", preferredStyle: .actionSheet)
        let iptalAction = UIAlertAction(title: "iptal", style: .cancel){
            action in print("Iptal secildi")
        }
        
        allertController.addAction(iptalAction)
        
        
        let tamamAction = UIAlertAction(title: "TAMAM", style: .destructive){
            action in print("Tamam secildi")
        }
        
        allertController.addAction(tamamAction)
        self.present(allertController, animated: true)

        
        self.present(allertController, animated: true)
    }
    @IBAction func ButtonOzelAlert(_ sender: Any) {
        
        let allertController = UIAlertController(title: "Baslik", message: "Mesaj", preferredStyle: .alert)
        
        allertController.addTextField { textField in
            
            textField.placeholder = "Veri Giriniz";
            textField.keyboardType = .numberPad;
            textField.isSecureTextEntry = true
        }
        
        let iptalAction = UIAlertAction(title: "KAYDET", style: .cancel){
            action in
            let textField = allertController.textFields![0] as UITextField
            if let alinanVeri = textField.text {
                print("veri : \(alinanVeri)")
            }
            
            print("Iptal secildi")
        }
        
        allertController.addAction(iptalAction)
        

        self.present(allertController, animated: true)
    }
}

