//
//  ViewController.swift
//  AnimationApp2
//
//  Created by Aleksey Konchyts on 12.03.24.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    
    @IBOutlet var animationView: SpringView!
    @IBOutlet var runButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animationView.layer.cornerRadius = 10
        runButton.layer.cornerRadius = 10
        
    }

    @IBAction func startAnimation() {
        let currentAnimation = Animations.getAnimation()
        
        animationView.animation = currentAnimation.animationName
        animationView.curve = currentAnimation.curveName
        animationView.force = currentAnimation.force
        animationView.duration = currentAnimation.duration
        animationView.delay = currentAnimation.delay
        animationView.animate()
        
        runButton.tex
    }
    
}

