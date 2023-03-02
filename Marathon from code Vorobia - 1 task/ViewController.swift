//
//  ViewController.swift
//  Marathon from code Vorobia - 1 task
//
//  Created by Виталий Троицкий on 01.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    private enum Constants {
        static let sideLenghtSquare: CGFloat = 150
        static let xPosition: CGFloat = 100
    }
    
    private lazy var viewSquare: SquareGradientView = {
        let view = SquareGradientView(
            radius: 20,
            colorGradient: [
                UIColor.blue,
                UIColor.cyan
            ],
            shadowOpacity: 0.8
        )
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupView()
        setupConstraints()
    }
    
    private func setupView() {
        view.addSubview(viewSquare)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            viewSquare.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: Constants.xPosition),
            viewSquare.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            viewSquare.heightAnchor.constraint(equalToConstant: Constants.sideLenghtSquare),
            viewSquare.widthAnchor.constraint(equalToConstant: Constants.sideLenghtSquare)
        ])
    }
}
