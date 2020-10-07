//
//  ViewController.swift
//  AppDojoSalonTask3
//
//  Created by 守屋譲司 on 2020/10/07.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet private weak var firstNumberTextField: UITextField!
    @IBOutlet private weak var secondNumberTextField: UITextField!
    @IBOutlet private weak var firstNumberSwitch: UISwitch!
    @IBOutlet private weak var secondNumberSwitch: UISwitch!
    @IBOutlet private weak var firstNumberLabel: UILabel!
    @IBOutlet private weak var secondNumberLabel: UILabel!
    @IBOutlet private weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstNumberTextField.keyboardType = UIKeyboardType.numberPad
        secondNumberTextField.keyboardType = UIKeyboardType.numberPad
        
        firstNumberTextField.delegate = self
        secondNumberTextField.delegate = self
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
            if string != "0" && string != "1" && string != "2" && string != "3" && string != "4" && string != "5" && string != "6" && string != "7" && string != "8" && string != "9" {
                return false
            }
            return true
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        
        var number1 = Int(firstNumberTextField.text!)
        var number2 = Int(secondNumberTextField.text!)
        
        guard firstNumberTextField.text != "", secondNumberTextField.text != "" else {

            resultLabel.text = "数値を入力してください"
            
            return
        }
        
        if firstNumberSwitch.isOn {
            firstNumberLabel.text = "-\(number1!)"
            number1 = Int(firstNumberTextField.text!)! * -1
        } else {
            firstNumberLabel.text = "\(number1!)"
        }
        
        if secondNumberSwitch.isOn {
            secondNumberLabel.text = "-\(number2!)"
            number2 = Int(secondNumberTextField.text!)! * -1
        } else {
            firstNumberLabel.text = "\(number2!)"
        }
        
        resultLabel.text = "\(number1! + number2!)"
        
        
    }
    
}

