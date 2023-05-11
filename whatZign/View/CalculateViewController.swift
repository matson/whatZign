//
//  ViewController.swift
//  whatZign
//
//  Created by Tracy Adams on 5/9/23.
//

import UIKit

class CalculateViewController: UIViewController {
    
    
    @IBOutlet weak var signLabel: UILabel!
    
    @IBOutlet weak var calculateButton: UIButton!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    var zodiacObj = SignBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func datePicked(_ sender: UIDatePicker) {

    }
    
    //This will lead to the other screen.
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        //This will extract the data needed from the date picker:
        let components = datePicker.calendar.dateComponents([.month, .day], from: datePicker.date)
        let month = components.month
        let day = components.day
        
        zodiacObj.calculateSign(month: month, day: day)
       
        
        //show second view controller:
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    //for multiple screens:
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController //where it gets value
            destinationVC.zodiacSign = zodiacObj.getSign()
        }
    }
    
}

