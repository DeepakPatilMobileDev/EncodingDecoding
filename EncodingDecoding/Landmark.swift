//
//  Landmark.swift
//  EncodingDecoding
//
//  Created by Deepak P. Patil on 28/06/18.
//  Copyright © 2018 Deepak P. Patil. All rights reserved.
//

import Foundation
struct Landmark : Codable {
    var name: String
    var foundingYear: Int
    var location: Coordinate
    
    
    enum CodingKeys: String, CodingKey {
        case name = "title"
        case foundingYear
        case location
    }
}

struct Coordinate: Codable {
    var latitude: Double
    var longitude: Double
    
}
