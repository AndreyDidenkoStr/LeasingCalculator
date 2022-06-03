//
//  ViewController.swift
//  Leasing Calculator
//
//  Created by Andrey Kapitalov on 03.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let customView = HeadView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemIndigo
        
        view.addSubview(customView)
        
        customView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            customView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            customView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            customView.heightAnchor.constraint(equalToConstant: view.bounds.height / 5),
            customView.widthAnchor.constraint(equalToConstant: view.bounds.width)
        ])
        
    }


}

