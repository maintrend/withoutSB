//
//  ViewController.swift
//  InternshipMVC
//
//  Created by talgat on 12/8/20.
//

import UIKit
class ViewController: UIViewController {

// MARK: - Properties
    let firstTextView: UITextView = {
        let textView = UITextView()
        textView.text = "Log in"
        textView.font = UIFont.boldSystemFont(ofSize: 35)
        textView.textColor = UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }()
    
    let secondTextView: UITextView = {
        let textView2 = UITextView()
        textView2.text = "enter your e-mail and password"
        textView2.font = UIFont.boldSystemFont(ofSize: 15)
        textView2.textColor =  UIColor(red: 0.42, green: 0.478, blue: 0.537, alpha: 1)
        textView2.translatesAutoresizingMaskIntoConstraints = false
        textView2.textAlignment = .center
        textView2.isEditable = false
        textView2.isScrollEnabled = false
        return textView2
    }()
    
     let emailTextField: UITextField = {
        let emailTF = UITextField()
        emailTF.backgroundColor = .white
        emailTF.frame = CGRect(x: 0, y: 0, width: 375, height: 60)
        emailTF.layer.cornerRadius = 10
        emailTF.layer.borderColor = UIColor(red: 0.42, green: 0.478, blue: 0.537, alpha: 1).cgColor
        emailTF.layer.borderWidth = 1.0
        emailTF.placeholder = "   Email"
        emailTF.textColor = UIColor(red: 0.42, green: 0.478, blue: 0.537, alpha: 1)
        emailTF.translatesAutoresizingMaskIntoConstraints = false
        emailTF.autocapitalizationType = .none
        return emailTF
    }()
    
     let passwordTextField: UITextField = {
        let passwordTF = UITextField()
        passwordTF.backgroundColor = .white
        passwordTF.frame = CGRect(x: 0, y: 0, width: 375, height: 60)
        passwordTF.layer.cornerRadius = 10
        passwordTF.layer.borderColor = UIColor(red: 0.42, green: 0.478, blue: 0.537, alpha: 1).cgColor
        passwordTF.layer.borderWidth = 1.0
        passwordTF.placeholder = "   Password"
        passwordTF.textColor = UIColor(red: 0.42, green: 0.478, blue: 0.537, alpha: 1)
        passwordTF.translatesAutoresizingMaskIntoConstraints = false
        passwordTF.autocapitalizationType = .none
        return passwordTF
    }()
    
