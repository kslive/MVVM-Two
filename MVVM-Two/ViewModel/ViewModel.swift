//
//  ViewModel.swift
//  MVVM-Two
//
//  Created by Eugene Kiselev on 20.09.2020.
//

import Foundation

class ViewModel: TableViewModelType {
    
    var numberOfRows: Int {
        return profiles.count
    }
    
    var profiles = [
        Profile(name: "Max", secondName: "Smith", age: 33),
        Profile(name: "John", secondName: "Smith", age: 22),
        Profile(name: "Alex", secondName: "Smith", age: 11),
        Profile(name: "Mark", secondName: "Smith", age: 23)
    ]
    
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType? {
        
        let profile = profiles[indexPath.row]
        
        return TableViewCellViewModel(profile: profile)
    }
}
