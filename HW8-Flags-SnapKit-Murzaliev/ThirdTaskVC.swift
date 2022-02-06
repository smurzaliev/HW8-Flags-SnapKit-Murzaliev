//
//  ThirdTaskVC.swift
//  HW8-Flags-SnapKit-Murzaliev
//
//  Created by Samat Murzaliev on 06.02.2022.
//
//

import UIKit
import SnapKit

class ThirdTaskVC: UIViewController {
    
    let img1: UIImageView = {
        let image = UIImageView(image: UIImage(named: "Background"))
        return image
    }()
    
    let appleLogo: UIImageView = {
        let logo = UIImageView(image: UIImage(named: "apple logo"))
        return logo
    }()
    
    let googleLogo: UIImageView = {
        let logo = UIImageView(image: UIImage(named: "google logo"))
        return logo
    }()
    
    let fbLogo: UIImageView = {
        let logo = UIImageView(image: UIImage(named: "fb logo"))
        return logo
    }()
    
    let loginButton: UIButton = {
       let button = UIButton()
        button.setTitle("LOGIN", for: .normal)
        button.backgroundColor = .blue
        return button
    }()
    
    
    let loginLabel: UILabel = {
        let label = UILabel()
        label.text = "Login"
        label.font = .systemFont(ofSize: 22)
        label.textColor = .black
        return label
    }()
    
    let loginField: UITextField = {
        let textF = UITextField()
        textF.placeholder = "Enter your login"
        
        textF.borderStyle = .roundedRect
        
        return textF
    }()
    
    let passwField: UITextField = {
        let textF = UITextField()
        textF.placeholder = "Enter your password"
        
        textF.borderStyle = .roundedRect
        
        return textF
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(img1)
        img1.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.equalTo(1)
        }
        
        
        view.addSubview(loginLabel)
        loginLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(250)
            make.left.equalToSuperview().offset(50)
        }
        
        view.addSubview(loginField)
        loginField.snp.makeConstraints { make in
            make.top.equalTo(loginLabel.snp.bottom).offset(20)
            make.left.equalToSuperview().offset(50)
            make.width.equalToSuperview().dividedBy(1.5)
            
        }
        
        view.addSubview(passwField)
        passwField.snp.makeConstraints { make in
            make.top.equalTo(loginField.snp.bottom).offset(20)
            make.left.equalToSuperview().offset(50)
            make.width.equalToSuperview().dividedBy(1.5)
            
        }
        
        view.addSubview(loginButton)
        loginButton.snp.makeConstraints { make in
            make.top.equalTo(passwField.snp.bottom).offset(20)
            make.left.equalToSuperview().offset(50)
            make.width.equalToSuperview().dividedBy(1.5)
        }
        
        view.addSubview(appleLogo)
        appleLogo.snp.makeConstraints { make in
            make.top.equalTo(loginButton.snp.bottom).offset(30)
            make.left.equalToSuperview().offset(50)
        }
        
        view.addSubview(googleLogo)
        googleLogo.snp.makeConstraints { make in
            make.top.equalTo(loginButton.snp.bottom).offset(30)
            make.left.equalTo(appleLogo.snp.right).offset(10)
        }
        
        view.addSubview(fbLogo)
        fbLogo.snp.makeConstraints { make in
            make.top.equalTo(loginButton.snp.bottom).offset(30)
            make.left.equalTo(googleLogo.snp.right).offset(10)
        }
    }
    
    
    
}

