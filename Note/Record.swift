//
//  Record.swift
//  Note
//
//  Created by APULU on 2018/6/26.
//  Copyright © 2018 APULU. All rights reserved.
//

import Foundation
import UIKit

struct Record :Codable{
    
    var year:String
    var month:String
    var day:String
    var week:String
    var amount:Int
    var type:String
    var describe:String
    
    static func readRecordFromFile()->[Record]?{
        let Decoder = PropertyListDecoder()
        if let data = UserDefaults.standard.data(forKey: "records"),let records = try? Decoder.decode([Record].self, from: data){
            return records
        }else{
            return nil
        }
    }
    
    static func saveToFile(records:[Record]){
        let Encoder = PropertyListEncoder()
        if let data = try? Encoder.encode(records){
            UserDefaults.standard.set(data, forKey: "records")
        }
    }
    
    
}
