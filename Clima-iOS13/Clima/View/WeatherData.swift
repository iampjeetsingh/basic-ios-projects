//
//  WeatherData.swift
//  Clima
//
//  Created by Paramjeet Singh on 13/07/22.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation

struct WeatherData: Decodable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Weather: Decodable {
    let id: Int
    let description: String
}

struct Main: Decodable {
    let temp: Double
}
