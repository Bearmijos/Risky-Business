//
//  ViewController.swift
//  Hackathon
//
//  Created by Jessica Zhou on 8/27/19.
//  Copyright © 2019 Jessica Zhou. All rights reserved.
//

import UIKit

class cardRecsView: UIViewController {
    
    @IBOutlet weak var platinumButton: UIButton!
    @IBOutlet weak var goldButton: UIButton!
    @IBOutlet weak var regButton: UIButton!
    
    @IBOutlet weak var platView: UIImageView!
    @IBOutlet weak var goldView: UIImageView!
    @IBOutlet weak var regView: UIImageView!
    
    @IBOutlet weak var platText: UITextView!
    @IBOutlet weak var goldText: UITextView!
    @IBOutlet weak var regText: UITextView!
    
    @IBOutlet weak var subTitle: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.platText.layer.cornerRadius = 10
        self.goldText.layer.cornerRadius = 10
        self.regText.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }
    
    var platState = false
    var goldState = false
    var regState = false
    
    @IBAction func platButtonTap(_ sender: UIButton) {
        UIView.animate(withDuration: 0.2) {
            if (!self.platState) {
                self.platView.transform = CGAffineTransform(translationX: 230, y: 0)
                self.platState = !self.platState
            } else {
                self.platView.transform = CGAffineTransform(translationX: 0, y: 0)
                self.platState = !self.platState
            }
        }
    }
    
    @IBAction func goldButtonTap(_ sender: UIButton) {
        UIView.animate(withDuration: 0.2) {
            if (!self.goldState) {
                self.goldView.transform = CGAffineTransform(translationX: 230, y: 0)
                self.goldState = !self.goldState
            } else {
                self.goldView.transform = CGAffineTransform(translationX: 0, y: 0)
                self.goldState = !self.goldState
            }
        }
    }
    
    @IBAction func regButtonTap(_ sender: UIButton) {
        UIView.animate(withDuration: 0.2) {
            if (!self.regState) {
                self.regView.transform = CGAffineTransform(translationX: 230, y: 0)
                self.regState = !self.regState
            } else {
                self.regView.transform = CGAffineTransform(translationX: 0, y: 0)
                self.regState = !self.regState
            }
        }
    }
    
    @IBAction func swiped(_ sender: UISwipeGestureRecognizer) {
        if sender.state == .ended {
            performSegue(withIdentifier: "toSpending", sender: sender)
        }
    }
}

