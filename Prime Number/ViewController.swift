//
//  ViewController.swift
//  Prime Number
//
//  Created by Максим Фадеев on 30.11.15.
//  Copyright © 2015 Максим Фадеев. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNumberTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func checkButton(sender: AnyObject) {
        
        if userNumberTextField.text! != "" && Int(userNumberTextField.text!)! != nil {
        
        let numberToCheck = Int(userNumberTextField.text!)!
        
        var i = 2
        var isPrimeNumber = true
        
        while i < numberToCheck {
            
            if (Double(numberToCheck) % Double(i)) == 0 {
                isPrimeNumber = false
            }
            
            i++
        }
        
        if isPrimeNumber {
            resultLabel.text = "The number \(numberToCheck) is prime!"
        } else {
            resultLabel.text = "The number \(numberToCheck) is not prime!"
        }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

