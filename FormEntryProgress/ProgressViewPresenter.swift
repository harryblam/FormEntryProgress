//
//  ProgressViewPresenter.swift
//  FormEntryProgress
//
//  Created by Harry Bloom on 06/04/2017.
//  Copyright © 2017 WeVat. All rights reserved.
//

import UIKit

protocol ProgressViewPresenter {
    
    var progressView: UIProgressView { get set }
    
    func setupProgressView(withSuperview superview: UIView, andViewToPinTo view: UIView)
}

extension ProgressViewPresenter {
    
    func setupProgressView(withSuperview superview: UIView, andViewToPinTo view: UIView) {
        guard !superview.subviews.contains(progressView) else { return }
        
        superview.addSubview(progressView)
        
        progressView.translatesAutoresizingMaskIntoConstraints = false
        
        progressView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        progressView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        progressView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
}

extension ProgressViewPresenter where Self: UINavigationController {
    
    func setupProgressView() {
        setupProgressView(withSuperview: view, andViewToPinTo: navigationBar)
    }
}
