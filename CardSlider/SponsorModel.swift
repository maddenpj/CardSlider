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
        // watch me do this horrible thing and dl image syncronously
        let url = URL(string: json["images"].arrayValue[0].stringValue)
        debugPrint(url)
        let data = try? Data(contentsOf: url!)
        self.image = UIImage(data: data!)
    }
}
