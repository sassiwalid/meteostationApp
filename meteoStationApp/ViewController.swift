//
//  ViewController.swift
//  meteoStationApp
//
//  Created by Walid Sassi on 22/01/2017.
//  Copyright © 2017 Walid Sassi. All rights reserved.
//

import UIKit
import Alamofire
class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
  // the IBOutlets
  @IBOutlet weak var tableview: UITableView!
  @IBOutlet weak var datelabel: UILabel!
  @IBOutlet weak var currentTempLabel: UILabel!
  @IBOutlet weak var locationLabel: UILabel!
  @IBOutlet weak var currentmeteoImage: UIImageView!
  @IBOutlet weak var currentMeteoLabel: UILabel!
  var currentWeather:CurrentWeather!
  override func viewDidLoad() {
    super.viewDidLoad()
    tableview.delegate = self
    tableview.dataSource = self
    currentWeather = CurrentWeather()
    currentWeather.downloadWeatherDetails {
      self.updateMainUI()
    }
    print(CURRENT_WEATHER_URL)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 6
  }
  func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
    return cell
  }
  // function to update the UI
  func updateMainUI() {
    datelabel.text = currentWeather._date
    locationLabel.text = currentWeather.cityName
    currentTempLabel.text = "\(currentWeather._currentTemp!)"
    currentMeteoLabel.text = currentWeather._weatherType
    currentmeteoImage.image = UIImage(named:currentWeather._weatherType)
  }
}

