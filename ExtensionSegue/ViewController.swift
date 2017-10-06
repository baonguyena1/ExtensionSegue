//
//  ViewController.swift
//  ExtensionSegue
//
//  Created by Bao Nguyen on 10/6/17.
//  Copyright © 2017 Bao Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SegueHandler {

    internal enum SegueIdentifier: String {
        case addTask = "AddViewController"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segueIdentifier(for: segue) {
        case .addTask:
            print("Do something...")
        }
    }

}

