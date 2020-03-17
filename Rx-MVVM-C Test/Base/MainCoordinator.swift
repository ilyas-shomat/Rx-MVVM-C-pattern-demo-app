//
//  MainCoordinator.swift
//  Rx-MVVM-C Test
//
//  Created by Ilyas Shomat on 3/16/20.
//  Copyright © 2020 Ilyas Shomat. All rights reserved.
//

import Foundation
import RxSwift

class MainCoordinator<ResultType> {
    
    typealias Coordinators = ResultType
    
    let disposeBag = DisposeBag()
    
    private let indetifier = UUID()
    
    private var childCoordinator = [UUID: Any]()
    
    private func store<T>(coordinator: MainCoordinator<T>) {
        childCoordinator[coordinator.indetifier] = coordinator
    }
    
    private func free<T>(coordinator: MainCoordinator<T>) {
        childCoordinator[coordinator.indetifier] = nil
    }
    
    func coordinate<T>(to coordinator: MainCoordinator<T>) -> Observable<T> {
        store(coordinator: coordinator)
        return coordinator.start().do(onNext: { [self] _ in self.free(coordinator: coordinator) })
    }
    
    func coordinate<T>(to coordinator: MainCoordinator<T>, data: String) -> Observable<T> {
        store(coordinator: coordinator)
        return coordinator.start(data: data).do(onNext: { [self] _ in self.free(coordinator: coordinator) })
    }
    
    func start() -> Observable<ResultType> {
        fatalError("Start method should be implemented")
    }
    
    func start(data: String)-> Observable<ResultType> {
        fatalError("Start method should be implemented")
    }
}
