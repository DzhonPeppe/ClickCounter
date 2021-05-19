//
//  ViewController.swift
//  Click Counter
//
//  Created by John Peppe on 19.05.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var label: UILabel!
    var label2: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // label
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 60, height: 60)
        label.text = "0"
        view.addSubview(label)
        self.label = label
        
        // button
        let button = UIButton()
        button.frame = CGRect(x: 150, y: 300, width: 90, height: 60)
        button.setTitle("Increment", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button)
        
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControl.Event.touchUpInside)
        
        let button2 = UIButton()
        button2.frame = CGRect(x: 150, y: 400, width: 90, height: 60)
        button2.setTitle("Decrement", for: .normal)
        button2.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button2)
        
        button2.addTarget(self, action: #selector(ViewController.decrementCount), for: UIControl.Event.touchUpInside)
    }
    
    
    @objc func incrementCount() {
        self.count += 1
        self.label.text = "\(self.count)"
    }
    
    @objc func decrementCount() {
        self.count -= 1
        self.label.text = "\(self.count)"
    }


}

