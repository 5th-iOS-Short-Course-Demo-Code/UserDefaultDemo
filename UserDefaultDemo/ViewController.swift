//
//  ViewController.swift
//  UserDefaultDemo
//
//  Created by Chhaileng Peng on 8/18/18.
//  Copyright © 2018 Chhaileng Peng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var `switch`: UISwitch!
    @IBOutlet weak var label: UILabel!
    
    @IBAction func setDarkMode(_ sender: UISwitch) {
        print(sender.isOn)
        
        UserDefaults.standard.set(sender.isOn, forKey: "darkMode")
        if sender.isOn {
            self.view.backgroundColor = UIColor.black
            label.textColor = UIColor.white
        } else {
            self.view.backgroundColor = UIColor.white
            label.textColor = UIColor.black
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let darkMode: Bool = UserDefaults.standard.value(forKey: "darkMode") as? Bool {
            
            print("STATUS", darkMode)
            
            if darkMode {
                self.view.backgroundColor = UIColor.black
                label.textColor = UIColor.white
                `switch`.setOn(true, animated: false)
            } else {
                self.view.backgroundColor = UIColor.white
                label.textColor = UIColor.black
                `switch`.setOn(false, animated: false)
            }
        }
        
    }

}

