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
    
    var personApi = PersonApi()
    override func viewDidLoad() {
        super.viewDidLoad()
        personApi.getRandomPersonUrlSession()
    }


}

