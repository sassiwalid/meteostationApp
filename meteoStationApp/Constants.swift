//
//  Constants.swift
//  meteoStationApp
//
//  Created by Walid Sassi on 30/01/2017.
//  Copyright © 2017 Walid Sassi. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let LATITUDE = "lat="
let LONGITUDE = "&lon="
let APP_ID = "&appid="
let API_KEY = "7861e4359f70ee319865c215da704b1e"
typealias DownloadComplete = () -> ()
let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)-36\(LONGITUDE)123\(APP_ID)\(API_KEY)"

