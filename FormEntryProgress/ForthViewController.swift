//
//  ForthViewController.swift
//  FormEntryProgress
//
//  Created by Harry Bloom on 06/04/2017.
//  Copyright © 2017 WeVat. All rights reserved.
//

import UIKit

class ForthViewController: UIViewController, MainFormProgressViewUpdater {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        updateProgress()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        
    }
}
