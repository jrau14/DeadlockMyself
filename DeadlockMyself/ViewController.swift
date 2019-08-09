//
//  ViewController.swift
//  DeadlockMyself
//
//  Created by Rau, Jacob (J.) on 8/8/19.
//  Copyright © 2019 Rau, Jacob (J.). All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var dq = DispatchQueue(label: "com.helloworld")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
    }

    @IBAction func onpress(_ sender: Any) {
        dq.async {
            print("hello world")
                        self.dq.sync {
                            print("this should crash")
                        }
        }
    }
}

