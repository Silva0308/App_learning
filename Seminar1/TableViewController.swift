//
//  TableViewController.swift
//  Seminar1
//
//  Created by MacBook Pro on 11/07/23.
//

import UIKit
class TableViewController : UITableViewController{
    override func numberOfSections(in tableView: UITableView) -> Int {
        3
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        CustomCell()
    }
}
