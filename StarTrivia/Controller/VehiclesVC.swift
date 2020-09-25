//
//  VehiclesVC.swift
//  StarTrivia
//
//  Created by Paul Franco on 9/24/20.
//

import UIKit

class VehiclesVC: UIViewController, PersonProtocol {
    
    var person: Person!
    let api = VehicleApi()
    var vehicles = [String]()

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
        vehicles = person.vehicleUrls
        
        guard let firstVehicle = vehicles.first else { return }
        getVehicle(url: firstVehicle)
    }
    
    func getVehicle(url: String) {
        api.getVehicle(url: url) { (vehicle) in
            if let vehicle = vehicle {
                self.setupView(vehicle: vehicle)
            }
        }
    }
    
    func setupView(vehicle: Vehicle) {
        nameLabel.text = vehicle.name
        modelLabel.text = vehicle.model
        makerLabel.text = vehicle.manufacturer
        costLabel.text = vehicle.cost
        lengthLabel.text = vehicle.length
        passengersLabel.text = vehicle.passengers
        speedLabel.text = vehicle.speed
        crewLabel.text = vehicle.crew
        
    }
    

    @IBAction func previousClicked(_ sender: UIButton) {
    }
    
    @IBAction func nextClicked(_ sender: UIButton) {
    }
    
}
