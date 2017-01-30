//
//  ViewController.swift
//  meteoStationApp
//
//  Created by Walid Sassi on 22/01/2017.
//  Copyright © 2017 Walid Sassi. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
  // the IBOutlets
  @IBOutlet weak var tableview: UITableView!
  @IBOutlet weak var datelabel: UILabel!
  @IBOutlet weak var currentTempLabel: UILabel!
  @IBOutlet weak var locationLabel: UILabel!
  @IBOutlet weak var currentmeteoImage: UIImageView!
  @IBOutlet weak var currentMeteoLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    tableview.delegate = self
    tableview.dataSource = self
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

}

