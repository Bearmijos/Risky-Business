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
    
}
