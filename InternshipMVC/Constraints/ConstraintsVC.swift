//
//  ConstraintsVC.swift
//  InternshipMVC
//
//  Created by talgat on 12/21/20.
//

import Foundation

extension ViewController {
    public func setupLayoutVC() {
        // "login" textView
        firstTextView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        firstTextView.topAnchor.constraint(equalTo: view.topAnchor, constant: view.bounds.size.height / 10).isActive = true
        firstTextView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        firstTextView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        // "enter you email and password" textView
        secondTextView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        secondTextView.topAnchor.constraint(equalTo: firstTextView.bottomAnchor, constant: 10).isActive = true
        secondTextView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        secondTextView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        // "email"
        emailTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        emailTextField.bottomAnchor.constraint(equalTo: passwordTextField.topAnchor, constant: -20).isActive = true
        emailTextField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85).isActive = true
        emailTextField.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.07).isActive = true
        // "password"
        passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        passwordTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        passwordTextField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85).isActive = true
        passwordTextField.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.07).isActive = true
        // "login" button
        loginBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginBtn.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20).isActive = true
        loginBtn.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85).isActive = true
        loginBtn.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.07).isActive = true
        // "foggot password?" button
        thirdTextView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        thirdTextView.topAnchor.constraint(equalTo: loginBtn.bottomAnchor, constant: 0).isActive = true
        thirdTextView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        thirdTextView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        // "or"
        orTextView.bottomAnchor.constraint(equalTo: gmailBtn.topAnchor, constant: -view.bounds.size.height * 0.03 + 15).isActive = true
        orTextView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        // line above gmain and vk button
        line3.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        line3.bottomAnchor.constraint(equalTo: gmailBtn.topAnchor, constant: -view.bounds.size.height * 0.03).isActive = true
        line3.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85).isActive = true
        line3.heightAnchor.constraint(equalToConstant: 1).isActive = true
        // "gmail" button
        gmailBtn.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
        gmailBtn.leftAnchor.constraint(equalTo: view.leftAnchor, constant: view.bounds.size.width * 0.075).isActive = true
        gmailBtn.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.4).isActive = true
        gmailBtn.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.07).isActive = true
        // "vk" button
        vkBtn.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
        vkBtn.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -view.bounds.size.width * 0.075).isActive = true
        vkBtn.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.4).isActive = true
        vkBtn.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.07).isActive = true
        
    }
}
