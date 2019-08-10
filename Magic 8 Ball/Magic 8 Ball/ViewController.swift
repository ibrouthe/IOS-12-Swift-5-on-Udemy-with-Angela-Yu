//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Ib Routhe on 07/08/2019.
//  Copyright © 2019 Ib Routhe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let ballArray :[String] = ["ball1","ball2","ball3","ball4","ball5"]
    
    var randomBallNumber :Int = 0
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func askButtonPressed(_ sender: Any) {
        newBallImage()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        newBallImage()

    }

    func newBallImage(){
        
        randomBallNumber = Int.random(in: 0...4)
        
        imageView.image = UIImage (named: ballArray[randomBallNumber])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
}

