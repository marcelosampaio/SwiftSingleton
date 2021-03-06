//
//  ViewController.swift
//  SwiftSingleton
//
//  Created by Marcelo Sampaio on 12/11/16.
//  Copyright © 2016 Marcelo Sampaio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
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
    
    
    // MARK: - UI Actions
    @IBAction func proceed(_ sender: Any) {
        MainSingleton.sharedInstance.genericString = generic.text!
        
        performSegue(withIdentifier: "showSecond", sender: self)
        
    }
    



}

