//
//  ViewController.swift
//  Marathon from code Vorobia - 1 task
//
//  Created by Виталий Троицкий on 01.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    private var sideLenghtSquare = 150
    
    private lazy  var viewSquare: UIView = {
        let view = UIView()
        view.layer.shadowOpacity = 0.85
        view.layer.shadowRadius = 20
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupView()
        setupConstraints()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        setupRadiusAndGradientLayer(colorsGradirn: [UIColor.blue.cgColor, UIColor.cyan.cgColor])
    }
    
    private func setupView() {
        view.addSubview(viewSquare)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            viewSquare.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 100),
            viewSquare.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            viewSquare.heightAnchor.constraint(equalToConstant: CGFloat(sideLenghtSquare)),
            viewSquare.widthAnchor.constraint(equalToConstant: CGFloat(sideLenghtSquare))
        ])
    }
    
    private func setupRadiusAndGradientLayer(colorsGradirn: [CGColor]) {
        let gradient = CAGradientLayer()

        gradient.cornerRadius = 20
       gradient.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradient.endPoint = CGPoint(x: 1.0, y: 1.0)
        gradient.frame = viewSquare.bounds
        var colors = [CGColor]()
        for color in colorsGradirn {
            colors.append(color)
        }
        gradient.colors = colors
        viewSquare.layer.addSublayer(gradient)
    }
}

