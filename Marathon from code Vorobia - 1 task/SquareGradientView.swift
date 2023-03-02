//
//  SquareGradientView.swift
//  Marathon from code Vorobia - 1 task
//
//  Created by Виталий Троицкий on 02.03.2023.
//

import UIKit

class SquareGradientView: UIView {
    
   private let gradient = CAGradientLayer()
    
    init (radius: CGFloat, colorGradient: [CGColor], shadowOpacity: Float) {
        super.init(frame: .zero)
        layer.shadowOpacity = 0.85
        layer.shadowRadius = 20
        
        gradient.cornerRadius = 20
        gradient.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradient.endPoint = CGPoint(x: 1.0, y: 1.0)
        gradient.frame = bounds
        var colors = [CGColor]()
        for color in colorGradient {
            colors.append(color)
        }
        gradient.colors = colors
        layer.addSublayer(gradient)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        gradient.frame = bounds
    }
    
}
