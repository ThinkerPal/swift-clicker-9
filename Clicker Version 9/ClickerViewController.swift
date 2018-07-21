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
    var time = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let _ = Timer(timeInterval: 0.1, repeats: true) { (_) in
            self.time += 0.1
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func tapped(_ sender: Any) {
        counter += 1
        label.text = String(counter)
        if counter == 30 {
            print("Ypu're done! You took \(time) secondss")
        }
    }
    

}

