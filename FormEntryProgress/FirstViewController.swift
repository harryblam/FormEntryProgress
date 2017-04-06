//
//  ViewController.swift
//  FormEntryProgress
//
//  Created by Harry Bloom on 06/04/2017.
//  Copyright © 2017 WeVat. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, MainFormProgressViewUpdater {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        updateProgress()
    }

    @IBAction func unwindToFirst(_ segue: UIStoryboardSegue) { }
}

