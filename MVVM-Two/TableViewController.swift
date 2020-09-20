//
//  TableViewController.swift
//  MVVM-Two
//
//  Created by Eugene Kiselev on 20.09.2020.
//

import UIKit

class TableViewController: UITableViewController {
    
    var profiles: [Profile]!

    override func viewDidLoad() {
        super.viewDidLoad()

        profiles = [Profile(name: "John", secondName: "Smith", age: 33),
                    Profile(name: "Max", secondName: "Smith", age: 21),
                    Profile(name: "Mark", secondName: "Smith", age: 18)]
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return profiles.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? TableViewCell
        guard let tableViewCell = cell else { return UITableViewCell() }
        let profile = profiles[indexPath.row]
        
        tableViewCell.age.text = "\(profile.age)"
        tableViewCell.name.text = profile.name
        tableViewCell.secondName.text = profile.secondName
        
        return tableViewCell
    }
}
