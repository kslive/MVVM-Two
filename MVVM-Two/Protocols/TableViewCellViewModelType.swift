//
//  TableViewCellViewModelType.swift
//  MVVM-Two
//
//  Created by Eugene Kiselev on 20.09.2020.
//

import Foundation

protocol TableViewCellViewModelType: class {
    
    var name: String { get }
    var secondName: String { get }
    var age: String { get }
}
