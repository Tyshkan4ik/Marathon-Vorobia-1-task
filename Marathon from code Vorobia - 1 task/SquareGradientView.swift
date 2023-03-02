//
//  SquareGradientView.swift
//  Marathon from code Vorobia - 1 task
//
//  Created by Виталий Троицкий on 02.03.2023.
//

import UIKit

class SquareGradientView: UIView {
    
    private let gradient = CAGradientLayer()
    
    init(
        radius: CGFloat,
        colorGradient: [UIColor],
        shadowOpacity: Float,
        shadowRadius: CGFloat = 20
    ) {
        super.init(frame: .zero)
        
        gradient.cornerRadius = radius
        gradient.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradient.endPoint = CGPoint(x: 1.0, y: 1.0)
        gradient.colors = colorGradient.map { $0.cgColor }
        
        layer.shadowOpacity = shadowOpacity
        layer.shadowRadius = shadowRadius
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
