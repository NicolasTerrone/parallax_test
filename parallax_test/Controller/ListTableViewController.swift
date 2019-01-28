//
//  ViewController.swift
//  parallax_test
//
//  Created by Nicolas Terrone on 28/01/2019.
//  Copyright © 2019 Nicolas Terrone. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

   override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getItems().count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "parallaxCell") as? ParallaxCell else { return UITableViewCell() }
        cell.updateCell(withItem: DataService.instance.getItems()[indexPath.row])
        return cell
    }
}

