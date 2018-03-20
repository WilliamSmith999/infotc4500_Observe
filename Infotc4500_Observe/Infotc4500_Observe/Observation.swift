//
//  Observation.swift
//  Infotc4500_Observe
//
//  Created by William Smith on 3/20/18.
//  Copyright © 2018 William Smith. All rights reserved.
//

import Foundation
import UIKit

class Observation{
    
    var image: UIImage
    var name: String
    var color: String
    var habitat: String
    var funFact: String
    
    init(image Image: UIImage, name Name: String, color Color: String, habitat Habitat: String, funFact FunFact: String) {
        image = Image
        name = Name
        color = Color
        habitat = Habitat
        funFact = FunFact
    }
    
}
