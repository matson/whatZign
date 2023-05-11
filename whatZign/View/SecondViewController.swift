//
//  SecondViewController.swift
//  whatZign
//
//  Created by Tracy Adams on 5/11/23.
//


import UIKit

class SecondViewController : UIViewController {
    
    //create another screen with code
    //for learning purposes: 
    
    var zodiacSign = "string"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        
        let label = UILabel()
        label.text = zodiacSign
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        //need a view.
        view.addSubview(label)
    }
    
    
    
    
}
