//
//  TableViewController.swift
//  MVVM-Two
//
//  Created by Eugene Kiselev on 20.09.2020.
//

import UIKit

class TableViewController: UITableViewController {
    
    var viewModel: TableViewModelType?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = ViewModel()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel?.numberOfRows ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? TableViewCell
        guard let tableViewCell = cell,
              let viewModel = viewModel else { return UITableViewCell() }
        let profile = viewModel.profiles[indexPath.row]
        
        tableViewCell.age.text = "\(profile.age)"
        tableViewCell.name.text = profile.name
        tableViewCell.secondName.text = profile.secondName
        
        return tableViewCell
    }
}
