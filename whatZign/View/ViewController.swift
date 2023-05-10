//
//  ViewController.swift
//  whatZign
//
//  Created by Tracy Adams on 5/9/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var signLabel: UILabel!
    
    @IBOutlet weak var calculateButton: UIButton!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    

    @IBAction func datePicked(_ sender: UIDatePicker) {
        
        //can also do dateFormatter.
        let components = datePicker.calendar.dateComponents([.month, .day], from: datePicker.date)
        let month = components.month
        let day = components.day
        print(day!)
        print(month!)
        

        
    }
    
    
    
    //This will lead to the other screen.
    @IBAction func calculatePressed(_ sender: UIButton) {
        print("calculate!")
    }
    
}

