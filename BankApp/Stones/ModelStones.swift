//
//  ModelStones.swift
//  BankApp
//
//  Created by Кирилл Жогальский on 19.01.23.
//

import Foundation
import ObjectMapper

class ModelStones: Mappable {
   
    var name: String = ""
    var filials_text: String = ""
    var attestat: String = ""
    var name_ru: String = ""
    var grani: String = ""
    var weight: String = ""
    var color: String = ""
    
    required init?(map: ObjectMapper.Map) {
        mapping(map: map)
    }
    
    func mapping(map: ObjectMapper.Map) {
        name            <- map["name"]
        filials_text    <- map["filials_text"]
        attestat        <- map["attestat"]
        name_ru         <- map["name_ru"]
        grani           <- map["grani"]
        weight          <- map["weight"]
        color           <- map["color"]
    }
    
    
}
