//
//  HomeViewController.swift
//  BDB-No-StoryBoard
//
//  Created by Kurt on 2021-11-09.
//

import UIKit

final class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        setupView()
    }
    
    func setupView() {
        
        let margin = view.layoutMarginsGuide
        
        let title = UILabel()
        view.addSubview(title)
        title.translatesAutoresizingMaskIntoConstraints = false
        title.text = "welcome"
        title.textAlignment = .center
//        title.leadingAnchor.constraint(equalTo: margin.leadingAnchor).isActive = true
//        title.trailingAnchor.constraint(equalTo: margin.trailingAnchor).isActive = true
//        title.topAnchor.constraint(equalTo: margin.topAnchor, constant: CGFloat(500)).isActive = true
        title.centerXAnchor.constraint(equalTo: margin.centerXAnchor).isActive = true
        title.centerYAnchor.constraint(equalTo: margin.centerYAnchor, constant: CGFloat(-100)).isActive = true
        
        
    }
    
}

//Testing