     let loginBtn: UIButton = {
        let loginButton = UIButton()
        loginButton.setTitle("Log in", for: .normal)
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.frame = CGRect(x: 0, y: 0, width: 343, height: 56)
        loginButton.backgroundColor = .white
        loginButton.layer.backgroundColor = UIColor(red: 1, green: 0.478, blue: 0.349, alpha: 1).cgColor
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.layer.cornerRadius = 10
        loginButton.addTarget(self, action: #selector(didTabButton), for: .touchUpInside)
        return loginButton
    }()
    
     let thirdTextView: UITextView = {
         let textView3 = UITextView()
        textView3.text = "Forgot password?"
        textView3.font = UIFont.boldSystemFont(ofSize: 15)
        textView3.textColor = UIColor(red: 0.42, green: 0.478, blue: 0.537, alpha: 1)
        textView3.translatesAutoresizingMaskIntoConstraints = false
        textView3.textAlignment = .center
        textView3.isEditable = false
        textView3.isScrollEnabled = false
         return textView3
     }()
     let line3: UILabel = {
        let line3Label = UILabel()
        line3Label.frame = CGRect(x: 0, y: 0, width: 150, height: 1)
        line3Label.backgroundColor = .gray
        line3Label.layer.backgroundColor = UIColor(red: 0.833, green: 0.833, blue: 0.833, alpha: 1).cgColor
        line3Label.layer.cornerRadius = 1
        line3Label.translatesAutoresizingMaskIntoConstraints = false
        return line3Label
    }()
    
     let line4: UILabel = {
        let line4Label = UILabel()
        line4Label.frame = CGRect(x: 0, y: 0, width: 150, height: 1)
        line4Label.backgroundColor = .gray
        line4Label.layer.backgroundColor = UIColor(red: 0.833, green: 0.833, blue: 0.833, alpha: 1).cgColor
        line4Label.layer.cornerRadius = 1
        line4Label.translatesAutoresizingMaskIntoConstraints = false
        return line4Label
    }()
     let orTextView: UITextView = {
         let orTV = UITextView()
        orTV.text = "or"
        orTV.font = UIFont.boldSystemFont(ofSize: 18)
        orTV.textColor = UIColor(red: 0.522, green: 0.561, blue: 0.565, alpha: 1)
        orTV.translatesAutoresizingMaskIntoConstraints = false
        orTV.textAlignment = .center
        orTV.isEditable = false
        orTV.isScrollEnabled = false
         return orTV
     }()
    
     let gmailBtn: UIButton = {
        let gmailButton = UIButton(type: .custom)
        if let image = UIImage(named: "3") {
            gmailButton.setImage(image, for: .normal)
        }
        gmailButton.setTitle("Gmail", for: .normal)
        gmailButton.setTitleColor(.white, for: .normal)
        gmailButton.frame = CGRect(x: 0, y: 0, width: 343, height: 56)
        gmailButton.backgroundColor = .clear
        gmailButton.layer.borderWidth = 1
        gmailButton.layer.backgroundColor = UIColor(red: 1, green: 0.478, blue: 0.349, alpha: 1).cgColor
        gmailButton.translatesAutoresizingMaskIntoConstraints = false
        gmailButton.layer.cornerRadius = 8
        gmailButton.layer.borderColor = UIColor(red: 0.42, green: 0.478, blue: 0.537, alpha: 1).cgColor
        gmailButton.addTarget(self, action: #selector(didTabButton), for: .touchUpInside)
        return gmailButton
    }()
    
     let vkBtn: UIButton = {
        let vkButton = UIButton(type: .custom)
        vkButton.setTitle("VK", for: .normal)
        if let image = UIImage(named: "5") {
            vkButton.setImage(image, for: .normal)
        }
        vkButton.setTitleColor(.white, for: .normal)
        vkButton.frame = CGRect(x: 0, y: 0, width: 343, height: 56)
        vkButton.backgroundColor = .clear
        vkButton.layer.borderWidth = 1
        vkButton.layer.borderColor = UIColor(red: 0.42, green: 0.478, blue: 0.537, alpha: 1).cgColor
        vkButton.layer.backgroundColor = UIColor(red: 1, green: 0.478, blue: 0.349, alpha: 1).cgColor
        vkButton.translatesAutoresizingMaskIntoConstraints = false
        vkButton.layer.cornerRadius = 8
        vkButton.addTarget(self, action: #selector(didTabButton), for: .touchUpInside)
        return vkButton
    }()

// MARK: - Func viewDidLoad()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(firstTextView)
        view.addSubview(secondTextView)
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
        view.addSubview(loginBtn)
        view.addSubview(thirdTextView)
        view.addSubview(gmailBtn)
        view.addSubview(vkBtn)
        view.addSubview(line3)
        view.addSubview(orTextView)
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.isHidden = false
        view.backgroundColor = .white
        setupLayoutVC()
    }

// MARK: - Private func
    @objc private func didTabButton() {
        let tabBarVC = UITabBarController()
        let vc1 = UINavigationController(rootViewController: FirstVC())
        let vc2 = SecondVC()
        let vc3 = ThirdVC()
        let vc4 = FourthVC()
        let vc5 = FifthVC()
        
        tabBarVC.setViewControllers([vc1, vc2, vc3, vc4, vc5], animated: false)
        guard let items = tabBarVC.tabBar.items else {
            return
        }
        tabBarVC.tabBar.items![0].image = UIImage(named: "icons8-главная-33")
        tabBarVC.tabBar.items![1].image = UIImage(named: "icons8-поиск-33")
        tabBarVC.tabBar.items![2].image = UIImage(named: "icons8-плюс-33")
        tabBarVC.tabBar.items![3].image = UIImage(named: "icons8-звезда-33")
        tabBarVC.tabBar.items![4].image = UIImage(named: "icons8-пользователь-33")
        tabBarVC.tabBar.tintColor = UIColor(red: 0, green: 0.569, blue: 0.682, alpha: 1)
        tabBarVC.modalPresentationStyle = .fullScreen
        present(tabBarVC, animated: true)
    }

}

