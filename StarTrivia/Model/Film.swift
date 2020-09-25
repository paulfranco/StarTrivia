//
//  Film.swift
//  StarTrivia
//
//  Created by Paul Franco on 9/24/20.
//

import Foundation

struct Film: Codable {
    let name: String
    
    enum CodingKeys: String, CodingKey {
        case name
    }
    
}
