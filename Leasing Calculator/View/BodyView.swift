//
//  BodyView.swift
//  Leasing Calculator
//
//  Created by Andrey Kapitalov on 03.06.2022.
//

import UIKit

class BodyView: UIView {
    
// MARK: UI Elements
    lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        return stackView
    }()
    
    lazy var stackFullPrice: ForBodyStackView = {
        let stackView = ForBodyStackView()
        stackView.labelTitle.text = "СТОИМОСТЬ ПРЕДМЕТА ЛИЗИНГА"
        stackView.textField.placeholder = "10 000 000"
        return stackView
    }()
    
    lazy var stackDownPayment: ForBodyStackView = {
        let stackView = ForBodyStackView()
        stackView.labelTitle.text = "АВАНСОВЫЙ ПЛАТЕЖ"
        return stackView
    }()
    
    lazy var stackPeriodOfLeasing: ForBodyStackView = {
        let stackView = ForBodyStackView()
        stackView.labelTitle.text = "срок договра лизинга"
        return stackView
    }()
    
    lazy var stackAppreciation: ForBodyStackView = {
        let stackView = ForBodyStackView()
        stackView.labelTitle.text = "процент удорожания"
        return stackView
    }()
    
    
// MARK: Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

// MARK: Setup UI
    private func setupUI() {
        
        let stackSubviews = [stackFullPrice, stackDownPayment, stackPeriodOfLeasing, stackAppreciation]
        for view in stackSubviews {
            stackView.addArrangedSubview(view)
        }
        
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.spacing = 10
        stackView.backgroundColor = .systemMint
        
        addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
}
    

