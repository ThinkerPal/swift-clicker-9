//
//  ViewController.swift
//  Clicker Version 9
//
//  Created by Rui Yang Tan on 21/7/18.
//  Copyright © 2018 Rui Yang Tan. All rights reserved.
//

import UIKit

class ClickerViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var timer = Timer(t)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func tapped(_ sender: Any) {
        counter += 1
        label.text = String(counter)
        if counter == 30 {
            print("Ypu're done! You took \(counter) secondss")
        }
    }
    

}

