//
//  TriviaViewController.swift
//  FranzFerdinandAPP
//
//  Created by Feric on 17/03/21.
//

import UIKit

var one=0
var two=0
var three=0
var four=0
var five=0

class TriviaViewController: UIViewController {

    @IBOutlet weak var answerOne: UISwitch!
    
    @IBOutlet weak var answerTwo: UISwitch!
    
    @IBOutlet weak var answerThree: UISwitch!
    
    @IBOutlet weak var answerFour: UISwitch!
    
    @IBOutlet weak var answerFive: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func answerButton(_ sender: UIButton) {
        
        if answerOne.isOn{
            one=1
        } else {
            one=0
        }
        if answerTwo.isOn{
            two=0
        } else {
            two=1
        }
        if answerThree.isOn{
            three=0
        } else {
            three=1
        }
        if answerFour.isOn{
            four=0
        } else {
            four=1
        }
        if answerFive.isOn{
            five=1
        } else {
            five=0
        }
        let total=one+two+three+four+five

        if total==5 {
            performSegue(withIdentifier: "triviaCorrectaSegue", sender: nil)
        } else {
            performSegue(withIdentifier: "triviaMalSegue", sender: nil)
        }
    }
    
}
