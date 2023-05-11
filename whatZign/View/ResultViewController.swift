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
    
    var zodiacSign: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.text = zodiacSign

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
        
        
    }
}
