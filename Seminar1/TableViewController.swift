//
//  TableViewController.swift
//  Seminar1
//
//  Created by MacBook Pro on 11/07/23.
//

import UIKit
class TableViewController : UITableViewController{
    
    private var networkService = NetworkService()
    private var towns: [TownModel] = []
    
    override func viewDidLoad() {        super.viewDidLoad()
        view.backgroundColor = .white
        tableView.backgroundColor = .white
        navigationController?.navigationBar.tintColor = .black
        navigationController?.navigationBar.barTintColor = .white
        tableView.register(CustomCell.self, forCellReuseIdentifier: "Cell")
        networkService.getData{ town in
            self.towns = town
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
        // networkService.getCat( with: 404)
        //networkService.getNews()
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        towns.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        guard let cell = cell as? CustomCell else {
            return UITableViewCell()
        }
        let townModel = towns[indexPath.row]
        cell.coordCount(coord: townModel.coords)
        cell.findName(town: townModel)
        return cell
    }
}
