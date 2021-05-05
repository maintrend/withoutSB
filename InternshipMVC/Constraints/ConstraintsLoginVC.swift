//
//  ConstraintsLoginVC.swift
//  InternshipMVC
//
//  Created by talgat on 12/21/20.
//

import Foundation
extension LoginVC {
    public func setupLayout() {
        // image
        customImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        customImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: view.bounds.size.height / 10).isActive = true
        customImageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.9).isActive = true
        customImageView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.25).isActive = true
        
        // text: - "Organize your event"
        firstTextView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        firstTextView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -20).isActive = true
        firstTextView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        firstTextView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        // text: - "Lets start"
        secondTextView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        secondTextView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 30).isActive = true
        secondTextView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        secondTextView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        // button: - "sign in"
        signInBtn.bottomAnchor.constraint(equalTo: loginBtn.topAnchor, constant: -50).isActive = true
        signInBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        signInBtn.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85).isActive = true
        signInBtn.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.07).isActive = true
        
        // text: - "or"
        orTextView.topAnchor.constraint(equalTo: signInBtn.bottomAnchor, constant: 5).isActive = true
        orTextView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        // label: - line b/w sign in/login
        line3.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        line3.topAnchor.constraint(equalTo: signInBtn.bottomAnchor, constant: 25).isActive = true
        line3.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85).isActive = true
        line3.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        // button: - "login"
        loginBtn.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50).isActive = true
        loginBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginBtn.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85).isActive = true
        loginBtn.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.07).isActive = true
        
    }
}
