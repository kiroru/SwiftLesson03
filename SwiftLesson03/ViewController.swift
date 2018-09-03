//
//  ViewController.swift
//  SwiftLesson03
//
//  Created by ueda on 2018/08/28.
//  Copyright © 2018年 kohei.ueda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var viewController:ContentViewController? = nil
    var index: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func goNext() {
        print("ButtonPressed!")
        viewController?.replaceWindow(index: index)
        if (index == 0 || index == 1) {
            index += 1
            print("index:\(index)")
        } else {
            index = 0
            print("index:\(index)")
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "content" {
            viewController = (segue.destination as! ContentViewController)
        }
    }
}
