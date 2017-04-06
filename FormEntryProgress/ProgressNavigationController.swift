//
//  ProgressNavigationController.swift
//  FormEntryProgress
//
//  Created by Harry Bloom on 06/04/2017.
//  Copyright © 2017 WeVat. All rights reserved.
//

import UIKit

class ProgressNavigationController: UINavigationController, ProgressViewPresenter {

    var progressView: UIProgressView = UIProgressView(progressViewStyle: .bar)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupProgressView()
    }
}
