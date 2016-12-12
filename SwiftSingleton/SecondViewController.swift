//
//  SecondViewController.swift
//  SwiftSingleton
//
//  Created by Marcelo Sampaio on 12/11/16.
//  Copyright © 2016 Marcelo Sampaio. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    // MARK: - Outlets
    
    @IBOutlet var generic: UITextField!

    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        generic.text = MainSingleton.sharedInstance.genericString
        
        
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        MainSingleton.sharedInstance.genericString = generic.text!
    }
    
    


}
