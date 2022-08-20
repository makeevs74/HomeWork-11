//
//  ViewController.swift
//  HomeWork-11
//
//  Created by Sergey Makeev on 18.08.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var labelOrConnectWith: UILabel!
    @IBOutlet weak var textFieldLogin: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    @IBOutlet weak var buttonLogin: UIButton!
    @IBOutlet weak var buttonFacebook: UIButton!
    @IBOutlet weak var buttonTwitter: UIButton!
    @IBOutlet weak var buttonSignUp: UIButton!
    @IBOutlet weak var viewWallpaper: UIImageView!
    @IBOutlet weak var lineOne: UIView!
    @IBOutlet weak var lineTwo: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        makeShadow(button: buttonLogin)
        makeShadow(button: buttonTwitter)
        makeShadow(button: buttonFacebook)

        roundingElement()      // Закругления кнопок
    }

    func roundingElement() {
        buttonLogin.layer.cornerRadius = buttonLogin.bounds.height / 2
        buttonTwitter.layer.cornerRadius = buttonTwitter.bounds.height / 2
        buttonFacebook.layer.cornerRadius = buttonFacebook.bounds.height / 2
        lineOne.layer.cornerRadius = lineOne.bounds.height / 2
        lineTwo.layer.cornerRadius = lineTwo.bounds.height / 2
    }

    func makeShadow(button: UIButton) {
        button.layer.shadowColor = UIColor.gray.cgColor
        button.layer.shadowOpacity = 0.3
        button.layer.shadowOffset = CGSize(width: 2, height: 5)
        button.layer.shadowRadius = 10
        button.layer.shouldRasterize = true
        button.layer.rasterizationScale = UIScreen.main.scale
    }
}

extension UITextField {
    func setLeftIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 10, y: 5, width: 20, height: 20))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
    }
}
