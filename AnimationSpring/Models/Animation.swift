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
    
    let animationPresets: [Spring.AnimationPreset] = [
        .Shake,
        .Pop,
        .Morph,
        .Squeeze,
        .Wobble,
        .Swing,
        .FlipX,
        .FlipY,
        //.Fall,
//        .SqueezeLeft,
//        .SqueezeRight,
//        .SqueezeDown,
//        .SqueezeUp,
//        .SlideLeft,
//        .SlideRight,
//        .SlideDown,
//        .SlideUp,
       // .FadeIn,
//        .FadeOut,
//        .FadeInLeft,
//        .FadeInRight,
//        .FadeInDown,
//        .FadeInUp,
//        .ZoomIn,
//        .ZoomOut,
//        .Flash
    ]
    
    let animationCurves: [Spring.AnimationCurve] = [
        .EaseIn,
        .EaseOut,
        .EaseInOut,
        .Linear,
        .Spring,
        .EaseInSine,
        .EaseOutSine,
        .EaseInOutSine,
      //  .EaseInQuad,
//        .EaseOutQuad,
//        .EaseInOutQuad,
//        .EaseInCubic,
//        .EaseOutCubic,
//        .EaseInOutCubic,
//        .EaseInQuart,
//        .EaseOutQuart,
//        .EaseInOutQuart,
//        .EaseInQuint,
//        .EaseOutQuint,
//        .EaseInOutQuint,
//        .EaseInExpo,
//        .EaseOutExpo,
//        .EaseInOutExpo,
//        .EaseInCirc,
//        .EaseOutCirc,
//        .EaseInOutCirc,
//        .EaseInBack,
//        .EaseOutBack,
//        .EaseInOutBack
    ]
 
    for index in 0..<animationPresets.count {
        
        let animationType = Animation(preset: animationPresets[index].rawValue,
                                      curve: animationCurves[index].rawValue,
                                      force: CGFloat.random(in: 1..<5),
                                      duration: CGFloat.random(in: 1..<5))
        
        springAnimations.append(animationType)
    }
    
    return springAnimations
    
    }
}
