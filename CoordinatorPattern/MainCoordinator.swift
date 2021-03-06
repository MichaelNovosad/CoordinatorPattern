//
//  MainCoordinator.swift
//  CoordinatorPattern
//
//  Created by Michael Novosad on 07.05.2022.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    var children: [Coordinator]? = nil
    
    var navigationController: UINavigationController?
    
    func eventOccurred(with type: Event) {
        switch type {
        case .buttonTapped:
            var vc: UIViewController & Coordinating = SecondViewController()
            vc.coordinator = self
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    func start() {
        var vc: UIViewController & Coordinating = ViewController()
        vc.coordinator = self
        navigationController?.setViewControllers([vc], animated: false)
    }
    
    
}
