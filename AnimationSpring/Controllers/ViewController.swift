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
    
    @IBOutlet var button: SpringButton!
    
    @IBOutlet var firstLabel: UILabel!
    @IBOutlet var secondLabel: UILabel!
    @IBOutlet var thirdLabel: UILabel!
    
    var springAnimationCases = Animation.getAnimationType()
    
    private var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
    }

    @IBAction func startSpringAnimationButton(_ sender: SpringButton) {
        
        
        
        springAnimationCases.shuffle()
        
        let animationType = springAnimationCases[count]
        
        
        springAnimationView.animation = animationType.preset
        springAnimationView.curve = animationType.curve
        springAnimationView.force = animationType.force
        springAnimationView.duration = animationType.duration
        
        firstLabel.text = "Preset: \(animationType.preset)"
        secondLabel.text = "Curve: \(animationType.curve)"
        thirdLabel.text = "Force: \(animationType.force)"
        
        springAnimationView.animate()
        
        
        
        sender.titleLabel?.text = springAnimationCases[count + 1].curve
        sender.animate()
        
        count += 1
        
        if count >= springAnimationCases.count {
            
            count = 0
        }
        
        
    }
}
