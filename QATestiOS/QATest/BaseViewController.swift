//
//  BaseViewController.swift
//  QATest
//
//  Created by Eduardo Viegas on 6/14/16.
//  Copyright © 2016 Youse. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    // MARK: UIViewController
    
    override func viewDidLoad() {
        self.customizeNavigationBar()
    }
    
    // MARK: Private
    
    fileprivate func customizeNavigationBar() {
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationItem.titleView = UIImageView(image: UIImage(named: "LogoYouse"))
    }
}
