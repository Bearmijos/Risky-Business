//
//  ViewController.swift
//  Hackathon
//
//  Created by Campbell Affleck on 8/27/19.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Variables
    @IBOutlet weak var breakdownView: UIView!
    @IBOutlet weak var cardsButton: UIButton!
    @IBOutlet weak var closeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpLayout()
    }

    //MARK: Functions
    func setUpLayout() {
        breakdownView.layer.cornerRadius = 20
    }
    
    //MARK: Actions
    @IBAction func cardsTapped(_ sender: UIButton) {
    }
    
    @IBAction func swiped(_ sender: UISwipeGestureRecognizer) {
        if sender.state == .ended {
            performSegue(withIdentifier: "toCards", sender: sender)
        }
    }
    
    @IBAction func closeTapped(_ sender: UIButton) {
    }
}
