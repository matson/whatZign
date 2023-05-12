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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func recalculateButton(_ sender: UIButton) {
        //go back to other screen
        self.dismiss(animated: true, completion: nil)
        
        
        
    }
}
