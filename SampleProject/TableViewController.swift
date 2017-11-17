//
//  TableViewController.swift
//  SampleProject
//
//  Created by Andrii Kuzminskyi on 17/11/2017.
//  Copyright © 2017 A.Kuzminskyi. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        cell.textLabel?.text = "\(indexPath.row)"
        return cell
    }
    
    // MARK: - private methods

    @IBAction func refreshControlDidChange(_ sender: UIRefreshControl) {
        sender.endRefreshing()
    }
}
