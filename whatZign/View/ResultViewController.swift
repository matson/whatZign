//
//  ResultViewController.swift
//  whatZign
//
//  Created by Tracy Adams on 5/11/23.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
   
    @IBOutlet weak var resultText: UILabel!
    
    @IBOutlet weak var zodiacImage: UIImageView!
    
    @IBOutlet weak var recalculateButton: UIButton!{
            didSet{
                recalculateButton.backgroundColor = .clear
                recalculateButton.layer.cornerRadius = 10
                recalculateButton.layer.borderWidth = 2
                recalculateButton.layer.borderColor = UIColor.white.cgColor
            }
    }
    
   
    var zodiacSign: String?
    var signImage: UIImage?
    var results: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.text = zodiacSign
        zodiacImage.image = signImage
        resultText.text = results
        

        // Do any additional setup after loading the view.
    }

    @IBAction func recalculateButton(_ sender: UIButton) {
        //go back to other screen
        self.dismiss(animated: true, completion: nil)
        
        
        
    }
}
