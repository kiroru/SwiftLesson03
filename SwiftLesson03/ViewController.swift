//
//  ViewController.swift
//  SwiftLesson03
//
//  Created by ueda on 2018/08/28.
//  Copyright © 2018年 kohei.ueda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var contentViewController:ContentViewController? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func goNext() {
        print("ButtonPressed!")
        contentViewController?.replaceWindow()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "content" {
            contentViewController = (segue.destination as! ContentViewController)
        }
    }
}
