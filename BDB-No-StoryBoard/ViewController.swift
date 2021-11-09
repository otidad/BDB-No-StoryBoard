//
//  ViewController.swift
//  BDB-No-StoryBoard
//
//  Created by Kurt on 2021-11-08.
//

import UIKit

class ViewController: UIViewController {

    private var launchScreenVC = LaunchScreenViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        view.backgroundColor = .white
//        navigationItem.title = "Programmatic UI"
        let margins = view.layoutMarginsGuide
//        createForms(margins: margins)
        
        
    }
    
    func setupView() {
        addChild(launchScreenVC)
        view.addSubview(launchScreenVC.view)
        launchScreenVC.didMove(toParent: self)
    }

//    func createForms(margins: UILayoutGuide) {
//        let userNameSV = getStackView()
//
//        let userLabel = UILabel()
//        userLabel.text = "UserName"
//        userLabel.textAlignment = .right
//        userLabel.backgroundColor = .cyan
//        userNameSV.addArrangedSubview(userLabel)
//
//        let userNameTF = UITextField()
//        userNameTF.placeholder = "enter your username"
//        userNameTF.textAlignment = .left
//        userNameSV.addArrangedSubview(userNameTF)
//
//        userNameSV.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
//        userNameSV.trailingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
//        userNameSV.topAnchor.constraint(equalTo: margins.topAnchor, constant: 100).isActive = true
//
//        let emailSV = getStackView()
//
//        let emailLbl = UILabel()
//        emailLbl.text = "Email"
//        emailLbl.textAlignment = .right
//        emailLbl.backgroundColor = .cyan
//        emailSV.addArrangedSubview(emailLbl)
//
//        let emailTF = UITextField()
//        emailTF.placeholder = "type your email"
//        emailTF.textContentType = .emailAddress
//        emailTF.textAlignment = .left
//        emailSV.addArrangedSubview(emailTF)
//
//        emailSV.topAnchor.constraint(equalTo: userNameSV.bottomAnchor, constant: 20).isActive = true
//        emailSV.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
//        emailSV.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
//
//        let passwordSV = getStackView()
//
//        let passwordLbl = UILabel()
//        passwordLbl.text = "Password"
//        passwordLbl.textAlignment = .right
//        passwordLbl.backgroundColor = .cyan
//        passwordSV.addArrangedSubview(passwordLbl)
//
//        let passwordTF = UITextField()
//        passwordTF.placeholder = "type your password"
//        passwordTF.textContentType = .password
//        passwordTF.textAlignment = .left
//        passwordTF.isSecureTextEntry = true
//        passwordSV.addArrangedSubview(passwordTF)
//
//        passwordSV.topAnchor.constraint(equalTo: emailSV.bottomAnchor, constant: 20).isActive = true
//        passwordSV.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
//        passwordSV.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
//
//        let submitSV = getStackView()
//        let btn = UIButton()
//        btn.backgroundColor = .systemGreen
//        btn.setTitle("Submit", for: .normal)
//        btn.addTarget(self, action: #selector(submitForm), for: .touchUpInside)
//        submitSV.addArrangedSubview(btn)
//
//        submitSV.topAnchor.constraint(equalTo: passwordSV.bottomAnchor, constant: 20).isActive = true
//        submitSV.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
//        submitSV.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
//    }
    
    private func getStackView() -> UIStackView {
        let sv = UIStackView()
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.heightAnchor.constraint(equalToConstant: CGFloat(50)).isActive = true
        sv.axis = .horizontal
        sv.spacing = CGFloat(10)
        sv.distribution = .fillEqually
        view.addSubview(sv)
        return sv
    }
    
    @objc func submitForm() {
        print("submit form")
    }

}

