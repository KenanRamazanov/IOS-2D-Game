//
//  SonucVC.swift
//  Sprite Kit
//
//  Created by Kanan  on 07.12.24.
//

import UIKit

class SonucVC: UIViewController {

    @IBOutlet weak var yuksekSkorLabel: UILabel!
    @IBOutlet weak var anlikSonucLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let d = UserDefaults.standard
        
     let anlikSkor = d.integer(forKey: "anlikSkor")
    let yuksekSkor = d.integer(forKey: "yuksekSkor")
        
        anlikSonucLabel.text = "\(anlikSkor)"
        
        if anlikSkor > yuksekSkor {
            d.set(anlikSkor, forKey: "yuksekSkor")
            
            yuksekSkorLabel.text = "\(anlikSkor)"
        } else {
            yuksekSkorLabel.text = "\(yuksekSkor)"
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
  
    @IBAction func tekrarOyna(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
}
