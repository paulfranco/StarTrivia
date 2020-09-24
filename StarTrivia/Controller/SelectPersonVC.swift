//
//  ViewController.swift
//  StarTrivia
//
//  Created by Paul Franco on 9/23/20.
//

import UIKit

class SelectPersonVC: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var massLabel: UILabel!
    @IBOutlet weak var hairLabel: UILabel!
    @IBOutlet weak var birthYearLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var homeworldsButton: UIButton!
    @IBOutlet weak var vehiclesButton: UIButton!
    @IBOutlet weak var starshipsButton: UIButton!
    @IBOutlet weak var filmsButton: UIButton!
    
    var personApi = PersonApi()
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func randomBtnClicked(_ sender: BlackBgButton) {
        let random = Int.random(in: 1...87)
        personApi.getRandomPersonAlamo(id: random) { (person) in
            if let person = person {
                self.setupView(person: person)
                
            }
        }
        
    }
    
    func setupView(person: Person) {
        nameLabel.text = person.name
        heightLabel.text = person.height
        massLabel.text = person.mass
        hairLabel.text = person.hair
        birthYearLabel.text = person.birthYear
        genderLabel.text = person.gender
        
        starshipsButton.isEnabled = !person.starshipUrls.isEmpty
        vehiclesButton.isEnabled = !person.vehicleUrls.isEmpty
        homeworldsButton.isEnabled = !person.homeworldUrl.isEmpty
        filmsButton.isEnabled = !person.filmUrls.isEmpty
        
    }
    
    @IBAction func filmsClicked(_ sender: Any) {
    }
    @IBAction func starshipsClicked(_ sender: UIButton) {
    }
    @IBAction func homeworldClicked(_ sender: UIButton) {
    }
    @IBAction func vehiclesClicked(_ sender: UIButton) {
    }
}

