//
//  ViewController.swift
//  OrderUpdate
//
//  Created by Александр Белый on 20.10.2024.
//

import UIKit




class ViewController: UIViewController {
    //MARK: Color
    let colorRedLight = UIColor(red: 255/255, green: 70/255, blue: 17/255, alpha: 0.1)
    let colorGrayLight = UIColor(red: 246/255, green: 246/255, blue: 246/255, alpha: 1)
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let scrollView = createScrollView()
        let containerView = createContainerView(scrollView: scrollView)
        
        let topBarOrder = createTopBarOrder(in: containerView)
        let mobileDivider = createMobileDivider(in: containerView, below: topBarOrder)
        let titileDesk = createTitleDesk(in: containerView, below: mobileDivider)
        let ButtonPromocode = createButtonPromocode(in: containerView, below: titileDesk)
        let promoCode = createPromoCode(in: containerView, below: ButtonPromocode)
        let promoCode2 = createPromoCode2(in: containerView, below: promoCode)
        let promoCode3 = createPromoCode3(in: containerView, below: promoCode2)
        let promoCode4 = createPromoCode4(in: containerView, below: promoCode3)
        let promoCode5 = createPromoCode5(in: containerView, below: promoCode4)
        let textLabel1 = createTextLabel1(in: containerView, below: promoCode)
        let textLabel2 = createTextLabel2(in: containerView, below: promoCode2)
        let textlabel3 = createTextLabel3(in: containerView, below: promoCode3)
        let textLabel4 = createTextLabel4(in: containerView, below: promoCode4)
        let textLabel5 = createTextLabel5(in: containerView, below: promoCode5)
        let closePromocode = createCloseButtonPromocode(in: containerView, below: promoCode5)
        let summ = createSummTable(in: containerView, below: closePromocode)
        
