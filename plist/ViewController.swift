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
        if let bundlePath = Bundle.main.path(forResource: "Employee", ofType: "plist") {
            let dictionary = NSMutableDictionary(contentsOfFile: bundlePath)
            
            print(dictionary!.description)
            
            print("--------Country List form Plist--------")
             let countryList = dictionary!["Countaries"] as! NSArray
            print(countryList[0])
            for c in countryList
            {
                print(c)
            }
            
            print("--------Employee List form Plist--------")
            let employeeList = dictionary!["employees"] as! NSArray
            for e in employeeList
            {
                let emp = e as! NSDictionary
                print("Employee ID        : \(emp["eid"]!)")
                print("Employee Name      : \(emp["ename"]!)")
                print("Salary             : \(emp["Salary"]!)")
                print("----------------------------------")
            }
        }
    }

}

