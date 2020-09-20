//
//  DetailViewController.swift
//  MVVM-Two
//
//  Created by Eugene Kiselev on 20.09.2020.
//

import UIKit

class DetailViewController: UIViewController {
    
    var viewModel: DetailViewModelType?
    @IBOutlet weak var text: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel?.age.bind { [unowned self] in
            
            guard let string = $0 else { return }
            
            self.text.text = string
        }
        
        delay(delay: 5) { [unowned self] in
            
            self.viewModel?.age.value = "new value"
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let viewModel = viewModel else { return }
        self.text.text = viewModel.description
    }
    
    private func delay(delay: Double, closure: @escaping () -> ()) {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
            
            closure()
        }
    }
}
