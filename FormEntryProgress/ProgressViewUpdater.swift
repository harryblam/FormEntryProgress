//
//  ProgressViewUpdater.swift
//  FormEntryProgress
//
//  Created by Harry Bloom on 06/04/2017.
//  Copyright © 2017 WeVat. All rights reserved.
//

import UIKit

protocol ProgressViewUpdater {
    func updateProgress(withViewControllerStack: [UIViewController.Type], animated: Bool)
    func updateProgress(progress: Float, animated: Bool)
    func completeProgress(animated: Bool)
}

extension ProgressViewUpdater where Self: UIViewController {
    
    func updateProgress(withViewControllerStack: [UIViewController.Type], animated: Bool = true) {
        
        let progressMultiplier = 1.0/Float(withViewControllerStack.count)
        
        for (index, viewType) in withViewControllerStack.enumerated() {
            
            if self.isKind(of: viewType) {
                let progress = progressMultiplier * Float(index)
                updateProgress(progress: progress, animated: true)
            }
        }
    }
    
    func updateProgress(progress: Float, animated: Bool = true) {
        
        guard let navigationController = navigationController as? ProgressNavigationController else { return }
        
        navigationController.progressView.setProgress(progress, animated: animated)
    }
    
    func completeProgress(animated: Bool = true) {
        
        updateProgress(progress: 1, animated: animated)
    }
}

protocol MainFormProgressViewUpdater: ProgressViewUpdater {
    func updateProgress(animated: Bool)
}

extension MainFormProgressViewUpdater where Self: UIViewController {
    
    func updateProgress(animated: Bool = true) {
        
        let viewControllerStack = [FirstViewController.self, SecondViewController.self, ThirdViewController.self, ForthViewController.self]
        
        updateProgress(withViewControllerStack: viewControllerStack, animated: animated)
    }
}
