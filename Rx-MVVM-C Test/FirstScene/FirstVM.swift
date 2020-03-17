//
//  FirstVM.swift
//  Rx-MVVM-C Test
//
//  Created by Ilyas Shomat on 3/16/20.
//  Copyright © 2020 Ilyas Shomat. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa


final class FirstVM {
    
    private let disposeBad = DisposeBag()
//    weak var coodinato: FirstCoordinator?
    
    var buttonTappedPS = PublishSubject<Void>()
    var someInfo = BehaviorRelay<String>(value: "")
    
    let secondPage: AnyObserver<Void>

    let showSecondPage: Observable<Void>
    
    let oneString:String = "some string from VM"
    
    init() {
    
        
//        let _secondPage = PublishSubject<Void>()
        self.secondPage = buttonTappedPS.asObserver()
        self.showSecondPage = buttonTappedPS.asObservable()
        
        
    }
    
   
    
}
