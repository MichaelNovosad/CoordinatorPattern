//
//  Coordinator.swift
//  CoordinatorPattern
//
//  Created by Michael Novosad on 07.05.2022.
//

import Foundation
import UIKit

enum Event {
    case buttonTapped
}

protocol Coordinator {
    var navigationController: UINavigationController? { get set }
    var children: [Coordinator]? { get set }
    
    func eventOccurred(with event: Event)
    
    func start()
}

protocol Coordinating {
    var coordinator: Coordinator? { get set }
}
