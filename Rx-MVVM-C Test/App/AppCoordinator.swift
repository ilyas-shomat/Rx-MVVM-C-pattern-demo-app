//
//  AppCoordinator.swift
//  Rx-MVVM-C Test
//
//  Created by Ilyas Shomat on 3/16/20.
//  Copyright © 2020 Ilyas Shomat. All rights reserved.
//

import Foundation
import RxSwift
import UIKit

class AppCoordinator: MainCoordinator<Void> {

    private let window: UIWindow

    init(window: UIWindow) {
        self.window = window
    }

    override func start() -> Observable<Void> {
        
        
        
        let firstCoordinator = FirstCoordinator(window: window)
        let secondCoordinator = SecondCoordinatorStarter(window: window)
        
        return coordinate(to: secondCoordinator)
    }
}
