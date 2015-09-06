//
//  ViewController.swift
//  SwiftPlayFor2
//
//  Created by Lee on 9/6/15.
//  Copyright (c) 2015 AppStudio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let subViewController = SubViewController.sharedInstance()
        subViewController.view.frame = CGRectMake(50, 50, 100, 200)
        subViewController.view.backgroundColor = UIColor.blueColor()
        println("Sub property name: \(subViewController.name) and age: \(subViewController.age) or \(SubViewController.CircleAge)")
        self.view.addSubview(subViewController.view)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

