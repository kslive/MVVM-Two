//
//  TableViewCellViewModel.swift
//  MVVM-Two
//
//  Created by Eugene Kiselev on 20.09.2020.
//

import Foundation

class TableViewCellViewModel: TableViewCellViewModelType {
    
    private var profile: Profile
    
    var name: String {
        return profile.name
    }
    var secondName: String {
        return profile.secondName
    }
    var age: String {
        return "\(profile.age)"
    }
    
    init(profile: Profile) {
        self.profile = profile
    }
}
