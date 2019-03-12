//
//  ViewController.swift
//  plist
//
//  Created by MacStudent on 2019-03-12.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.readInformationPlist()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func readInformationPlist() {
        if let bundlePath = Bundle.main.path(forResource: "SamplePropertyList", ofType: "plist") {
            let dictionary = NSMutableDictionary(contentsOfFile: bundlePath)
            
            print(dictionary!.description)
        }
    }

}

