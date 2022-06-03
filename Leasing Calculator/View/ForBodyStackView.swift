//
//  ForBodyStackView.swift
//  Leasing Calculator
//
//  Created by Andrey Kapitalov on 03.06.2022.
//

import UIKit

class ForBodyStackView: UIView {
    
    // MARK: UI Elements
    lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        return stackView
    }()
    
    lazy var labelTitle: UILabel = {
        let label = UILabel()
        label.backgroundColor = .systemGray5
        label.textAlignment = .center
        label.font = UIFont(name: "Monaco", size: 20)
        label.font = label.font.withSize(15)
        label.textColor = .darkGray
        return label
    }()
    
    lazy var textField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .systemGray5
        textField.keyboardType = .numberPad
        textField.textAlignment = .center
        textField.font = UIFont(name: "Monaco", size: 40)
        textField.font = textField.font?.withSize(40)
        textField.textColor = .darkGray
        return textField
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
        addSubview(labelTitle)
        addSubview(textField)
        
        let stackSubviews = [textField, labelTitle]
        for view in stackSubviews {
            stackView.addArrangedSubview(view)
        }
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.alignment = .fill
        stackView.backgroundColor = .systemGray5
        
        addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        labelTitle.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            labelTitle.heightAnchor.constraint(equalToConstant: 30)
        ])
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
        
        
    }
}
