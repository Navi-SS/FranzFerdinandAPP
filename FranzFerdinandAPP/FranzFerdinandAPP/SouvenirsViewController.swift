//
//  SouvenirsViewController.swift
//  FranzFerdinandAPP
//
//  Created by Feric on 18/03/21.
//

import UIKit

class SouvenirsViewController: UIViewController {

    var total = 0
    var promoText=""
    var prodOneQuantity = ""
    var prodTwoQuantity = ""
    var prodThreeQuantity = ""
    var prodFourQuantity = ""
    var costOne = ""
    var costTwo = ""
    var costThree = ""
    var costFour = ""
    
    @IBOutlet weak var quantityOne: UILabel!
    @IBOutlet weak var quantityTwo: UILabel!
    @IBOutlet weak var quantityThree: UILabel!
    @IBOutlet weak var quantityFour: UILabel!
    
    @IBOutlet weak var priceOne: UILabel!
    @IBOutlet weak var priceTwo: UILabel!
    @IBOutlet weak var priceThree: UILabel!
    @IBOutlet weak var priceFour: UILabel!
    
    @IBOutlet weak var promoCodeTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "comprarSegue"{
            let vc = segue.destination as! SouvenirsEndViewController
            vc.totalPrice = total
            vc.promoCodeText = promoText
        }
    }
    
    @IBAction func quantityOneStepper(_ sender: UIStepper) {
        quantityOne.text=String(sender.value)
    }
    @IBAction func quantityTwoStepper(_ sender: UIStepper) {
        quantityTwo.text=String(sender.value)
    }
    @IBAction func quantityThreeStepper(_ sender: UIStepper) {
        quantityThree.text=String(sender.value)
    }
    @IBAction func quantityFourStepper(_ sender: UIStepper) {
        quantityFour.text=String(sender.value)
    }
    @IBAction func buyButton(_ sender: UIButton) {
        
        prodOneQuantity=quantityOne.text!
        prodTwoQuantity=quantityTwo.text!
        prodThreeQuantity=quantityThree.text!
        prodFourQuantity=quantityFour.text!
        
        costOne=priceOne.text!
        costTwo=priceTwo.text!
        costThree=priceThree.text!
        costFour=priceFour.text!
        
        total = (Int(prodOneQuantity.components(separatedBy: ".")[0])! * Int(costOne.components(separatedBy: " ")[1])!) + (Int(prodTwoQuantity.components(separatedBy: ".")[0])! * Int(costTwo.components(separatedBy: " ")[1])!) +
            (Int(prodThreeQuantity.components(separatedBy: ".")[0])! * Int(costThree.components(separatedBy: " ")[1])!) +
            (Int(prodFourQuantity.components(separatedBy: ".")[0])! * Int(costFour.components(separatedBy: " ")[1])!)
        
        if promoCodeTextField.text == "FF2021MX"{
            total = total/2
            promoText = "Codigo promocional valido por un 50% de descuento"
        } else if promoCodeTextField.text == "" && total != 0{
            promoText = ""
        } else if total == 0{
            let alert = UIAlertController(title: "Error", message: "El carrito de compras esta vacio", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        } else {
            let alert = UIAlertController(title: "Error", message: "Codigo promocional incorrecto", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
        
        performSegue(withIdentifier: "comprarSegue", sender: nil)
    }
    
}
