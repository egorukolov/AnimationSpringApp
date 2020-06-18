//
//  Animation.swift
//  AnimationSpring
//
//  Created by Egor Ukolov on 17.06.2020.
//  Copyright © 2020 Egor Ukolov. All rights reserved.
//

import Spring

struct Animation {
    let preset: String
    let curve: String
    let force: CGFloat
    let duration: CGFloat
}

extension Animation {
    
    static func getAnimationType() -> [Animation] {
        
        var springAnimations: [Animation] = []
        
        let data = DataManager.shared
        
        data.animationPresets.shuffle()
        data.animationCurves.shuffle()
        
        for index in 0..<data.animationPresets.count {
            
            let animationType = Animation(preset: data.animationPresets[index].rawValue,
                                          curve: data.animationCurves[index].rawValue,
                                          force: CGFloat.random(format: "%.2f", in: 1..<5),
                                          duration: CGFloat.random(in: 1..<5))
            
            springAnimations.append(animationType)
        }
        
        return springAnimations
        
    }
}
