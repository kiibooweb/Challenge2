//
//  ViewController.swift
//  Challenge2
//
//  Created by きー坊 on 2021/10/17.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var calcTextField1: UITextField!
    @IBOutlet weak var calcTextField2: UITextField!
    
    @IBOutlet weak var calcMarkControl: UISegmentedControl!
    
    @IBOutlet weak var resultNumberTextLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        calcTextField1.keyboardType = UIKeyboardType.numberPad
        calcTextField2.keyboardType = UIKeyboardType.numberPad
    }
    
    @IBAction func calcButtonAction(_ sender: Any) {
        let num1 = Double(calcTextField1.text!) ?? 0.0
        let num2 = Double(calcTextField2.text!) ?? 0.0
        var resultNumber: Double = 0.0
        
        switch calcMarkControl.selectedSegmentIndex {
        case 0:
            resultNumber = num1 + num2
        case 1:
            resultNumber = num1 - num2
        case 2:
            resultNumber = num1 * num2
        case 3:
            if num1 == 0 || num2 == 0 {
                resultNumberTextLabel.text = "割る数には0以外の数値を入力してね！"
                return
            }
            else {
                resultNumber = num1 / num2
            }
        default:
            return
        }
        resultNumberTextLabel.text! = String(resultNumber)
    }
}

