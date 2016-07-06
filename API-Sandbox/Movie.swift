//
//  Movie.swift
//  API-Sandbox
//
//  Created by Dion Larson on 6/24/16.
//  Copyright © 2016 Make School. All rights reserved.
//

import Foundation
import SwiftyJSON

struct Movie {
    let name: String
    let rightsOwner: String
    let price: Double
    let link: String
    let releaseDate: String
    
    init(json: JSON) {
        self.name = json["feed"]["entry"][0]["im:name"]["label"].stringValue
        self.rightsOwner = json["feed"]["entry"][0]["rights"]["label"].stringValue
        self.price = json["feed"]["entry"][0]["im:price"]["label"].doubleValue
        self.link = json["feed"]["link"][0]["href"].stringValue
        self.releaseDate = json["feed"]["link"][0]["im:releaseDate"].stringValue
    }
    
    
    
}
