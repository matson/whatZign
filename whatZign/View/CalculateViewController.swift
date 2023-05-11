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
    
    var sign = "string"
    

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
        
        //This will extract the data needed from the date picker:
        let components = datePicker.calendar.dateComponents([.month, .day], from: datePicker.date)
        let month = components.month
        let day = components.day
        
        //Date Ranges:
        let capRange1 = 22...31
        let capRange2 = 1...19
        let aqRange1 = 20...31
        let aqRange2 = 1...18
        let pisRange1 = 19...29
        let pisRange2 = 1...20
        let ariRange1 = 21...31
        let ariRange2 = 1...19
        let tarRange1 = 20...30
        let tarRange2 = 1...20
        let gemRange1 = 21...31
        let gemRange2 = 1...21
        let canRange1 = 22...30
        let canRange2 = 1...22
        let leoRange1 = 23...31
        let leoRange2 = 1...22
        let virRange1 = 23...31
        let virRange2 = 1...22
        let libRange1 = 23...30
        let libRange2 = 1...23
        let scrRange1 = 24...31
        let scrRange2 = 1...21
        //do not need the last ranges.
        
        
        //refactor this if possible...
        //Logic to determine the signs associated with the dates.
        if(month == 12 && capRange1.contains(day!) || month == 1 && capRange2.contains(day!) ){
            sign = "Capricorn"
            print(sign)
        }
        else if(month == 1 && aqRange1.contains(day!) || month == 2 && aqRange2.contains(day!) ){
            sign = "Aquarius"
            print(sign)
        }else if(month == 2 && pisRange1.contains(day!) || month == 3 && pisRange2.contains(day!)){
            sign = "Pisces"
            print(sign)
        }else if(month == 3 && ariRange1.contains(day!) || month == 4 && ariRange2.contains(day!)){
            sign = "Aries"
            print(sign)
        }else if(month == 4 && tarRange1.contains(day!) || month == 5 && tarRange2.contains(day!)){
            sign = "Taurus"
            print(sign)
        }else if(month == 5 && gemRange1.contains(day!) || month == 6 && gemRange2.contains(day!)){
            sign = "Gemini"
            print(sign)
        }else if(month == 6 && canRange1.contains(day!) || month == 7 && canRange2.contains(day!)){
            sign = "Cancer"
            print(sign)
        }else if(month == 7 && leoRange1.contains(day!) || month == 8 && leoRange2.contains(day!)){
            sign = "Leo"
            print(sign)
        }else if(month == 8 && virRange1.contains(day!) || month == 9 && virRange2.contains(day!)){
            sign = "Virgo"
            print(sign)
        }else if(month == 9 && libRange1.contains(day!) || month == 10 && libRange2.contains(day!)){
            sign = "Libra"
            print(sign)
        }else if(month == 10 && scrRange1.contains(day!) || month == 11 && scrRange2.contains(day!)){
            sign = "Scorpio"
            print(sign)
        }else{
            
            sign = "Sagittarius"
            print(sign)
        }
        
        
//        func calculateSign(month: Int, day: Int) -> String{
//
//            return sign
//        }
        
        //show second view controller:
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    //for multiple screens:
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.zodiacSign = sign
        }
    }
    
}

