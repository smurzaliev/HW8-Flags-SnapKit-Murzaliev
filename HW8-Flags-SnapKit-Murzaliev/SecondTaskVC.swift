//
//  SecondTaskVC.swift
//  HW8-Flags-SnapKit-Murzaliev
//
//  Created by Samat Murzaliev on 06.02.2022.
//


import UIKit
import SnapKit

class SecondTaskVC: UIViewController {
    
    let flagRussia: UIStackView = {
        let flag = UIStackView()
        flag.axis = .vertical
        flag.distribution = .fillEqually
        return flag
    }()
    
    let flagFrance: UIStackView = {
        let flag = UIStackView()
        flag.axis = .horizontal
        flag.distribution = .fillEqually
        
        return flag
    }()
    
    let inkFlag: UIStackView = {
        let flag = UIStackView()
        flag.axis = .vertical
        flag.distribution = .fillEqually
        
        return flag
    }()
    
    let img1: UIImageView = {
        let image = UIImageView(image: UIImage(named: "Background"))
        
        return image
    }()
    
    let britFlagLayer1 = UIView()
    let britFlagLayer2 = UIView()
    let britFlagLayer3 = UIView()
    let britFlagLayer4 = UIView()
    let britFlagLayer5 = UIView()
    let britFlagLayer6 = UIView()
    let britFlagLayer7 = UIView()
    let britFlagLayer8 = UIView()
    let britBackground = UIView()
    
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
            make.top.equalToSuperview().offset(5)
            make.width.equalToSuperview()
            make.height.equalToSuperview().dividedBy(5)
        }
        
        view.addSubview(flagRussia)
        flagRussia.snp.makeConstraints { make in
            make.top.equalTo(flagFrance.snp.bottom).offset(10)
            make.width.equalToSuperview()
            make.height.equalToSuperview().dividedBy(5)
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
        
        view.addSubview(inkFlag)
        inkFlag.snp.makeConstraints { make in
            make.top.equalTo(flagRussia.snp.bottom).offset(10)
            make.width.equalToSuperview()
            make.height.equalToSuperview().dividedBy(5)
        }
        let inkLine1 = UIView()
        let inkLine2 = UIView()
        let inkLine3 = UIView()
        let inkLine4 = UIView()
        let inkLine5 = UIView()
        let inkLine6 = UIView()
        let inkLine7 = UIView()
        
        inkLine1.backgroundColor = .red
        inkLine2.backgroundColor = .orange
        inkLine3.backgroundColor = .yellow
        inkLine4.backgroundColor = .green
        inkLine5.backgroundColor = .cyan
        inkLine6.backgroundColor = .blue
        inkLine7.backgroundColor = .systemIndigo
        
        inkFlag.addArrangedSubview(inkLine1)
        inkFlag.addArrangedSubview(inkLine2)
        inkFlag.addArrangedSubview(inkLine3)
        inkFlag.addArrangedSubview(inkLine4)
        inkFlag.addArrangedSubview(inkLine5)
        inkFlag.addArrangedSubview(inkLine6)
        inkFlag.addArrangedSubview(inkLine7)
        
        view.addSubview(britBackground)
        britBackground.backgroundColor = .blue

        britBackground.snp.makeConstraints { make in
            make.top.equalTo(inkFlag.snp.bottom).offset(8)
            make.width.equalToSuperview()
            make.height.equalToSuperview().dividedBy(5)
        }
        
        britFlagLayer1.backgroundColor = .white
        britFlagLayer2.backgroundColor = .white
        britFlagLayer3.backgroundColor = .red
        britFlagLayer4.backgroundColor = .red
        britFlagLayer5.backgroundColor = .white
        britFlagLayer6.backgroundColor = .white
        britFlagLayer7.backgroundColor = .red
        britFlagLayer8.backgroundColor = .red
        
        view.addSubview(britFlagLayer5)
        britFlagLayer5.snp.makeConstraints { make in
            make.height.equalToSuperview().dividedBy(21)
            make.width.equalToSuperview().multipliedBy(1.5)
            make.top.equalTo(inkFlag.snp.bottom).offset(75)
            make.centerX.equalToSuperview()
        }
        view.addSubview(britFlagLayer8)
        britFlagLayer8.snp.makeConstraints { make in
            make.height.equalToSuperview().dividedBy(28)
            make.width.equalToSuperview().multipliedBy(1.5)
            make.top.equalTo(inkFlag.snp.bottom).offset(75)
            make.centerX.equalToSuperview()
        }
        
        view.addSubview(britFlagLayer1)
        britFlagLayer1.snp.makeConstraints { make in
            make.height.equalToSuperview().dividedBy(21)
            make.width.equalToSuperview().multipliedBy(1.5)
            make.top.equalTo(inkFlag.snp.bottom).offset(70)
            make.centerX.equalToSuperview()
        }
        view.addSubview(britFlagLayer4)
        britFlagLayer4.snp.makeConstraints { make in
            make.height.equalToSuperview().dividedBy(28)
            make.width.equalToSuperview().multipliedBy(1.5)
            make.top.equalTo(inkFlag.snp.bottom).offset(75)
            make.centerX.equalToSuperview()
        }
        view.addSubview(britFlagLayer2)
        britFlagLayer2.snp.makeConstraints { make in
            make.height.equalToSuperview().dividedBy(5)
            make.width.equalTo(self.view.frame.width / 8)
            make.top.equalTo(inkFlag.snp.bottom).offset(5)
            make.centerX.equalToSuperview()
        }
        view.addSubview(britFlagLayer6)
        britFlagLayer6.snp.makeConstraints { make in
            make.height.equalToSuperview().dividedBy(21)
            make.width.equalToSuperview().multipliedBy(1.5)
            make.top.equalTo(inkFlag.snp.bottom).offset(75)
            make.centerX.equalToSuperview()
        }
        view.addSubview(britFlagLayer7)
        britFlagLayer7.snp.makeConstraints { make in
            make.height.equalToSuperview().dividedBy(28)
            make.width.equalToSuperview().multipliedBy(1.5)
            make.top.equalTo(inkFlag.snp.bottom).offset(75)
            make.centerX.equalToSuperview()
        }
        view.addSubview(britFlagLayer3)
        britFlagLayer3.snp.makeConstraints { make in
            make.height.equalToSuperview().dividedBy(5)
            make.width.equalTo(self.view.frame.width / 12)
            make.top.equalTo(inkFlag.snp.bottom).offset(5)
            make.centerX.equalToSuperview()
        }
        
        rotate()
        
    }
    
    func rotate(){
        UIView.animate(withDuration: 0.0, animations: {
            self.britFlagLayer5.transform = CGAffineTransform(rotationAngle: (17 * .pi) / 180.0)
            })
        UIView.animate(withDuration: 0.0, animations: {
            self.britFlagLayer8.transform = CGAffineTransform(rotationAngle: (17 * .pi) / 180.0)
            })
        UIView.animate(withDuration: 0.0, animations: {
            self.britFlagLayer1.transform = CGAffineTransform(rotationAngle: (163 * .pi) / 180.0)
        })
        UIView.animate(withDuration: 0.0, animations: {
            self.britFlagLayer4.transform = CGAffineTransform(rotationAngle: (163 * .pi) / 180.0)
        })
       
       
}
}

