//
//  TableViewModelType.swift
//  MVVM-Two
//
//  Created by Eugene Kiselev on 20.09.2020.
//

import Foundation

protocol TableViewModelType {
    
    var numberOfRows: Int { get }
    var profiles: [Profile] { get }
}
