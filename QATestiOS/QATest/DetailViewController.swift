//
//  DetailViewController.swift
//  QATest
//
//  Created by Eduardo Viegas on 6/14/16.
//  Copyright © 2016 Youse. All rights reserved.
//

import UIKit

struct Detail {
    var email: String?
}

class DetailViewController: BaseViewController {
    
    @IBOutlet weak var emailLabel: UILabel!
    
    lazy var detail = Detail()

    // MARK: Initializers
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    // MARK: UIViewController
    
    override func viewWillAppear(_ animated: Bool) {
        self.emailLabel.text = greetingText()
    }
    
    // MARK: Public
    
    func fillDetails(_ userEmail: String) {
        detail.email = userEmail
    }
    
    // MARK: Private
    
    fileprivate func greetingText() -> String {
        return "Seja bem vindo, \(detail.email!)!"
    }
    
}
