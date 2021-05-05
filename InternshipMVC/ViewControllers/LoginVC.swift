//
//  LoginVC.swift
//  InternshipMVC
//
//  Created by talgat on 12/9/20.
//

import UIKit

class LoginVC: UIViewController {

// MARK: - Properties
     let customImageView: UIImageView = {
         let imageName = "1"
         let image = UIImage(named: imageName)
         let imageView = UIImageView(image: image!)
         imageView.translatesAutoresizingMaskIntoConstraints = false
         return imageView
     }()
     
     let firstTextView: UITextView = {
         let textView = UITextView()
         textView.text = "Organize your event"
         textView.font = UIFont.boldSystemFont(ofSize: 30)
         textView.textColor = UIColor(red: 0, green: 0.569, blue: 0.682, alpha: 1)
         textView.translatesAutoresizingMaskIntoConstraints = false
         textView.textAlignment = .center
         textView.isEditable = false
         textView.isScrollEnabled = false
         return textView
     }()
     
     let secondTextView: UITextView = {
         let textView2 = UITextView()
         textView2.text = "Let's start!"
         textView2.font = UIFont.boldSystemFont(ofSize: 15)
         textView2.textColor = UIColor(red: 0.42, green: 0.478, blue: 0.537, alpha: 1)
         textView2.translatesAutoresizingMaskIntoConstraints = false
         textView2.textAlignment = .center
         textView2.isEditable = false
         textView2.isScrollEnabled = false
         return textView2
     }()
     
      let signInBtn: UIButton = {
         let signButton = UIButton()
         signButton.setTitle("Sign in", for: .normal)
         signButton.setTitleColor(.systemBlue, for: .normal)
         signButton.frame = CGRect(x: 0, y: 0, width: 343, height: 56)
         signButton.backgroundColor = .white
         signButton.layer.backgroundColor = UIColor(red: 0.808, green: 0.906, blue: 0.941, alpha: 1).cgColor
         signButton.translatesAutoresizingMaskIntoConstraints = false
         signButton.layer.cornerRadius = 8
         signButton.addTarget(self, action: #selector(toViewController), for: .touchUpInside)
         return signButton
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
     
      let loginBtn: UIButton = {
         let loginButton = UIButton()
         loginButton.setTitle("Log in", for: .normal)
         loginButton.setTitleColor(.white, for: .normal)
         loginButton.frame = CGRect(x: 0, y: 0, width: 343, height: 56)
         loginButton.backgroundColor = .white
         loginButton.layer.backgroundColor = UIColor(red: 1, green: 0.478, blue: 0.349, alpha: 1).cgColor
         loginButton.translatesAutoresizingMaskIntoConstraints = false
         loginButton.layer.cornerRadius = 8
         loginButton.addTarget(self, action: #selector(toViewController), for: .touchUpInside)
         return loginButton
     }()
  
// MARK: - Func viewDidLoad()
     override func viewDidLoad() {
         super.viewDidLoad()
         view.addSubview(customImageView)
         view.addSubview(firstTextView)
         view.addSubview(secondTextView)
         view.addSubview(signInBtn)
         view.addSubview(loginBtn)
         view.addSubview(line3)
         view.addSubview(orTextView)
         setupLayout()
     }
    
// MARK: - Private func
    @objc private func toViewController(){
        let vc = ViewController()
        vc.modalPresentationStyle = .overFullScreen
        self.show(vc, sender: nil)
    }

}
