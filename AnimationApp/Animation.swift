//
//  Animation.swift
//  AnimationApp
//
//  Created by Теона Магай on 27.04.2021.
//
import UIKit

struct Animation {
    let animationName: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    let color: UIColor
}

extension Animation {
    static func getAnimations() -> [Animation] {
        
        var animations: [Animation] = []
        
        let animationNames = DataManager.shared.animationName.shuffled()
        let curves = DataManager.shared.curve.shuffled()
        let forces = DataManager.shared.force.shuffled()
        let durations = DataManager.shared.duration.shuffled()
        let delays = DataManager.shared.delay.shuffled()
        let colors = DataManager.shared.color.shuffled()
        
        for index in 0...6 {
                let animation = Animation(
                    animationName: animationNames[index],
                    curve: curves[index],
                    force: forces[index],
                    duration: durations[index],
                    delay: delays[index],
                    color: colors[index]
                )
                
                animations.append(animation)
            }
        
        return animations
    }
}
