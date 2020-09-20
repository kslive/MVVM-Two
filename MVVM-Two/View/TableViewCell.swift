//
//  TableViewCell.swift
//  MVVM-Two
//
//  Created by Eugene Kiselev on 20.09.2020.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var secondName: UILabel!
    @IBOutlet weak var age: UILabel!
    
    weak var viewModel: TableViewCellViewModelType? {
        willSet(viewModel) {
            
            guard let viewModel = viewModel else { return }
            name.text = viewModel.name
            secondName.text = viewModel.secondName
            age.text = viewModel.age
        }
    }
}
