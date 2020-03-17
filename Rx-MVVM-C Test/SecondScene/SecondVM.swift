//
//  SecondVM.swift
//  Rx-MVVM-C Test
//
//  Created by Ilyas Shomat on 3/16/20.
//  Copyright © 2020 Ilyas Shomat. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

final class SecondVM{
    
    private let disposeBag = DisposeBag()
    
    var someString = BehaviorRelay<String>(value: "starter")
    
//    var  withoutBR = String()
    
    init() {
        
        someString.subscribe(onNext: {data in
            
            print(data)
            })
        
        
//        print("here a string without: \(withoutBR)")
    }
}
