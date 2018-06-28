//
//  OldDataModel.swift
//  EncodingDecoding
//
//  Created by Deepak P. Patil on 28/06/18.
//  Copyright © 2018 Deepak P. Patil. All rights reserved.
//

import Foundation
class OldDataModel:NSCoding {
    var name = "Deepak"
    var age = 23
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(name, forKey: "name")
        aCoder.encode(age, forKey: "age")
    }
    
    required init?(coder aDecoder: NSCoder) {
        
    }
    
    
}
