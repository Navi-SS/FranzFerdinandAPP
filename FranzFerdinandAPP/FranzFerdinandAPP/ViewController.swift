//
//  ViewController.swift
//  FranzFerdinandAPP
//
//  Created by Feric on 15/03/21.
//

import UIKit

let discography = ["Franz Ferdinand","You Could Have It So Much Better","Tonight","Right Thoughts, Right Words, Right Action","Always Ascending"]

let photos = ["1","2","3","4","5"]

var nameToSend = ""

var discPhotoName = ""


class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "discSegue"{
            let vc = segue.destination as! DiscViewController
            vc.disc = nameToSend
            vc.discImagePhoto = discPhotoName
        }
    }
}


extension UIViewController: UITableViewDelegate{
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        nameToSend = discography[indexPath.row]
        discPhotoName = photos[indexPath.row]
        performSegue(withIdentifier: "discSegue", sender: nil)
    }
}

extension UIViewController: UITableViewDataSource{
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return discography.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        
        cell.discNameLabel.text = discography[indexPath.row]
        cell.discImage.image = UIImage(named: photos[indexPath.row])
        
        return cell
    }
    
    
}
