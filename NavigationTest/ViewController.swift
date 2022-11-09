//
//  ViewController.swift
//  NavigationTest
//
//  Created by Rafael Costa on 09/11/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "List (Swift)"
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: self, action: #selector(self.backActionObjC))
        self.navigationController?.navigationBar.barTintColor = .cyan
        // Do any additional setup after loading the view.
        
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2)) {
            self.backActionObjC()
        }
    }

    @objc func backActionObjC() {
        let type = self.navigationController == nil ? "Without" : "With"
        print("\(type) iOS native Navigation Stack")
        print("Safe Area Top:", self.view.safeAreaInsets.top)
        print("Safe Area Top + NavigationBar inferred (44) height:", self.view.safeAreaInsets.top + 44.0)
        
        print("NavigationBar computed height:", self.navigationController?.navigationBar.frame.size.height ?? 0)
    }

}

