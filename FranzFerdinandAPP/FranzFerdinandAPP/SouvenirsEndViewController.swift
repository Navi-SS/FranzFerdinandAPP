//
//  SouvenirsEndViewController.swift
//  FranzFerdinandAPP
//
//  Created by Feric on 18/03/21.
//

import UIKit

class SouvenirsEndViewController: UIViewController {

    @IBOutlet weak var promoCodeLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    var promoCodeText: String?
    
    var totalPrice: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        totalLabel.text="$ " + String(totalPrice!) + ".00"
        promoCodeLabel.text = promoCodeText

    }
    

}
