//
//  SponsorModel.swift
//  CardSlider
//
//  Created by Patrick Madden on 3/24/20.
//  Copyright © 2020 Saoud Rizwan. All rights reserved.
//

import UIKit
import SwiftyJSON

class SponsorModel {
    let name: String
    let age: Int? = nil
    // only single image currently :/
    let image: UIImage?
    
    init(name: String, image: UIImage?) {
        self.name = name
        self.image = image
    }
    
    init(fromJson json: JSON) {
        self.name = json["name"].stringValue
        //self.age = json["age"].int
        self.image = nil
    }
}
