//
//  LaunchScreen.swift
//  BDB-No-StoryBoard
//
//  Created by Kurt on 2021-11-09.
//

import UIKit

final class LaunchScreenViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupView()
    }
    
    func setupView() {
        
        let margins = view.layoutMarginsGuide
        
        let titleSV = UIStackView()
        view.addSubview(titleSV)
        titleSV.translatesAutoresizingMaskIntoConstraints = false
        titleSV.topAnchor.constraint(equalTo: margins.topAnchor, constant: CGFloat(50)).isActive = true
        titleSV.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
        titleSV.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
        titleSV.distribution = .fillEqually
//        titleSV.backgroundColor = .brown
        titleSV.spacing = CGFloat(100)
        titleSV.axis = .vertical
        
        let title = UILabel()
        title.text = "Welcome to BDB"
        title.textAlignment = .center
        title.textColor = .black
        titleSV.addArrangedSubview(title)
        
        let enterBTN = UIButton()
        enterBTN.backgroundColor = .systemGreen
        enterBTN.setTitle("Enter", for: .normal)
        enterBTN.addTarget(self, action: #selector(enter), for: .touchUpInside)
        titleSV.addArrangedSubview(enterBTN)
    }
    
    @objc func enter() {
        let homeVC = HomeViewController()
        homeVC.modalPresentationStyle = .fullScreen
        self.present(homeVC, animated: true)
//        navigationController?.pushViewController(homeVC, animated: false)
//        navigationController?.popToViewController(homeVC, animated: false)
    }
}
