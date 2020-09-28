//
//  StartViewController.swift
//  Simpsons
//
//  Created by Kairzhan Kural on 9/28/20.
//  Copyright © 2020 Kairzhan Kural. All rights reserved.
//

import UIKit
import Spring

class StartViewController: UIViewController {

    @IBOutlet var sun: UIImageView!
    @IBOutlet var cloudOne: UIImageView!
    @IBOutlet var cloudTwo: UIImageView!
    @IBOutlet var titleLabel: SpringLabel!
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupAnimation()
    }

    @IBAction func startButton(_ sender: UIButton) {
        
    }
    
    private func setupAnimation() {
        UIView.animate(withDuration: 3) {
            self.sun.frame.origin.x += self.sun.frame.width
            self.cloudOne.frame.origin.x += self.cloudOne.frame.width
            self.cloudTwo.frame.origin.x -= self.cloudTwo.frame.width
        }
        animateSun()
        animateCloudOne()
        animateCloudTwo()
        animateTitle()
    }
    
    private func animateSun() {
        UIView.animateKeyframes(withDuration: 15, delay: 7, options: [], animations: {
            self.sun.frame.origin.x -= 10
        })
    }
    
    private func animateCloudOne() {
        UIView.animateKeyframes(withDuration: 7, delay: 4, options: [.repeat, .autoreverse], animations: {
            self.cloudOne.frame.origin.x -= 40
        })
    }
    
    private func animateCloudTwo() {
        UIView.animateKeyframes(withDuration: 7, delay: 4, options: [.repeat, .autoreverse], animations: {
            self.cloudTwo.frame.origin.x -= 20
        })
    }
    
    private func animateTitle() {
        titleLabel.animation = "squeezeDown"
        titleLabel.duration = 3
        titleLabel.animate()
    }
    
    
}

