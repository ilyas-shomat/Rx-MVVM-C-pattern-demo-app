//
//  SecondCoordinator.swift
//  Rx-MVVM-C Test
//
//  Created by Ilyas Shomat on 3/16/20.
//  Copyright © 2020 Ilyas Shomat. All rights reserved.
//

import Foundation
import UIKit
import RxSwift

class SecondCoordinator: MainCoordinator<Void> {
    
    private let rootViewController: UIViewController
    
    init(rootViewController: UIViewController) {
        self.rootViewController = rootViewController
    }
    
    
    override func start() -> Observable<Void> {
        
        let viewController = SecondViewController.initFromStoryboard(name: "Second")
        let navigationController = UINavigationController(rootViewController: viewController)
        
        let viewModel = SecondVM()
        viewController.viewModel = viewModel
        
        navigationController.modalPresentationStyle = .overFullScreen
        rootViewController.present(navigationController, animated: true)
        
        
        return Observable.never()
        
       
    }
    
    
    
}
