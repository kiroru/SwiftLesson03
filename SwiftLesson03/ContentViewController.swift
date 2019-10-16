//
//  ContentViewController.swift
//  SwiftLesson03
//
//  Created by ueda on 2018/08/28.
//  Copyright © 2018年 kohei.ueda. All rights reserved.
//

import UIKit

class ContentViewController: UIViewController {
    
    var viewControllers = [UIViewController]()
    var index: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        let greenViewController = storyboard?.instantiateViewController(withIdentifier: "green")
        let blueViewController = storyboard?.instantiateViewController(withIdentifier: "blue")
        let redViewController = storyboard?.instantiateViewController(withIdentifier: "red")

        viewControllers.append(greenViewController!)
        viewControllers.append(blueViewController!)
        viewControllers.append(redViewController!)

        let vc = viewControllers[index]
        vc.view.frame = self.view.frame
        self.addChildViewController(vc)
        self.view.addSubview((vc.view)!)
    }
    
    func replaceWindow() {
        if (index == 0 || index == 1) {
            index += 1
            print("index:\(index)")
        } else {
            index = 0
            print("index:\(index)")
        }
        self.removeFromParentViewController()
        let viewController = viewControllers[index]
        viewController.view.frame = self.view.frame
        self.addChildViewController(viewController)
        self.view.addSubview((viewController.view)!)
    }
    
}
