//
//  Constants.swift
//  StarTrivia
//
//  Created by Paul Franco on 9/23/20.
//

import UIKit

let BLACK_BG = UIColor.black.withAlphaComponent(0.6).cgColor

let BASE_URL = "https://agile-hollows-54349.herokuapp.com/"
let PERSON_URL = BASE_URL + "people/1"

typealias PersonResponseCompletion = (Person?) -> Void
