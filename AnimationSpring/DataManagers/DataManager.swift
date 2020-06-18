//
//  DataManager.swift
//  AnimationSpring
//
//  Created by Egor Ukolov on 18.06.2020.
//  Copyright © 2020 Egor Ukolov. All rights reserved.
//

import Spring

class DataManager {

static let shared = DataManager()
    
    var animationPresets: [Spring.AnimationPreset] = [
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
        
        var animationCurves: [Spring.AnimationCurve] = [
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
    
}
