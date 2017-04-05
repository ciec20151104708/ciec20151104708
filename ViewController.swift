//
//  ViewController.swift
//  score
//
//  Created by s20151104708 on 17/3/27.
//  Copyright © 2017年 s20151104708. All rights reserved.
//

import UIKit
 var x : Int = 0
 var y : Int = 0
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBOutlet weak var A: UITextField!
        
    
    @IBOutlet weak var B: UITextField!
        

    @IBOutlet weak var X: UITextField!
    @IBAction func start(_ sender: Any) {
        x = 0
        y = 0
        A.text = "\(x)"
        B.text = "\(y)"
    }
   
    @IBAction func Aadd(_ sender: UIButton) {
        x = x + 1
        A.text = "\(x)"
        if x >= 10 && y >= 10{
            if x >= y + 2{
                X.text = "A选手获胜"
            }
        }else if  x > y && x == 11 {
            X.text = "A选手获胜"
            }
        
    }
    @IBAction func Badd(_ sender: Any) {
        y = y + 1
        B.text = "\(y)"
        if x >= 10 && y >= 10{
            if y >= x + 2{
                X.text = "B选手获胜"
            }
        }else if  y > x && y == 11 {
            X.text = "B选手获胜"
        }
    }
    
    @IBAction func Aback(_ sender: UIButton) {
        A.text = "\(x)"
        x = x - 1
        A.text = "\(x)"
    }
    @IBAction func Bback(_ sender: UIButton) {
        B.text = "\(y)"
        y = y - 1
        B.text = "\(y)"
    }
    @IBAction func end(_ sender: Any) {
        x = 0
        y = 0
        A.text = "\(x)"
        B.text = "\(y)"
        X.text = ""

    }
}
