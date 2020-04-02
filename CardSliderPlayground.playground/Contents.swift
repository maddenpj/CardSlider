//: Playground - noun: a place where people can play

import UIKit
import SwiftyJSON


var str = """
[{"id":3,"name":"Barek","soberDate":"2012-11-05","soberTime":"2699","sponseeCount":1,"rideShare":true,"phoneTime":5,"geo":{"latitude":33.6666,"longitude":-117.8704}},{"id":1,"name":"Bill","soberDate":"1937-02-01","soberTime":"30370","sponseeCount":120,"rideShare":false,"phoneTime":10,"geo":{"latitude":30.2918842,"longitude":-81.3927381}},{"id":4,"name":"Ben","soberDate":"2019-07-14","soberTime":"257","sponseeCount":0,"rideShare":false,"phoneTime":1,"geo":{"latitude":33.656,"longitude":-117.8993}},{"id":2,"name":"Micheal Scott","soberDate":"2007-06-23","soberTime":"4661","sponseeCount":9,"rideShare":true,"phoneTime":30,"geo":{"latitude":41.8853881,"longitude":-87.6473133}}]
"""

let data = str.data(using: .utf8)!

let json = try! JSON(data: data)
let b: String = json[0]["name"].stringValue
print(b)
print(json[0])

//let sm: SponsorModel = SponsorModel(fromJson: json[0])
