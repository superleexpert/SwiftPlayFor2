//
//  SubViewController.swift
//  SwiftPlayFor2
//
//  Created by Lee on 9/6/15.
//  Copyright (c) 2015 AppStudio. All rights reserved.
//

import UIKit

class SubViewController: UIViewController {
    // 声明单例的2种写法
    /*
    通过static定义的类变量无法在子类重写，通过class定义的类变量则可在子类重写，static可用于单例模式。
    static func sharedInstance() -> SubViewController {
    */
    class func sharedInstance() -> SubViewController {
        struct Singleton{
            static var predicate: dispatch_once_t = 0
            static var instance: SubViewController? = nil
        }
        dispatch_once(&Singleton.predicate, {
            Singleton.instance = SubViewController()
        })
        return Singleton.instance!
    }
    
    var name: String = "Lee" //类属性
    var age: Int = 27
    var value: Int = 0
    
    class var CircleAge: Int { //类方法
        return 29
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myName: String = "Lee+"
        switch myName{
            case "Lee":
                self.value = 26
            case "Lee+":
                self.value = 27
            case "Lee-":
                self.value = 25
        default:
                self.value = 0
        }
    
        print("Result name: \(myName)'s age: \(self.value)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
