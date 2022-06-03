//
//  ViewController.swift
//  Leasing Calculator
//
//  Created by Andrey Kapitalov on 03.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let headView = HeadView()
    let bodyView = BodyView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGroupedBackground
        
        view.addSubview(headView)
        
        headView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            headView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            headView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            headView.heightAnchor.constraint(equalToConstant: view.bounds.height / 5),
            headView.widthAnchor.constraint(equalToConstant: view.bounds.width)
        ])
        
        view.addSubview(bodyView)
        
        bodyView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            bodyView.topAnchor.constraint(equalTo: headView.bottomAnchor),
            bodyView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bodyView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bodyView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30)
        ])
        
    }


}

