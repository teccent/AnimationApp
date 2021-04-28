//
//  AnimationViewController.swift
//  AnimationApp
//
//  Created by Теона Магай on 27.04.2021.
//

import Spring

class AnimationViewController: UIViewController {
    
    let animations = Animation.getAnimations()

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    @IBOutlet var mainView: SpringView!
    @IBOutlet var animationButton: UIButton!

    
    @IBAction func runAnimation(_ sender: UIButton) {
        
        let name = animations.randomElement()?.animationName
        let curve = animations.randomElement()?.curve
        let force = animations.randomElement()?.force
        let duration = animations.randomElement()?.duration
        let delay = animations.randomElement()?.delay
        let color = animations.randomElement()?.color
        
        animationButton.setTitle("Run \(String(describing: name!))", for: .normal)
        
        nameLabel.text = "animation: \(String(describing: name!))"
        curveLabel.text = "curve: \(String(describing: curve!))"
        forceLabel.text = "force: \(String(describing: force!))"
        durationLabel.text = "duration: \(String(describing: duration!))"
        delayLabel.text = "delay: \(String(describing: delay!))"
        
        mainView.animation = name!
        mainView.curve = curve!
        mainView.force = CGFloat(force!)
        mainView.duration = CGFloat(duration!)
        mainView.delay = CGFloat(delay!)
        mainView.backgroundColor = color
        mainView.animate()
    
    }
}
