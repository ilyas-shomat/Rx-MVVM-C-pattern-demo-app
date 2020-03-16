//
//  ViewController.swift
//  Rx-MVVM-C Test
//
//  Created by Ilyas Shomat on 3/16/20.
//  Copyright © 2020 Ilyas Shomat. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController, StoryboardInitializable {
    
    @IBOutlet weak var goButton: UIButton!
    
    private let disposeBag = DisposeBag()
    var viewModel = FirstVM()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        

        goButton.rx.tap.bind(to: viewModel.buttonTappedPS).disposed(by: disposeBag)
    }


}

