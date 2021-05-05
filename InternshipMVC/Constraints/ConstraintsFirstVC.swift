//
//  ConstraintsFirstVC.swift
//  InternshipMVC
//
//  Created by talgat on 12/21/20.
//

import Foundation
extension FirstVC {
    public func setupLayoutFirstVC(){
        // "Hello, Kair"
        firstTextView.translatesAutoresizingMaskIntoConstraints = false
        firstTextView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        firstTextView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30).isActive = true
        firstTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        // "bell" button
        topRightBtn.translatesAutoresizingMaskIntoConstraints = false
        topRightBtn.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 12).isActive = true
        topRightBtn.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30).isActive = true
        topRightBtn.widthAnchor.constraint(equalToConstant: 23).isActive = true
        topRightBtn.heightAnchor.constraint(equalToConstant: 25).isActive = true
        // first horizontal collection view
        collectionView1.translatesAutoresizingMaskIntoConstraints = false
        collectionView1.topAnchor.constraint(equalTo: view.topAnchor, constant: view.bounds.size.height * 0.11).isActive = true
        collectionView1.heightAnchor.constraint(equalToConstant: view.bounds.size.height * 0.20).isActive = true
        collectionView1.leftAnchor.constraint(equalTo: view.leftAnchor, constant:  10).isActive = true
        collectionView1.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        // "Categories"
        thirdTextView.topAnchor.constraint(equalTo: collectionView1.bottomAnchor, constant: 0).isActive = true
        thirdTextView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        // "see more>"
        fourthTextView.topAnchor.constraint(equalTo: collectionView1.bottomAnchor, constant: 0).isActive = true
        fourthTextView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        // second horizontal collection view
        collectionView2.translatesAutoresizingMaskIntoConstraints = false
        collectionView2.topAnchor.constraint(equalTo: thirdTextView.bottomAnchor, constant: -9).isActive = true
        collectionView2.heightAnchor.constraint(equalToConstant: view.bounds.size.height * 0.18).isActive = true
        collectionView2.leftAnchor.constraint(equalTo: view.leftAnchor, constant:  10).isActive = true
        collectionView2.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        // "Design your event" button
        designBtn.topAnchor.constraint(equalTo: collectionView2.bottomAnchor, constant: 0).isActive = true
        designBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        designBtn.leftAnchor.constraint(equalTo: view.leftAnchor, constant:  10).isActive = true
        designBtn.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        designBtn.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.07).isActive = true
        // "Useful articles"
        fifthTextView.topAnchor.constraint(equalTo: designBtn.bottomAnchor, constant: 0).isActive = true
        fifthTextView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        // "see more" second text view
        sixTextView.topAnchor.constraint(equalTo: designBtn.bottomAnchor, constant: 0).isActive = true
        sixTextView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        // third horizontal collection view
        collectionView3.translatesAutoresizingMaskIntoConstraints = false
        collectionView3.topAnchor.constraint(equalTo: fifthTextView.bottomAnchor, constant: -40).isActive = true
        collectionView3.heightAnchor.constraint(equalToConstant: view.bounds.size.height * 0.28).isActive = true
        collectionView3.leftAnchor.constraint(equalTo: view.leftAnchor, constant:  10).isActive = true
        collectionView3.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    }
}
