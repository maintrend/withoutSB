//
//  ConstraintsSecondVC.swift
//  InternshipMVC
//
//  Created by talgat on 12/21/20.
//

import Foundation
extension SecondVC {
    public func setupLayoutSecondVC() {
        // "Search"
        firstTextView.topAnchor.constraint(equalTo: view.topAnchor, constant: 30).isActive = true
        firstTextView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        firstTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        // "Snowman"
        secondTextView.topAnchor.constraint(equalTo: view.topAnchor, constant: 55).isActive = true
        secondTextView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        secondTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        // "Filter" button
        topRightBtn.topAnchor.constraint(equalTo: view.topAnchor, constant: 60).isActive = true
        topRightBtn.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        topRightBtn.widthAnchor.constraint(equalToConstant: 35).isActive = true
        topRightBtn.heightAnchor.constraint(equalToConstant: 35).isActive = true
        // "Washington, D.C"
        thirdTextView.topAnchor.constraint(equalTo: view.topAnchor, constant: 110).isActive = true
        thirdTextView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        // collection view
        collectionView1.translatesAutoresizingMaskIntoConstraints = false
        collectionView1.topAnchor.constraint(equalTo: view.topAnchor, constant: 160).isActive = true
        collectionView1.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        collectionView1.widthAnchor.constraint(equalToConstant: 430).isActive = true
        collectionView1.leftAnchor.constraint(equalTo: view.leftAnchor, constant:  10).isActive = true
        collectionView1.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
    }
}
