//
//  TriviaCorrectaViewController.swift
//  FranzFerdinandAPP
//
//  Created by Feric on 18/03/21.
//

import UIKit

class TriviaCorrectaViewController: UIViewController {

    @IBOutlet weak var promoCodeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func promoCodeButton(_ sender: UIButton) {
        
        promoCodeLabel.text = "FF2021MX"
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
