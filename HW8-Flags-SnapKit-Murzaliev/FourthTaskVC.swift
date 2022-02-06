//
//  FourthTaskVC.swift
//  HW8-Flags-SnapKit-Murzaliev
//
//  Created by Samat Murzaliev on 06.02.2022.
//


import UIKit
import SnapKit

class FourthTaskVC: UIViewController {
    
    let img1: UIImageView = {
        let image = UIImageView(image: UIImage(named: "Background"))
        
        return image
    }()
    
    let label1: UILabel = {
        let label = UILabel()
        label.text = "0"
        label.textColor = .black
        label.textAlignment = .right
        label.font = .systemFont(ofSize: 30)
        label.backgroundColor = .gray
        return label
    }()
    
    let acButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("AC", for: .normal)
        
        button.backgroundColor = .brown
        
        return button
    }()
    
    let sevenButton: UIButton = {
        let button = UIButton()
        button.setTitle("7", for: .normal)
        
        button.backgroundColor = .brown
        return button
    }()
    
    let eightButton: UIButton = {
        let button = UIButton()
        button.setTitle("8", for: .normal)
        
        button.backgroundColor = .brown
        return button
    }()
    
    let nineButton: UIButton = {
        let button = UIButton()
        button.setTitle("9", for: .normal)
        
        button.backgroundColor = .brown
        return button
    }()
    
    let fourButton: UIButton = {
        let button = UIButton()
        button.setTitle("4", for: .normal)
        
        button.backgroundColor = .brown
        return button
    }()
    
    let fiveButton: UIButton = {
        let button = UIButton()
        button.setTitle("5", for: .normal)
        
        button.backgroundColor = .brown
        return button
    }()
    
    let divButton: UIButton = {
        let button = UIButton()
        button.setTitle("/", for: .normal)
        
        button.backgroundColor = .gray
        return button
    }()
    
    let sixButton: UIButton = {
        let button = UIButton()
        button.setTitle("6", for: .normal)
        
        button.backgroundColor = .brown
        return button
    }()
    
    let multButton: UIButton = {
        let button = UIButton()
        button.setTitle("*", for: .normal)
        
        button.backgroundColor = .gray
        return button
    }()
    
    let oneButton: UIButton = {
        let button = UIButton()
        button.setTitle("1", for: .normal)
        
        button.backgroundColor = .brown
        return button
    }()
    
    let twoButton: UIButton = {
        let button = UIButton()
        button.setTitle("2", for: .normal)
        
        button.backgroundColor = .brown
        return button
    }()
    
    let threeButton: UIButton = {
        let button = UIButton()
        button.setTitle("3", for: .normal)
        
        button.backgroundColor = .brown
        return button
    }()
    
    let minusButton: UIButton = {
        let button = UIButton()
        button.setTitle("-", for: .normal)
        
        button.backgroundColor = .gray
        return button
    }()
    
    let zeroButton: UIButton = {
        let button = UIButton()
        button.setTitle("0", for: .normal)
        
        button.backgroundColor = .brown
        return button
    }()
    
    let pointButton: UIButton = {
        let button = UIButton()
        button.setTitle(".", for: .normal)
        
        button.backgroundColor = .brown
        return button
    }()
    
    let plusButton: UIButton = {
        let button = UIButton()
        button.setTitle("+", for: .normal)
        
        button.backgroundColor = .brown
        return button
    }()
    
    let equalButton: UIButton = {
        let button = UIButton()
        button.setTitle("=", for: .normal)
        
        button.backgroundColor = .brown
        return button
    }()
    
    var line = "0"
    var masterLine = ""
    var result = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label1.text = line
        line = ""
        
        setConstraints()
        
        acButton.addTarget(.none, action: #selector(acButtonAction), for: .touchUpInside)
        
        oneButton.addTarget(.none, action: #selector(numButtonAction), for: .touchUpInside)
        twoButton.addTarget(.none, action: #selector(numButtonAction), for: .touchUpInside)
        twoButton.addTarget(.none, action: #selector(numButtonAction), for: .touchUpInside)
        threeButton.addTarget(.none, action: #selector(numButtonAction), for: .touchUpInside)
        fourButton.addTarget(.none, action: #selector(numButtonAction), for: .touchUpInside)
        fiveButton.addTarget(.none, action: #selector(numButtonAction), for: .touchUpInside)
        sixButton.addTarget(.none, action: #selector(numButtonAction), for: .touchUpInside)
        sevenButton.addTarget(.none, action: #selector(numButtonAction), for: .touchUpInside)
        eightButton.addTarget(.none, action: #selector(numButtonAction), for: .touchUpInside)
        nineButton.addTarget(.none, action: #selector(numButtonAction), for: .touchUpInside)
        zeroButton.addTarget(.none, action: #selector(numButtonAction), for: .touchUpInside)
        pointButton.addTarget(.none, action: #selector(numButtonAction), for: .touchUpInside)
        
        divButton.addTarget(.none, action: #selector(operButtonAction), for: .touchUpInside)
        multButton.addTarget(.none, action: #selector(operButtonAction), for: .touchUpInside)
        minusButton.addTarget(.none, action: #selector(operButtonAction), for: .touchUpInside)
        plusButton.addTarget(.none, action: #selector(operButtonAction), for: .touchUpInside)
        
        equalButton.addTarget(.none, action: #selector(eqButtonAction), for: .touchUpInside)

        
    }
    
    @objc func operButtonAction(sender: UIButton!) {
        masterLine = masterLine + line
        masterLine = masterLine + sender.currentTitle!
        label1.text = line

        line = ""
        
    }
    
    @objc func eqButtonAction(sender: UIButton!) {
        
        masterLine = masterLine + line
        
        let expr = NSExpression(format: masterLine as String)
        if let result1 = expr.expressionValue(with: nil, context: nil) as? Double {
            result = String(result1)
            
        } else {
            result = "Error"
        }
        
        label1.text = result
        line = ""
        masterLine = ""
        
    
        
    }
    
    
    @objc func acButtonAction() {
        label1.text = "0"
        masterLine = ""
        line = ""
    }
    
    @objc func numButtonAction(sender: UIButton!) {
        line = line + sender.currentTitle!
        label1.text = line
        
    }

    func setConstraints() {
        
        view.backgroundColor = .white
        view.addSubview(img1)
        img1.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.equalTo(1)
        }
        
        view.addSubview(label1)
        label1.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(150)
            make.width.equalToSuperview().dividedBy(1.3)
            make.right.equalToSuperview().offset(-20)
        }
        
        view.addSubview(acButton)
        acButton.snp.makeConstraints { make in
            make.top.equalTo(label1).offset(100)
            make.right.equalToSuperview().offset(-122)
            make.height.equalTo(60)
            make.width.equalTo(140)
            

        }
        
        view.addSubview(sevenButton)
        sevenButton.snp.makeConstraints { make in
            make.top.equalTo(acButton.snp.bottom).offset(30)
            make.left.equalToSuperview().offset(50)
            make.height.equalTo(60)
            make.width.equalTo(60)
        }
        
        view.addSubview(eightButton)
        eightButton.snp.makeConstraints { make in
            make.top.equalTo(acButton.snp.bottom).offset(30)
            make.left.equalTo(sevenButton.snp.right).offset(20)
            make.height.equalTo(60)
            make.width.equalTo(60)
        }
        
        view.addSubview(nineButton)
        nineButton.snp.makeConstraints { make in
            make.top.equalTo(acButton.snp.bottom).offset(30)
            make.left.equalTo(eightButton.snp.right).offset(20)
            make.height.equalTo(60)
            make.width.equalTo(60)
        }
        
        view.addSubview(divButton)
        divButton.snp.makeConstraints { make in
            make.top.equalTo(acButton.snp.top)
            make.left.equalTo(acButton.snp.right).offset(20)
            make.height.equalTo(60)
            make.width.equalTo(60)
        }
        
        view.addSubview(fourButton)
        fourButton.snp.makeConstraints { make in
            make.top.equalTo(sevenButton.snp.bottom).offset(10)
            make.left.equalToSuperview().offset(50)
            make.height.equalTo(60)
            make.width.equalTo(60)
        }
        
        view.addSubview(fiveButton)
        fiveButton.snp.makeConstraints { make in
            make.top.equalTo(sevenButton.snp.bottom).offset(10)
            make.left.equalTo(fourButton.snp.right).offset(20)
            make.height.equalTo(60)
            make.width.equalTo(60)
        }
        
        view.addSubview(sixButton)
        sixButton.snp.makeConstraints { make in
            make.top.equalTo(sevenButton.snp.bottom).offset(10)
            make.left.equalTo(fiveButton.snp.right).offset(20)
            make.height.equalTo(60)
            make.width.equalTo(60)
        }
        
        view.addSubview(multButton)
        multButton.snp.makeConstraints { make in
            make.top.equalTo(nineButton.snp.top)
            make.left.equalTo(nineButton.snp.right).offset(20)
            make.height.equalTo(60)
            make.width.equalTo(60)
        }
        
        view.addSubview(oneButton)
        oneButton.snp.makeConstraints { make in
            make.top.equalTo(fourButton.snp.bottom).offset(10)
            make.left.equalToSuperview().offset(50)
            make.height.equalTo(60)
            make.width.equalTo(60)
        }
        
        view.addSubview(twoButton)
        twoButton.snp.makeConstraints { make in
            make.top.equalTo(fourButton.snp.bottom).offset(10)
            make.left.equalTo(oneButton.snp.right).offset(20)
            make.height.equalTo(60)
            make.width.equalTo(60)
        }
        
        view.addSubview(threeButton)
        threeButton.snp.makeConstraints { make in
            make.top.equalTo(fourButton.snp.bottom).offset(10)
            make.left.equalTo(twoButton.snp.right).offset(20)
            make.height.equalTo(60)
            make.width.equalTo(60)
        }
        
        view.addSubview(minusButton)
        minusButton.snp.makeConstraints { make in
            make.top.equalTo(fourButton.snp.top)
            make.left.equalTo(sixButton.snp.right).offset(20)
            make.height.equalTo(60)
            make.width.equalTo(60)
        }
        
        view.addSubview(zeroButton)
        zeroButton.snp.makeConstraints { make in
            make.top.equalTo(oneButton.snp.bottom).offset(10)
            make.left.equalToSuperview().offset(50)
            make.height.equalTo(60)
            make.width.equalTo(60)
        }
        
        view.addSubview(pointButton)
        pointButton.snp.makeConstraints { make in
            make.top.equalTo(oneButton.snp.bottom).offset(10)
            make.left.equalTo(zeroButton.snp.right).offset(20)
            make.height.equalTo(60)
            make.width.equalTo(60)
        }
        
        view.addSubview(plusButton)
        plusButton.snp.makeConstraints { make in
            make.top.equalTo(oneButton.snp.top)
            make.left.equalTo(threeButton.snp.right).offset(20)
            make.height.equalTo(60)
            make.width.equalTo(60)
        }
        
        view.addSubview(equalButton)
        equalButton.snp.makeConstraints { make in
            make.top.equalTo(zeroButton.snp.top)
            make.left.equalTo(pointButton.snp.right).offset(20)
            make.height.equalTo(60)
            make.width.equalTo(140)
        }
    }
    
}

