//
//  DetailViewModelType.swift
//  MVVM-Two
//
//  Created by Eugene Kiselev on 20.09.2020.
//

import Foundation

protocol DetailViewModelType {
    
    var description: String { get }
    var age: Box<String?> { get }
}
