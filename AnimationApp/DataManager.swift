//
//  DataManager.swift
//  AnimationApp
//
//  Created by Теона Магай on 27.04.2021.
//

import UIKit

class DataManager {
    
    static let shared = DataManager()
    
    let animationName = [
        "shake",
        "pop",
        "swing",
        "squeeze",
        "zoomIn",
        "fall",
        "wobble"
    ]
    
    let curve = [
        "spring",
        "linear",
        "easeIn",
        "easeOut",
        "linear",
        "easeIn",
        "easeInOut"
    ]
    
    let force = [1, 1.1, 1.2, 1.3, 1.4, 1.5, 1.6]
    
    let duration = [1, 1.1, 1.2, 1.3, 1.4, 1.5, 1.6]
    
    let delay = [0.1, 0.2, 0.25, 0.3, 0.4, 0.5, 0.6]
    
    let color: [UIColor] = [.blue, .magenta, .gray, .green, .red, .purple, .orange]
    
    private init() {}
    
}
