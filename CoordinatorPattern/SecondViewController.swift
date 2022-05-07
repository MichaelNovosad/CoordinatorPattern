//
//  SecondViewController.swift
//  CoordinatorPattern
//
//  Created by Michael Novosad on 07.05.2022.
//

import UIKit

class SecondViewController: UIViewController, Coordinating {
    var coordinator: Coordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Second"
        view.backgroundColor = .systemBlue
    }
}