        setUPtextPromocode(textLabel1: textLabel1, textLabel2: textLabel2, textLabel3: textlabel3, textLabel4: textLabel4, textLabel5: textLabel5)
       }
    
    func setUPtextPromocode (textLabel1: UILabel, textLabel2: UILabel, textLabel3: UILabel, textLabel4: UILabel, textLabel5: UILabel) {
        textLabel1.text = "\(promo1.title)"
        textLabel2.text = "\(promo2.title)"
        textLabel3.text = "\(promo2.title)"
        textLabel4.text = "\(promo4.title)"
        textLabel5.text = "\(promo5.title)"
        }
      
    private func createScrollView() -> UIScrollView {
        let scrollView = UIScrollView()
        scrollView.isScrollEnabled = true
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            scrollView.leftAnchor.constraint(equalTo: view.leftAnchor),
            scrollView.rightAnchor.constraint(equalTo: view.rightAnchor)
        ])
        return scrollView
    }
    
    private func createContainerView(scrollView: UIScrollView) -> UIView {
        let containerView = UIView()
        containerView.backgroundColor = .clear
        containerView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(containerView)
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            containerView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            containerView.leftAnchor.constraint(equalTo: scrollView.leftAnchor),
            containerView.rightAnchor.constraint(equalTo: scrollView.rightAnchor),
            containerView.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
        ])
        return containerView
    }
    
    private func createTopBarOrder(in containerView: UIView) -> UIView {
        let topBarOrder = UIView()
        topBarOrder.backgroundColor = .white
        topBarOrder.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(topBarOrder)
        
        let titleSmollBar = UILabel()
        titleSmollBar.text = "Оформление заказа"
        titleSmollBar.textColor = .black
        titleSmollBar.font = .systemFont(ofSize: 16)
        titleSmollBar.translatesAutoresizingMaskIntoConstraints = false
        titleSmollBar.numberOfLines = 0
        titleSmollBar.lineBreakMode = .byWordWrapping
        topBarOrder.addSubview(titleSmollBar)
        
        NSLayoutConstraint.activate ([
            topBarOrder.topAnchor.constraint(equalTo: containerView.safeAreaLayoutGuide.topAnchor),
            topBarOrder.leftAnchor.constraint(equalTo: containerView.leftAnchor),
            topBarOrder.rightAnchor.constraint(equalTo: containerView.rightAnchor),
            topBarOrder.heightAnchor.constraint(equalToConstant: 22),
            titleSmollBar.centerXAnchor.constraint(equalTo: topBarOrder.centerXAnchor),
            titleSmollBar.centerYAnchor.constraint(equalTo: topBarOrder.centerYAnchor)
            
        ])
        return topBarOrder
    }
    private func createMobileDivider(in containerView: UIView, below topBarOrder: UIView) -> UIView {
        let mobileDivider = UIView()
        mobileDivider.layer.shadowColor = UIColor.gray.cgColor
        mobileDivider.layer.shadowOpacity = 0.5
        mobileDivider.layer.shadowOffset = CGSize(width: 0, height: 2)
        mobileDivider.layer.shadowRadius = 3
        mobileDivider.backgroundColor = colorGrayLight
        mobileDivider.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(mobileDivider)
        NSLayoutConstraint.activate([
            mobileDivider.topAnchor.constraint(equalTo: topBarOrder.bottomAnchor),
            mobileDivider.leftAnchor.constraint(equalTo: containerView.leftAnchor),
            mobileDivider.rightAnchor.constraint(equalTo: containerView.rightAnchor),
            mobileDivider.heightAnchor.constraint(equalToConstant: 16)
        ])
        return mobileDivider
    }
    
    private func createTitleDesk(in containerView: UIView, below mobileDivider: UIView) -> UIView {
        let titleDesk = UIView()
        titleDesk.backgroundColor = .clear
        titleDesk.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(titleDesk)
        
        let titleDeskText = UILabel()
        titleDeskText.text = "Промокоды"
        titleDeskText.textColor = .black
        titleDeskText.font = .systemFont(ofSize: 24)
        titleDeskText.translatesAutoresizingMaskIntoConstraints = false
        titleDeskText.numberOfLines = 0
        titleDeskText.lineBreakMode = .byWordWrapping
        titleDesk.addSubview(titleDeskText)
        
        let oneProductOnePromo = UILabel()
        oneProductOnePromo.text = "На один товар можно применить только один промокод"
        oneProductOnePromo.textColor = .gray
        oneProductOnePromo.font = .systemFont(ofSize: 14)
        oneProductOnePromo.translatesAutoresizingMaskIntoConstraints = false
        oneProductOnePromo.numberOfLines = 0
        oneProductOnePromo.lineBreakMode = .byWordWrapping
        titleDesk.addSubview(oneProductOnePromo)
        
        NSLayoutConstraint.activate([
            titleDesk.topAnchor.constraint(equalTo: mobileDivider.bottomAnchor, constant: 24),
            titleDesk.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 16),
            titleDesk.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -16),
            titleDesk.heightAnchor.constraint(equalToConstant: 82),
        
            titleDeskText.topAnchor.constraint(equalTo: titleDesk.topAnchor, constant: 1),
                titleDeskText.leftAnchor.constraint(equalTo: titleDesk.leftAnchor, constant: 1),
                titleDeskText.rightAnchor.constraint(equalTo: titleDesk.rightAnchor, constant: -8),
               
            
            oneProductOnePromo.topAnchor.constraint(equalTo: titleDeskText.bottomAnchor),
            oneProductOnePromo.leftAnchor.constraint(equalTo: titleDesk.leftAnchor, constant: 1),
            oneProductOnePromo.rightAnchor.constraint(equalTo: titleDesk.rightAnchor, constant: -1)
        ])
        
        return titleDesk
    }
    
    private func createButtonPromocode(in containerView: UIView, below titleDesk: UIView) -> UIButton {
        let buttonPromocode = UIButton(type: .system)
        buttonPromocode.setTitle("Применить промокод", for: .normal)
        buttonPromocode.setTitleColor(.red, for: .normal)
        buttonPromocode.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        buttonPromocode.backgroundColor = colorRedLight
        buttonPromocode.layer.cornerRadius = 12
        buttonPromocode.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(buttonPromocode)
        
        NSLayoutConstraint.activate([
            buttonPromocode.topAnchor.constraint(equalTo: titleDesk.bottomAnchor, constant: 16),
            buttonPromocode.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 16),
            buttonPromocode.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -16),
            buttonPromocode.heightAnchor.constraint(equalToConstant: 54)
        ])
        
        buttonPromocode.addTarget(self, action: #selector(promocodeButtonTapped), for: .touchUpInside)
        if let image = UIImage(named: "Shape") {
            buttonPromocode.setImage(image, for: .normal)
            buttonPromocode.tintColor = .red
            
        }
        
        return buttonPromocode
    }
    
    private func createPromoCode(in containerView: UIView, below buttonPromocode: UIButton) -> UIView {
        let promoCode1 = UIView()
        promoCode1.backgroundColor = colorGrayLight
        promoCode1.layer.cornerRadius = 12
        promoCode1.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(promoCode1)
        let ellipse = UIView()
        ellipse.backgroundColor = .white
        ellipse.layer.cornerRadius = 10
        ellipse.translatesAutoresizingMaskIntoConstraints = false
        promoCode1.addSubview(ellipse)
        let ellipse6 = UIView()
        ellipse6.backgroundColor = .white
        ellipse6.layer.cornerRadius = 10
        ellipse6.translatesAutoresizingMaskIntoConstraints = false
        promoCode1.addSubview(ellipse6)
        
        NSLayoutConstraint.activate([
            promoCode1.topAnchor.constraint(equalTo: buttonPromocode.bottomAnchor, constant: 16),
            promoCode1.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 16),
            promoCode1.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -16),
            promoCode1.heightAnchor.constraint(equalToConstant: 90),
            
            ellipse.topAnchor.constraint(equalTo: promoCode1.topAnchor, constant: 37),
            ellipse.leftAnchor.constraint(equalTo: promoCode1.leftAnchor, constant: -8),
            ellipse.widthAnchor.constraint(equalToConstant: 16),
            ellipse.heightAnchor.constraint(equalToConstant: 16),
            
            ellipse6.topAnchor.constraint(equalTo: promoCode1.topAnchor, constant: 37),
            ellipse6.rightAnchor.constraint(equalTo: promoCode1.rightAnchor, constant: 8),
            ellipse6.widthAnchor.constraint(equalToConstant: 16),
            ellipse6.heightAnchor.constraint(equalToConstant: 16),
            
        ])
        
        return promoCode1
    }
        private func createPromoCode2(in containerView: UIView, below promoCode1: UIView) -> UIView {
            
            let promoCode2 = UIView()
            promoCode2.backgroundColor = colorGrayLight
            promoCode2.layer.cornerRadius = 12
            promoCode2.translatesAutoresizingMaskIntoConstraints = false
            containerView.addSubview(promoCode2)
            let ellipse2 = UIView()
            ellipse2.backgroundColor = .white
            ellipse2.layer.cornerRadius = 10
            ellipse2.translatesAutoresizingMaskIntoConstraints = false
            promoCode2.addSubview(ellipse2)
            let ellipse7 = UIView()
            ellipse7.backgroundColor = .white
            ellipse7.layer.cornerRadius = 10
            ellipse7.translatesAutoresizingMaskIntoConstraints = false
            promoCode2.addSubview(ellipse7)
            
            NSLayoutConstraint.activate([
                promoCode2.topAnchor.constraint(equalTo: promoCode1.bottomAnchor, constant: 8),
                promoCode2.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 16),
                promoCode2.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -16),
                promoCode2.heightAnchor.constraint(equalToConstant: 90),
                
                ellipse2.topAnchor.constraint(equalTo: promoCode2.topAnchor, constant: 37),
                ellipse2.leftAnchor.constraint(equalTo: promoCode2.leftAnchor, constant: -8),
                ellipse2.widthAnchor.constraint(equalToConstant: 16),
                ellipse2.heightAnchor.constraint(equalToConstant: 16),
                
                ellipse7.topAnchor.constraint(equalTo: promoCode2.topAnchor, constant: 37),
                ellipse7.rightAnchor.constraint(equalTo: promoCode2.rightAnchor, constant: 8),
                ellipse7.widthAnchor.constraint(equalToConstant: 16),
                ellipse7.heightAnchor.constraint(equalToConstant: 16),
            ])
            
            return promoCode2
        }
        
            private  func createPromoCode3(in containerView: UIView, below promoCode2: UIView) -> UIView {
                let promoCode3 = UIView()
                promoCode3.backgroundColor = colorGrayLight
                promoCode3.layer.cornerRadius = 12
                promoCode3.translatesAutoresizingMaskIntoConstraints = false
                containerView.addSubview(promoCode3)
                let ellipse3 = UIView()
                ellipse3.backgroundColor = .white
                ellipse3.layer.cornerRadius = 10
                ellipse3.translatesAutoresizingMaskIntoConstraints = false
                promoCode3.addSubview(ellipse3)
                let ellipse8 = UIView()
                ellipse8.backgroundColor = .white
                ellipse8.layer.cornerRadius = 10
                ellipse8.translatesAutoresizingMaskIntoConstraints = false
                promoCode3.addSubview(ellipse8)
                
                NSLayoutConstraint.activate([
                    
                    promoCode3.topAnchor.constraint(equalTo: promoCode2.bottomAnchor, constant: 8),
                    promoCode3.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 16),
                    promoCode3.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -16),
                    promoCode3.heightAnchor.constraint(equalToConstant: 66),
                    
                    ellipse3.topAnchor.constraint(equalTo: promoCode3.topAnchor, constant: 25),
                    ellipse3.leftAnchor.constraint(equalTo: promoCode3.leftAnchor, constant: -8),
                    ellipse3.widthAnchor.constraint(equalToConstant: 16),
                    ellipse3.heightAnchor.constraint(equalToConstant: 16),
                    
                    ellipse8.topAnchor.constraint(equalTo: promoCode3.topAnchor, constant: 25),
                    ellipse8.rightAnchor.constraint(equalTo: promoCode3.rightAnchor, constant: 8),
                    ellipse8.widthAnchor.constraint(equalToConstant: 16),
                    ellipse8.heightAnchor.constraint(equalToConstant: 16),
                ])
                
                return promoCode3
            }
    
            
    private func createPromoCode4(in containerView: UIView, below promoCode3: UIView) -> UIView {
        let promoCode4 = UIView()
            promoCode4.backgroundColor = colorGrayLight
            promoCode4.layer.cornerRadius = 12
            promoCode4.translatesAutoresizingMaskIntoConstraints = false
            containerView.addSubview(promoCode4)
            let ellipse4 = UIView()
            ellipse4.backgroundColor = .white
            ellipse4.layer.cornerRadius = 10
            ellipse4.translatesAutoresizingMaskIntoConstraints = false
            promoCode4.addSubview(ellipse4)
            let ellipse9 = UIView()
            ellipse9.backgroundColor = .white
            ellipse9.layer.cornerRadius = 10
            ellipse9.translatesAutoresizingMaskIntoConstraints = false
            promoCode4.addSubview(ellipse9)
        
        NSLayoutConstraint.activate([
            promoCode4.topAnchor.constraint(equalTo: promoCode3.bottomAnchor, constant: 8),
            promoCode4.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 16),
            promoCode4.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -16),
            promoCode4.heightAnchor.constraint(equalToConstant: 66),
            
            ellipse4.topAnchor.constraint(equalTo: promoCode4.topAnchor, constant: 25),
            ellipse4.leftAnchor.constraint(equalTo: promoCode4.leftAnchor, constant: -8),
            ellipse4.widthAnchor.constraint(equalToConstant: 16),
            ellipse4.heightAnchor.constraint(equalToConstant: 16),
            
            ellipse9.topAnchor.constraint(equalTo: promoCode4.topAnchor, constant: 25),
            ellipse9.rightAnchor.constraint(equalTo: promoCode4.rightAnchor, constant: 8),
            ellipse9.widthAnchor.constraint(equalToConstant: 16),
            ellipse9.heightAnchor.constraint(equalToConstant: 16),

        ])
        
        return promoCode4
        
        }
        private func createPromoCode5(in containerView: UIView, below promoCode4: UIView) -> UIView {
        let promoCode5 = UIView()
        promoCode5.backgroundColor = colorGrayLight
        promoCode5.layer.cornerRadius = 12
        promoCode5.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(promoCode5)
        let ellipse5 = UIView()
        ellipse5.backgroundColor = .white
        ellipse5.layer.cornerRadius = 10
        ellipse5.translatesAutoresizingMaskIntoConstraints = false
        promoCode5.addSubview(ellipse5)
        let ellipse10 = UIView()
        ellipse10.backgroundColor = .white
        ellipse10.layer.cornerRadius = 10
        ellipse10.translatesAutoresizingMaskIntoConstraints = false
        promoCode5.addSubview(ellipse10)
        
            NSLayoutConstraint.activate([
                promoCode5.topAnchor.constraint(equalTo: promoCode4.bottomAnchor, constant: 8),
                promoCode5.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 16),
                promoCode5.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -16),
                promoCode5.heightAnchor.constraint(equalToConstant: 66),
                
                ellipse5.topAnchor.constraint(equalTo: promoCode5.topAnchor, constant: 25),
                ellipse5.leftAnchor.constraint(equalTo: promoCode5.leftAnchor, constant: -8),
                ellipse5.widthAnchor.constraint(equalToConstant: 16),
                ellipse5.heightAnchor.constraint(equalToConstant: 16),
                
                ellipse10.topAnchor.constraint(equalTo: promoCode5.topAnchor, constant: 25),
                ellipse10.rightAnchor.constraint(equalTo: promoCode5.rightAnchor, constant: 8),
                ellipse10.widthAnchor.constraint(equalToConstant: 16),
                ellipse10.heightAnchor.constraint(equalToConstant: 16),
                
            ])
        
        return promoCode5
    
    }
    
    private func createTextLabel1(in containerView: UIView, below promoCode1: UIView) -> UILabel {
        let textLabel1 = UILabel()
        textLabel1.textColor = .black
        textLabel1.font = UIFont.systemFont(ofSize: 16)
        textLabel1.translatesAutoresizingMaskIntoConstraints = false
        promoCode1.addSubview(textLabel1)
        let imagePercent = UIImageView()
        imagePercent.image = .percent
        imagePercent.contentMode = .scaleAspectFill
        imagePercent.translatesAutoresizingMaskIntoConstraints = false
        promoCode1.addSubview(imagePercent)
        let imageInfo = UIImageView()
        imageInfo.image = .info
        imageInfo.contentMode = .scaleAspectFill
        imageInfo.translatesAutoresizingMaskIntoConstraints = false
        promoCode1.addSubview(imageInfo)
  
        NSLayoutConstraint.activate([
            textLabel1.topAnchor.constraint(equalTo: promoCode1.topAnchor, constant: 16),
            textLabel1.leftAnchor.constraint(equalTo: promoCode1.leftAnchor, constant: 16),
            
            
            imagePercent.topAnchor.constraint(equalTo: promoCode1.topAnchor, constant: 16),
            imagePercent.leftAnchor.constraint(equalTo: textLabel1.rightAnchor, constant: 4),
            
            imageInfo.topAnchor.constraint(equalTo: promoCode1.topAnchor, constant: 17),
            imageInfo.leftAnchor.constraint(equalTo: imagePercent.rightAnchor, constant: 1)
            
     
        ])
  
        return textLabel1
    }

    private func createTextLabel2(in containerView: UIView, below promoCode2: UIView) -> UILabel {
        let textLabel2 = UILabel()
        textLabel2.textColor = .black
        textLabel2.font = UIFont.systemFont(ofSize: 16)
        textLabel2.translatesAutoresizingMaskIntoConstraints = false
        promoCode2.addSubview(textLabel2)
        let imagePercent2 = UIImageView()
        imagePercent2.image = .percent
        imagePercent2.contentMode = .scaleAspectFill
        imagePercent2.translatesAutoresizingMaskIntoConstraints = false
        promoCode2.addSubview(imagePercent2)
        let imageInfo2 = UIImageView()
        imageInfo2.image = .info
        imageInfo2.contentMode = .scaleAspectFill
        imageInfo2.translatesAutoresizingMaskIntoConstraints = false
        promoCode2.addSubview(imageInfo2)
  
        NSLayoutConstraint.activate([
            textLabel2.topAnchor.constraint(equalTo: promoCode2.topAnchor, constant: 16),
            textLabel2.leftAnchor.constraint(equalTo: promoCode2.leftAnchor, constant: 16),
            
            imagePercent2.topAnchor.constraint(equalTo: promoCode2.topAnchor, constant: 16),
            imagePercent2.leftAnchor.constraint(equalTo: textLabel2.rightAnchor, constant: 4),
            
            imageInfo2.topAnchor.constraint(equalTo: promoCode2.topAnchor, constant: 17),
            imageInfo2.leftAnchor.constraint(equalTo: imagePercent2.rightAnchor, constant: 1)
        ])
  
        return textLabel2
    }
    
    private func createTextLabel3(in containerView: UIView, below promoCode3: UIView) -> UILabel {
        let textLabel3 = UILabel()
        textLabel3.textColor = .black
        textLabel3.font = UIFont.systemFont(ofSize: 16)
        textLabel3.translatesAutoresizingMaskIntoConstraints = false
        promoCode3.addSubview(textLabel3)
        let imagePercent3 = UIImageView()
        imagePercent3.image = .percent
        imagePercent3.contentMode = .scaleAspectFill
        imagePercent3.translatesAutoresizingMaskIntoConstraints = false
        promoCode3.addSubview(imagePercent3)
        let imageInfo3 = UIImageView()
        imageInfo3.image = .info
        imageInfo3.contentMode = .scaleAspectFill
        imageInfo3.translatesAutoresizingMaskIntoConstraints = false
        promoCode3.addSubview(imageInfo3)
        
            NSLayoutConstraint.activate([
                textLabel3.topAnchor.constraint(equalTo: promoCode3.topAnchor, constant: 16),
                textLabel3.leftAnchor.constraint(equalTo: promoCode3.leftAnchor, constant: 16),
                
                imagePercent3.topAnchor.constraint(equalTo: promoCode3.topAnchor, constant: 16),
                imagePercent3.leftAnchor.constraint(equalTo: textLabel3.rightAnchor, constant: 4),
                
                imageInfo3.topAnchor.constraint(equalTo: promoCode3.topAnchor, constant: 17),
                imageInfo3.leftAnchor.constraint(equalTo: imagePercent3.rightAnchor, constant: 1)
                
            ])
            
        return textLabel3
    }
    
    private func createTextLabel4(in containerView: UIView, below promoCode4: UIView) -> UILabel {
        let textLabel4 = UILabel()
        textLabel4.textColor = .black
        textLabel4.font = UIFont.systemFont(ofSize: 16)
        textLabel4.translatesAutoresizingMaskIntoConstraints = false
        promoCode4.addSubview(textLabel4)
        let imagePercent4 = UIImageView()
        imagePercent4.image = .percent
        imagePercent4.contentMode = .scaleAspectFill
        imagePercent4.translatesAutoresizingMaskIntoConstraints = false
        promoCode4.addSubview(imagePercent4)
        let imageInfo4 = UIImageView()
        imageInfo4.image = .info
        imageInfo4.contentMode = .scaleAspectFill
        imageInfo4.translatesAutoresizingMaskIntoConstraints = false
        promoCode4.addSubview(imageInfo4)
        
        NSLayoutConstraint.activate([
            textLabel4.topAnchor.constraint(equalTo: promoCode4.topAnchor, constant: 16),
            textLabel4.leftAnchor.constraint(equalTo: promoCode4.leftAnchor, constant: 16),
            
            imagePercent4.topAnchor.constraint(equalTo: promoCode4.topAnchor, constant: 16),
            imagePercent4.leftAnchor.constraint(equalTo: textLabel4.rightAnchor, constant: 4),
            
            imageInfo4.topAnchor.constraint(equalTo: promoCode4.topAnchor, constant: 17),
            imageInfo4.leftAnchor.constraint(equalTo: imagePercent4.rightAnchor, constant: 1)
        ])
        
        
        return textLabel4
    }
    
    private func createTextLabel5(in containerView: UIView, below promoCode5: UIView) -> UILabel {
        let textLabel5 = UILabel()
        textLabel5.textColor = .black
        textLabel5.font = UIFont.systemFont(ofSize: 16)
        textLabel5.translatesAutoresizingMaskIntoConstraints = false
        promoCode5.addSubview(textLabel5)
        let imagePercent5 = UIImageView()
        imagePercent5.image = .percent
        imagePercent5.contentMode = .scaleAspectFill
        imagePercent5.translatesAutoresizingMaskIntoConstraints = false
        promoCode5.addSubview(imagePercent5)
        let imageInfo5 = UIImageView()
        imageInfo5.image = .info
        imageInfo5.contentMode = .scaleAspectFill
        imageInfo5.translatesAutoresizingMaskIntoConstraints = false
        promoCode5.addSubview(imageInfo5)
        
        NSLayoutConstraint.activate([
            textLabel5.topAnchor.constraint(equalTo: promoCode5.topAnchor, constant: 16),
            textLabel5.leftAnchor.constraint(equalTo: promoCode5.leftAnchor, constant: 16),
            
            
            imagePercent5.topAnchor.constraint(equalTo: promoCode5.topAnchor, constant: 16),
            imagePercent5.leftAnchor.constraint(equalTo: textLabel5.rightAnchor, constant: 4),
            
            imageInfo5.topAnchor.constraint(equalTo: promoCode5.topAnchor, constant: 17),
            imageInfo5.leftAnchor.constraint(equalTo: imagePercent5.rightAnchor, constant: 1)
        ])
        
        return textLabel5
    }
    
    private func createCloseButtonPromocode(in containerView: UIView, below promoCode5: UIView) -> UIButton{
        let closePromocode = UIButton(type: .system)
        closePromocode.setTitle("Скрыть промокод", for: .normal)
        closePromocode.setTitleColor(.red, for: .normal)
        closePromocode.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        closePromocode.backgroundColor = .white
        closePromocode.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(closePromocode)
        
        NSLayoutConstraint.activate([
            closePromocode.topAnchor.constraint(equalTo: promoCode5.bottomAnchor, constant: 8),
            closePromocode.leftAnchor.constraint(equalTo: promoCode5.leftAnchor, constant: 16),
            closePromocode.heightAnchor.constraint(equalToConstant: 40)
        ])
        closePromocode.addTarget(self, action: #selector(closePromocodeButtonTapped), for: .touchUpInside)
        
        return closePromocode
    }
    
    private func createSummTable(in containerView: UIView, below closePromocode: UIView) -> UIView{
        let summTable = UIView()
        summTable.backgroundColor = colorGrayLight
        summTable.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(summTable)
        
        let priceForTwoItems = UILabel()
        priceForTwoItems.text = "Цена за два товара"
        priceForTwoItems.textColor = .black
        priceForTwoItems.font = .systemFont(ofSize: 14)
        priceForTwoItems.translatesAutoresizingMaskIntoConstraints = false
        summTable.addSubview(priceForTwoItems)
        
        let discountsText = UILabel()
        discountsText.text = "Скидки"
        discountsText.textColor = .black
        discountsText.font = .systemFont(ofSize: 14)
        discountsText.translatesAutoresizingMaskIntoConstraints = false
        summTable.addSubview(discountsText)
        
        let promocodeText = UILabel()
        promocodeText.text = "Промокоды"
        promocodeText.textColor = .black
        promocodeText.font = .systemFont(ofSize: 14)
        promocodeText.translatesAutoresizingMaskIntoConstraints = false
        summTable.addSubview(promocodeText)
        
        let paymentMethodText = UILabel()
        paymentMethodText.text = "Способ оплаты"
        paymentMethodText.textColor = .black
        paymentMethodText.font = .systemFont(ofSize: 14)
        paymentMethodText.translatesAutoresizingMaskIntoConstraints = false
        summTable.addSubview(paymentMethodText)
        
        let totalText = UILabel()
        totalText.text = "Итого"
        totalText.textColor = .black
        totalText.font = .systemFont(ofSize: 18)
        totalText.translatesAutoresizingMaskIntoConstraints = false
        summTable.addSubview(totalText)
        
        let willPlaceAnOrderButton = UIButton(type: .system)
        willPlaceAnOrderButton.setTitle("Оформить заказ", for: .normal)
        willPlaceAnOrderButton.setTitleColor(.white, for: .normal)
        willPlaceAnOrderButton.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        willPlaceAnOrderButton.backgroundColor = .red
        willPlaceAnOrderButton.layer.cornerRadius = 12
        willPlaceAnOrderButton.translatesAutoresizingMaskIntoConstraints = false
        summTable.addSubview(willPlaceAnOrderButton)
        
        let termsOfOffer = UILabel()
        termsOfOffer.text = "Нажимая на кнопку Оформить заказ, Вы соглашаетесь с Условиями оферты"
        termsOfOffer.textColor = .lightGray
        termsOfOffer.font = .systemFont(ofSize: 12)
        termsOfOffer.lineBreakMode = .byWordWrapping
        termsOfOffer.numberOfLines = 0
        termsOfOffer.translatesAutoresizingMaskIntoConstraints = false
        summTable.addSubview(termsOfOffer)
        
        
        NSLayoutConstraint.activate([
            summTable.topAnchor.constraint(equalTo: closePromocode.bottomAnchor, constant: 24),
            summTable.leftAnchor.constraint(equalTo: containerView.leftAnchor),
            summTable.rightAnchor.constraint(equalTo: containerView.rightAnchor),
            summTable.heightAnchor.constraint(equalToConstant: 349),
            summTable.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
            
            priceForTwoItems.topAnchor.constraint(equalTo: summTable.topAnchor, constant: 24),
            priceForTwoItems.leftAnchor.constraint(equalTo: summTable.leftAnchor, constant: 32),
            
            discountsText.topAnchor.constraint(equalTo: priceForTwoItems.topAnchor, constant: 30),
            discountsText.leftAnchor.constraint(equalTo: summTable.leftAnchor, constant: 32),
            
            promocodeText.topAnchor.constraint(equalTo: discountsText.topAnchor, constant: 30),
            promocodeText.leftAnchor.constraint(equalTo: summTable.leftAnchor, constant: 32),
            
            paymentMethodText.topAnchor.constraint(equalTo: promocodeText.topAnchor, constant: 30),
            paymentMethodText.leftAnchor.constraint(equalTo: summTable.leftAnchor, constant: 32),
            
            totalText.topAnchor.constraint(equalTo: paymentMethodText.topAnchor, constant: 33),
            totalText.leftAnchor.constraint(equalTo: summTable.leftAnchor, constant: 32),
            
            willPlaceAnOrderButton.centerYAnchor.constraint(equalTo: totalText.bottomAnchor, constant: 40),
            willPlaceAnOrderButton.centerXAnchor.constraint(equalTo: summTable.centerXAnchor),
            willPlaceAnOrderButton.widthAnchor.constraint(equalToConstant: 345),
            willPlaceAnOrderButton.heightAnchor.constraint(equalToConstant: 54),
            
            termsOfOffer.topAnchor.constraint(equalTo: willPlaceAnOrderButton.bottomAnchor, constant: 16),
            termsOfOffer.leftAnchor.constraint(equalTo: summTable.leftAnchor, constant: 70),
            termsOfOffer.rightAnchor.constraint(equalTo: summTable.rightAnchor, constant: -70)
            
            
            
        ])
        
        return summTable
    }
    
    
    
    
    
    
    @objc func promocodeButtonTapped() {
        print("Промокод нажат")
 }

    @objc  func closePromocodeButtonTapped() {
        print ("Промокод скрыт")
    }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}

