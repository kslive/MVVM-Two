//
//  DetailViewModel.swift
//  MVVM-Two
//
//  Created by Eugene Kiselev on 20.09.2020.
//

import Foundation

class DetailViewModel: DetailViewModelType {
    
    private var profile: Profile
    
    var description: String {
        return "\(profile.name) \(profile.secondName) is \(profile.age) old"
    }
    
    var age: Box<String?> = Box(nil)
    
    init(profile: Profile) {
        
        self.profile = profile
    }
}
