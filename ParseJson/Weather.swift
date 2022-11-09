//
//  Weather.swift
//  ParseJson
//
//  Created by Сампилов Ильдар on 06.11.2022.
//

import Foundation

struct Weather: Decodable {
    let temperature: String
    let wind: String
    let description: String
}
