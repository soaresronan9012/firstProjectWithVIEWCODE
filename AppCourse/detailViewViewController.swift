//
//  detailViewViewController.swift
//  AppCourse
//
//  Created by Ronan Soares on 02/09/24.
//

import UIKit

class detailViewViewController: UIViewController {

    
    let label: UILabel = {
        let label = UILabel() // Inicialização correta do UILabel
        label.text = "Joker is Crazy"
        label.textAlignment = .center
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .lightGray
        label.frame = view.bounds
        view.addSubview(label)        // Do any additional setup after loading the view.
    }
    

    
}
