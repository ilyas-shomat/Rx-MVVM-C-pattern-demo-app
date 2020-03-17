//
//  FirstCoordinator.swift
//  Rx-MVVM-C Test
//
//  Created by Ilyas Shomat on 3/16/20.
//  Copyright © 2020 Ilyas Shomat. All rights reserved.
//

import Foundation
import RxSwift
import UIKit

class FirstCoordinator: MainCoordinator<Void> {
    
    private let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    override func start() -> Observable<Void> {
        
        let viewModel = FirstVM()
        let viewController = ViewController.initFromStoryboard(name: "Main")
        let navigationController = UINavigationController(rootViewController: viewController)
        
        viewController.viewModel = viewModel
        
        viewModel.showSecondPage.subscribe(onNext: {
            
//            print("dsjdhao")
            self.showSecondPage(on: viewController, data: viewModel.oneString)
        }).disposed(by: disposeBag)
        
        
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        
        return Observable.never()
        
    }
    
    private func showSecondPage(on rootVC: UIViewController, data: String)-> Observable<Void> {
        
        let secondCoordinator = SecondCoordinator(rootViewController: rootVC)
        
        return coordinate(to: secondCoordinator, data: data)
       
        
    }
}
