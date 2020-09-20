//
//  Box.swift
//  MVVM-Two
//
//  Created by Eugene Kiselev on 20.09.2020.
//

import Foundation

class Box<T> {
    
    typealias Listener = (T) -> ()
    
    var listener: Listener?
    
    var value: T {
        didSet {
            
            listener?(value)
        }
    }
    
    func bind(listener: @escaping Listener) {
        
        self.listener = listener
        listener(value)
    }
    
    init(_ value: T) {
        self.value = value
    }
}
