//
//  ThirdViewController.swift
//  FormEntryProgress
//
//  Created by Harry Bloom on 06/04/2017.
//  Copyright © 2017 WeVat. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, MainFormProgressViewUpdater {

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        updateProgress()
    }
}
