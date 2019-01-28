//
//  ViewController.swift
//  AnimationAssignment
//
//  Created by Genesis Mosquera on 1/28/19.
//  Copyright © 2019 Genesis Mosquera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var duck: UIImageView!
    
    @IBOutlet weak var dog: UIButton!
    
    
    private var animator: UIViewPropertyAnimator!
    override func viewDidLoad() {
        super.viewDidLoad()
        animator = UIViewPropertyAnimator(duration: 1.0, curve: .easeInOut, animations: {
            self.duck.transform = CGAffineTransform(scaleX: 10.0, y: 10.0)
        })

    }

    
    @IBAction func imageChanged(_ sender: Any) {
        if dog.imageView?.image == UIImage(named: "dog") {
            UIView.transition(with: dog, duration: 1.0, options: [.transitionCurlUp], animations: {
                self.dog.setImage(UIImage(named: "cat"), for: .normal)
            })
        } else {
            UIView.transition(with: dog, duration: 1.0, options: [.transitionCurlDown], animations: {
                self.dog.setImage(UIImage(named: "dog"), for: .normal)
            })
        }
    }
    
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        animator.fractionComplete = CGFloat(sender.value)
    }
    

}

