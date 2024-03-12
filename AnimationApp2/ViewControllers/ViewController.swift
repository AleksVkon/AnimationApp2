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
    
    @IBOutlet var animationNameLabel: UILabel!
    @IBOutlet var animationCurveLabel: UILabel!
    @IBOutlet var animationForceLabel: UILabel!
    @IBOutlet var animationDurationLabel: UILabel!
    @IBOutlet var animationDelayLabel: UILabel!
    
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
        
        runButton.setTitle("Run \(currentAnimation.animationName)", for: .normal)
        animationNameLabel.text = "present: \(currentAnimation.animationName)"
        animationCurveLabel.text = "curve: \(currentAnimation.curveName)"
        animationDelayLabel.text = "delay: \(String(format: "%.2f", currentAnimation.delay))"
        animationForceLabel.text = "force: \(String(format: "%.2f", currentAnimation.force))"
        animationDurationLabel.text = "duration: \(String(format: "%.2f", currentAnimation.duration))"
    }
    
}

