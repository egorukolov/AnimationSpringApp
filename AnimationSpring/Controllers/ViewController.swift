//
//  ViewController.swift
//  AnimationSpring
//
//  Created by Egor Ukolov on 17.06.2020.
//  Copyright © 2020 Egor Ukolov. All rights reserved.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet var springAnimationView: SpringView!
    
    @IBOutlet var firstLabelInView: UILabel!
    @IBOutlet var secondLabelInView: UILabel!
    @IBOutlet var thirdLabelInView: UILabel!
    
    var springAnimationCases = Animation.getAnimationType()
    
    private var count = 0
    
    @IBAction func startSpringAnimationButton(_ sender: SpringButton) {
        
        let animationType = springAnimationCases[count]
        
        sender.setTitle(springAnimationCases[count + 1].preset, for: .normal)
        
        springAnimationView.animation = animationType.preset
        springAnimationView.curve = animationType.curve
        springAnimationView.force = animationType.force
        springAnimationView.duration = animationType.duration
        
        firstLabelInView.text = "Preset: \(animationType.preset)"
        secondLabelInView.text = "Curve: \(animationType.curve)"
        thirdLabelInView.text = "Force: \(animationType.force)"
        
        springAnimationView.animate()
        
        if springAnimationView.animation.count > count {
            count += 1
        } else {
            count -= springAnimationView.animation.count
        }
    }
}
