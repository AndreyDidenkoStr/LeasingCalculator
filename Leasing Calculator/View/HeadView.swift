//
//  HeadView.swift
//  Leasing Calculator
//
//  Created by Andrey Kapitalov on 03.06.2022.
//

import UIKit

class HeadView: UIView {
    
    // MARK: UI Elements
    lazy var labelTitleMonthlyPayment: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = UIFont(name: "Monaco", size: 20)
        label.font = label.font.withSize(20)
        label.textColor = .darkGray
        label.text = "ЕЖЕМЕСЯЧНЫЙ ПЛАТЕЖ"
        return label
    }()
    
    lazy var labelMonthlyPayment: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = UIFont(name: "Monaco", size: 20)
        label.font = label.font.withSize(40)
        label.textColor = .gray
        label.text = "0 000 000"
        return label
    }()
    
    lazy var buttonShowPaymentShedule: UIButton = {
        let button = UIButton()
        button.backgroundColor = .gray
        button.setTitle("ПОКАЗАТЬ ГРАФИК", for: .normal)
        return button
    }()
    
    // MARK: Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .systemGroupedBackground
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // MARK: Setup UI
    func setupUI() {
        addHeadSubviews()
        sutupHeadConstraints()
    }
    
    // MARK: addSubviews
    func addHeadSubviews() {
        addSubview(labelTitleMonthlyPayment)
        addSubview(labelMonthlyPayment)
        addSubview(buttonShowPaymentShedule)
    }
    
    // MARK: Constraints
    func sutupHeadConstraints() {
        
        labelTitleMonthlyPayment.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            labelTitleMonthlyPayment.centerXAnchor.constraint(equalTo: centerXAnchor),
            labelTitleMonthlyPayment.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            labelTitleMonthlyPayment.widthAnchor.constraint(equalToConstant: 300),
            labelTitleMonthlyPayment.heightAnchor.constraint(equalToConstant: 30)
        ])
        
        labelMonthlyPayment.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            labelMonthlyPayment.centerXAnchor.constraint(equalTo: centerXAnchor),
            labelMonthlyPayment.topAnchor.constraint(equalTo: labelTitleMonthlyPayment.bottomAnchor, constant: 10),
            labelMonthlyPayment.widthAnchor.constraint(equalToConstant: 300),
            labelMonthlyPayment.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        buttonShowPaymentShedule.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            buttonShowPaymentShedule.centerXAnchor.constraint(equalTo: centerXAnchor),
            buttonShowPaymentShedule.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20),
            buttonShowPaymentShedule.widthAnchor.constraint(equalToConstant: 300),
            buttonShowPaymentShedule.heightAnchor.constraint(equalToConstant: 30)
        ])
        
        
        
    }
    
    
    
}
