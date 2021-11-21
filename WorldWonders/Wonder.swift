//
//  Wonder.swift
//  WorldWonders
//
//  Created by Darkhan on 29.03.2021.
//

import UIKit
import SwiftyJSON

class Wonder {

    var name: String!
    var region: String!
    var location: String!
    var flag: String!
    var picture: String!
    
    init() {
        name = ""
        region = ""
        location = ""
        flag = ""
        picture = ""
    }
    
    init(json: JSON) {
        if let temp = json["name"].string {
            name = temp
        }
        if let temp = json["region"].string {
            region = temp
        }
        if let temp = json["location"].string {
            location = temp
        }
        if let temp = json["flag"].string {
            flag = temp
        }
        if let temp = json["picture"].string {
            picture = temp
        }
    }
}
