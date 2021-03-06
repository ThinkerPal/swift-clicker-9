//
//  ViewController.swift
//  Clicker Version 9
//
//  Created by Soon Yin Jie on 21/7/18.
//  Copyright © 2018 Tinkercademy. All rights reserved.
//

import UIKit

class ClickerViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    var counter = 0
    var time: Float = 0.0
    static let UNWIND_IDENTIFIER = "unwindFromClicker"
    let EXIT_ANIMATION_DURATION = 0.5
    let PULSE_ANIMATION_DURATION = 2.5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { (_) in
            self.time += 0.1
        }
       }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animateKeyframes(withDuration: PULSE_ANIMATION_DURATION,
                                delay: 0,
                                options: [.autoreverse, .repeat, .allowUserInteraction],
                                animations: {
            self.label.transform = CGAffineTransform(scaleX: 2.0, y: 2.0).concatenating(CGAffineTransform(rotationAngle: .pi))
            
            self.label.textColor = .green
            }, completion: nil)
        }
    
    

    @IBAction func tapped(_ sender: Any) {
        counter += 1
        label.text = String(counter)
        if counter == 30 {
            print("You're done! You took \(time) seconds")
            UIView.animate(withDuration: EXIT_ANIMATION_DURATION){
                self.view.backgroundColor = .red
            }
            UIView.animate(withDuration: EXIT_ANIMATION_DURATION, animations: {
                self.view.backgroundColor = .red
            }){(_) in
                self.performSegue(withIdentifier: ClickerViewController.UNWIND_IDENTIFIER, sender: self)
        }
    }
    
}
}
