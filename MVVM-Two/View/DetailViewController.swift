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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let viewModel = viewModel else { return }
        self.text.text = viewModel.description
    }
}
