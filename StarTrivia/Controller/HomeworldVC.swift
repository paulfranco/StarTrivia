//
//  HomeworldVC.swift
//  StarTrivia
//
//  Created by Paul Franco on 9/24/20.
//

import UIKit

class HomeworldVC: UIViewController, PersonProtocol {
    
    var person: Person!
    let api = HomeworldApi()

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var climateLabel: UILabel!
    @IBOutlet weak var terrainLabel: UILabel!
    @IBOutlet weak var populationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        api.getHomeworld(url: person.homeworldUrl) { (homeworld) in
            if let homeworld = homeworld {
                print(homeworld.name)
                self.setupUI(homeworld: homeworld)
            }
        }
        
    }
    func setupUI(homeworld: Homeworld) {
        nameLabel.text = homeworld.name
        climateLabel.text = homeworld.climate
        terrainLabel.text = homeworld.terrain
        populationLabel.text = homeworld.population
    }

}
