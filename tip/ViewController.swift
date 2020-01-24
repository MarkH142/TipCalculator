//
//  ViewController.swift
//  tip
//
//  Created by Mark Hughes on 1/23/20.
//  Copyright © 2020 Mark Hughes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TipControl: UISegmentedControl!
    @IBOutlet weak var BillText: UITextField!
    @IBOutlet weak var TipLabel: UILabel!
    @IBOutlet weak var TotalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Calc(_ sender: Any) {
    
        //get bill amount
        let bill = Double(BillText.text!) ?? 0
        //calc tip and total
        let tipPercentags = [0.15, 0.18,0.2]
        let tip = bill * tipPercentags[TipControl.selectedSegmentIndex]
        let total = bill + tip
        //update tip and total
        TipLabel.text = String(format: "$%.2f", tip)
        TotalLabel.text = String(format: "$%.2f", total)
        
        
        
    }
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
}

