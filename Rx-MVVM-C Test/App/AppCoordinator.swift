//
//  AppCoordinator.swift
//  Rx-MVVM-C Test
//
//  Created by Ilyas Shomat on 3/16/20.
//  Copyright © 2020 Ilyas Shomat. All rights reserved.
//

import Foundation
import RxSwift

class AppCoordinator: MainCoordinator<Void> {

    private let window: UIWindow

    init(window: UIWindow) {
        self.window = window
    }

    override func start() -> Observable<Void> {
        let repositoryListCoordinator = FirstCoordinator(window: window)
        return coordinate(to: repositoryListCoordinator)
    }
}
