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
        
        let components = datePicker.calendar.dateComponents([.month, .day], from: datePicker.date)
        let month = components.month
        let day = components.day
        
        let sign : String
        
//        Capricorn - December 22 to about January 19 12, 1 22-31st
//        Aquarius - January 20 to about February 18 1,2
//        Pisces - February 19 to about March 20 2,3
//        Aries - March 21 to about April 19 3,4
//        Taurus - April 20 to about May 20 4,5
//        Gemini - May 21 to about June 21 5,6
//        Cancer - June 22 to about July 22 6,7
//        Leo - July 23 to about August 22 7,6
//        Virgo - August 23 to about September 22 7,8
//        Libra - September 22 to about October 23 8,9
//        Scorpio - October 23-November 21 9,10
//        Sagittarius - November 22 to about December 21. 11,10
        
        //result
        let capRange1 = 22...31
        let capRange2 = 1...19
        let aqRange1 = 20...31
        let aqRange2 = 1...18
        
        //refactor this. 
        if(month == 12 && capRange1.contains(day!) ){
            sign = "Capricorn"
            print(sign)
        }
        else if(month == 1 && capRange2.contains(day!)){
            sign = "Capricorn"
            print(sign)
        }else if(month == 1 && aqRange1.contains(day!)){
            sign = "Aquarius"
            print(sign)
        }else if(month == 2 && aqRange2.contains(day!)){
            sign = "Aquarius"
            print(sign)
        }
        
        
 
        
        
        
        
       
       
        
    }
    
}

