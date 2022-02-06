//
//  ViewController.swift
//  HW8-Flags-SnapKit-Murzaliev
//
//  Created by Samat Murzaliev on 06.02.2022.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let img1: UIImageView = {
        let image = UIImageView(image: UIImage(named: "Background"))
        
        return image
    }()
    
    let elem1: UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("Задание 1", for: .normal)
        view.tintColor = .white
        view.backgroundColor = UIColor.blue
        view.layer.cornerRadius = 9
        
        view.layer.shadowColor = UIColor.gray.cgColor
        view.layer.shadowOffset = CGSize(width: 2, height: 2)
        view.layer.shadowRadius = CGFloat(2)
        
        view.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        return view
    } ()
    
    let elem2: UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("Задание 2", for: .normal)
        view.tintColor = .white
        view.backgroundColor = UIColor.blue
        view.layer.cornerRadius = 9
        
        view.layer.shadowColor = UIColor.gray.cgColor
        view.layer.shadowOffset = CGSize(width: 2, height: 2)
        view.layer.shadowRadius = CGFloat(2)
        
        view.addTarget(self, action: #selector(buttonAction2), for: .touchUpInside)

        return view
    } ()
    
    let elem3: UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("Задание 3", for: .normal)
        view.tintColor = .white
        view.backgroundColor = UIColor.blue
        view.layer.cornerRadius = 9
        
        view.layer.shadowColor = UIColor.gray.cgColor
        view.layer.shadowOffset = CGSize(width: 2, height: 2)
        view.layer.shadowRadius = CGFloat(2)
        
        view.addTarget(self, action: #selector(buttonAction3), for: .touchUpInside)

        return view
    } ()
    
    let elem4: UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("Задание 4 (ДОП)", for: .normal)
        view.tintColor = .white
        view.backgroundColor = UIColor.blue
        view.layer.cornerRadius = 9
        
        view.layer.shadowColor = UIColor.gray.cgColor
        view.layer.shadowOffset = CGSize(width: 2, height: 2)
        view.layer.shadowRadius = CGFloat(2)
        
        view.addTarget(self, action: #selector(buttonAction4), for: .touchUpInside)

        return view
    } ()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(img1)
        img1.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.equalTo(1)
        }
        
        view.addSubview(elem1)

        elem1.snp.makeConstraints { make in
           
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(240)
            
            make.width.equalToSuperview().dividedBy(2.5)
            make.height.equalToSuperview().dividedBy(17)
        }
        
        
        
        view.addSubview(elem2)
        elem2.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(elem1.snp.bottom).offset(20)
            
            make.width.equalToSuperview().dividedBy(2.5)
            make.height.equalToSuperview().dividedBy(17)

        }
        
        view.addSubview(elem3)
        elem3.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(elem2.snp.bottom).offset(20)
            
            make.width.equalToSuperview().dividedBy(2.5)
            make.height.equalToSuperview().dividedBy(17)

        }
        
        view.addSubview(elem4)
        elem4.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(elem3.snp.bottom).offset(20)
            
            make.width.equalToSuperview().dividedBy(2.5)
            make.height.equalToSuperview().dividedBy(17)

        }
    }

    @objc func buttonAction(sender: UIButton!) {
        present(FirstTaskVC(), animated: true)
        
    }
    
    @objc func buttonAction2(sender: UIButton!) {
        present(SecondTaskVC(), animated: true)
        
    }
    
    @objc func buttonAction3(sender: UIButton!) {
        present(ThirdTaskVC(), animated: true)
        
    }
    
    @objc func buttonAction4(sender: UIButton!) {
        present(FourthTaskVC(), animated: true)
        
    }
}


