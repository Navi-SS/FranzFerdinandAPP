//
//  DiscViewController.swift
//  FranzFerdinandAPP
//
//  Created by Feric on 15/03/21.
//

import UIKit

let ffDiscOne = ["Take me Out","The Dark of the Matinee","This Fire","Michael"]
let ffDiscOneDuration = ["3:57","4:03","4:15","3:21"]
let ffDiscTwo = ["Do You Want To","Walk Away","I'm Your Villian","Outsiders"]
let ffDiscTwoDuration = ["3:35","3:36","4:04","4:03"]
let ffDiscThree = ["No You Girls","Twilight Omens","What She Camr For","Lucid Dreams"]
let ffDiscThreeDuration = ["3:42","2:30","3:34","7:56"]
let ffDiscFour = ["Right Action","Evil Eye","Stand on the horizon","Bullet"]
let ffDiscFourDuration = ["3:02","2:47","4:23","2:43"]
let ffDiscFive = ["Always Ascending","Lazy Boy","Glimpse of Love","Feel the Love Go"]
let ffDiscFiveDuration = ["5:22","3:00","3:12","4:46"]

class DiscViewController: UIViewController{
    
    var disc: String?
    
    var discImagePhoto: String?
    
    @IBOutlet weak var discPhoto: UIImageView!
    
    @IBOutlet weak var discLabel: UILabel!
    
    @IBOutlet weak var songNameOne: UILabel!
    
    @IBOutlet weak var songNameTwo: UILabel!
    
    @IBOutlet weak var songNameThree: UILabel!
    
    @IBOutlet weak var songNameFour: UILabel!
    
    @IBOutlet weak var songDurationOne: UILabel!
    
    @IBOutlet weak var songDurationTwo: UILabel!
    
    @IBOutlet weak var songDurationThree: UILabel!
    
    @IBOutlet weak var songDurationFour: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let discName = disc
        let photoName = discImagePhoto
                
        discLabel.text = discName
        discPhoto.image = UIImage(named: photoName ?? "")
        
        if discLabel.text == "Franz Ferdinand" {
            songNameOne.text = ffDiscOne[0]
            songDurationOne.text = ffDiscOneDuration[0]
            songNameTwo.text = ffDiscOne[1]
            songDurationTwo.text = ffDiscOneDuration[1]
            songNameThree.text = ffDiscOne[2]
            songDurationThree.text = ffDiscOneDuration[2]
            songNameFour.text = ffDiscOne[3]
            songDurationFour.text = ffDiscOneDuration[3]
        } else if discLabel.text == "You Could Have It So Much Better" {
            songNameOne.text = ffDiscTwo[0]
            songDurationOne.text = ffDiscTwoDuration[0]
            songNameTwo.text = ffDiscTwo[1]
            songDurationTwo.text = ffDiscTwoDuration[1]
            songNameThree.text = ffDiscTwo[2]
            songDurationThree.text = ffDiscTwoDuration[2]
            songNameFour.text = ffDiscTwo[3]
            songDurationFour.text = ffDiscTwoDuration[3]
        } else if discLabel.text == "Tonight" {
            songNameOne.text = ffDiscThree[0]
            songDurationOne.text = ffDiscThreeDuration[0]
            songNameTwo.text = ffDiscThree[1]
            songDurationTwo.text = ffDiscThreeDuration[1]
            songNameThree.text = ffDiscThree[2]
            songDurationThree.text = ffDiscThreeDuration[2]
            songNameFour.text = ffDiscThree[3]
            songDurationFour.text = ffDiscThreeDuration[3]
        } else if discLabel.text == "Right Thoughts, Right Words, Right Action" {
            songNameOne.text = ffDiscFour[0]
            songDurationOne.text = ffDiscFourDuration[0]
            songNameTwo.text = ffDiscFour[1]
            songDurationTwo.text = ffDiscFourDuration[1]
            songNameThree.text = ffDiscFour[2]
            songDurationThree.text = ffDiscFourDuration[2]
            songNameFour.text = ffDiscFour[3]
            songDurationFour.text = ffDiscFourDuration[3]
        }
        else {
            songNameOne.text = ffDiscFive[0]
            songDurationOne.text = ffDiscFiveDuration[0]
            songNameTwo.text = ffDiscFive[1]
            songDurationTwo.text = ffDiscFiveDuration[1]
            songNameThree.text = ffDiscFive[2]
            songDurationThree.text = ffDiscFiveDuration[2]
            songNameFour.text = ffDiscFive[3]
            songDurationFour.text = ffDiscFiveDuration[3]
        }
        
    }
    
    
}
