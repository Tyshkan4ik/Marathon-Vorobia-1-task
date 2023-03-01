//
//  ViewController.swift
//  Marathon from code Vorobia - 1 task
//
//  Created by Виталий Троицкий on 01.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var viewSquare: UIView = {
        let view = UIView()
        view.backgroundColor = .brown
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
            viewSquare.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 100),
            viewSquare.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            viewSquare.heightAnchor.constraint(equalToConstant: 150),
            viewSquare.widthAnchor.constraint(equalToConstant: 150)
        ])
    }
    
    
    
}

