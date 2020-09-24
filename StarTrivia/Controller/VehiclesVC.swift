//
//  VehiclesVC.swift
//  StarTrivia
//
//  Created by Paul Franco on 9/24/20.
//

import UIKit

class VehiclesVC: UIViewController, PersonProtocol {
    
    var person: Person!

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var modelLabel: UILabel!
    @IBOutlet weak var makerLabel: UILabel!
    @IBOutlet weak var costLabel: UILabel!
    @IBOutlet weak var speedLabel: UILabel!
    @IBOutlet weak var lengthLabel: UILabel!
    @IBOutlet weak var crewLabel: UILabel!
    @IBOutlet weak var passengersLabel: UILabel!
    
    @IBOutlet weak var previousBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(person.name)
        // Do any additional setup after loading the view.
    }
    

    @IBAction func previousClicked(_ sender: UIButton) {
    }
    
    @IBAction func nextClicked(_ sender: UIButton) {
    }
    
}
