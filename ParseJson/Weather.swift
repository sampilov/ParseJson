//
//  Weather.swift
//  ParseJson
//
//  Created by Сампилов Ильдар on 06.11.2022.
//

import Foundation

struct Weather: Decodable {
    var temperature: String
    var wind: String
    var description: String
    
}
