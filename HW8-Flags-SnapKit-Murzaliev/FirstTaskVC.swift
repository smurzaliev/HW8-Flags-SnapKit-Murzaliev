//
//  FirstTaskVC.swift
//  HW8-Flags-SnapKit-Murzaliev
//
//  Created by Samat Murzaliev on 06.02.2022.
//


import UIKit
import SnapKit

class FirstTaskVC: UIViewController {
    
    var flagRussia: UIStackView = {
        let flag = UIStackView()
        flag.axis = .vertical
        flag.distribution = .fillEqually
        return flag
    }()
    
    var flagFrance: UIStackView = {
        let flag = UIStackView()
        flag.axis = .horizontal
        flag.distribution = .fillEqually
        
        
        return flag
    }()
    
    let img1: UIImageView = {
        let image = UIImageView(image: UIImage(named: "Background"))
        
        return image
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(img1)
        img1.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.equalTo(1)
        }
        
        
        view.addSubview(flagFrance)
        flagFrance.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(150)
            make.width.equalToSuperview()
            make.height.equalToSuperview().dividedBy(4)
        }

        view.addSubview(flagRussia)
        flagRussia.snp.makeConstraints { make in
            make.top.equalTo(flagFrance.snp.bottom).offset(50)
            make.width.equalToSuperview()
            make.height.equalToSuperview().dividedBy(4)
        }
        
        let franceLine1 = UIView()
        let franceLine2 = UIView()
        let franceLine3 = UIView()
        
        franceLine1.backgroundColor = .blue
        franceLine2.backgroundColor = .white
        franceLine3.backgroundColor = .red
        
        flagFrance.addArrangedSubview(franceLine1)
        flagFrance.addArrangedSubview(franceLine2)
        flagFrance.addArrangedSubview(franceLine3)

        let russiaLine1 = UIView()
        let russiaLine2 = UIView()
        let russiaLine3 = UIView()
        
        russiaLine1.backgroundColor = .white
        russiaLine2.backgroundColor = .blue
        russiaLine3.backgroundColor = .red
        
        flagRussia.addArrangedSubview(russiaLine1)
        flagRussia.addArrangedSubview(russiaLine2)
        flagRussia.addArrangedSubview(russiaLine3)
        
        
    }
    
    
}

