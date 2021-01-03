//
//  ViewController.swift
//  tip
//
//  Created by Rebecca Shillingford on 12/14/20.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet var Background: UIView!
    
    @IBOutlet weak var tipControl: UISegmentedControl!

    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var tipPercentage: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Sets the title in the Navigation Bar
        self.title = "Tip Calculator"
        
        Background.backgroundColor = UIColor.systemIndigo
        
    }
    
    @IBAction func onTap(_ sender: Any) {
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //Get initial bill amount and calculate tips
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15, 0.2, 0.22]
        
        //Calculate tip and total
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipPercentage.text = String(format: "$%.2f", tip)
        print(tipPercentage.text!)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

