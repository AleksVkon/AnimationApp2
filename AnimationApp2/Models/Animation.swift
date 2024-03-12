//
//  Animation.swift
//  AnimationApp2
//
//  Created by Aleksey Konchyts on 12.03.24.
//

import Foundation

struct Animations {
    var animationName: String
    var curveName: String
    var force: Double
    var duration: Double
    var delay: Double
    
    static func getAnimation() -> Animations {
        let currentAnimation = Animations(
            animationName: allAnimations.randomElement() ?? "",
            curveName: allCurves.randomElement() ?? "",
            force: Double.random(in: 1..<2),
            duration: Double.random(in: 1..<2),
            delay: Double.random(in: 0.3...0.5)
        )
        return currentAnimation
    }
}
