//
//  ConstraintsPopupVC.swift
//  InternshipMVC
//
//  Created by talgat on 12/21/20.
//

import Foundation
extension PopupVC {
    public func setupLayoutPopupVC() {
        // "Filter"
        firstTextView.topAnchor.constraint(equalTo: view.topAnchor, constant: view.bounds.size.height * 0.03).isActive = true
        firstTextView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        // "clear" button
        topRightBtn.topAnchor.constraint(equalTo: view.topAnchor, constant: view.bounds.size.height * 0.05).isActive = true
        topRightBtn.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        topRightBtn.widthAnchor.constraint(equalToConstant: 45).isActive = true
        topRightBtn.heightAnchor.constraint(equalToConstant: 20).isActive = true
        // "Sort by"
        secondTextView.topAnchor.constraint(equalTo: firstTextView.bottomAnchor, constant: -10).isActive = true
        secondTextView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        // "price" button
        priceBtn.topAnchor.constraint(equalTo: secondTextView.topAnchor, constant: 40).isActive = true
        priceBtn.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        priceBtn.widthAnchor.constraint(equalToConstant: view.bounds.size.width * 0.15).isActive = true
        priceBtn.heightAnchor.constraint(equalToConstant: 35).isActive = true
        // "rating" button
        ratingBtn.topAnchor.constraint(equalTo: secondTextView.topAnchor, constant: 40).isActive = true
        ratingBtn.leftAnchor.constraint(equalTo: priceBtn.rightAnchor, constant: 10).isActive = true
        ratingBtn.widthAnchor.constraint(equalToConstant: view.bounds.size.width * 0.17).isActive = true
        ratingBtn.heightAnchor.constraint(equalToConstant: 35).isActive = true
        // "work years" button
        workYearsBtn.topAnchor.constraint(equalTo: secondTextView.topAnchor, constant: 40).isActive = true
        workYearsBtn.leftAnchor.constraint(equalTo: ratingBtn.rightAnchor, constant: 10).isActive = true
        workYearsBtn.widthAnchor.constraint(equalToConstant: view.bounds.size.width * 0.28).isActive = true
        workYearsBtn.heightAnchor.constraint(equalToConstant: 35).isActive = true
        // "verified" button
        verifiedBtn.topAnchor.constraint(equalTo: secondTextView.topAnchor, constant: 40).isActive = true
        verifiedBtn.leftAnchor.constraint(equalTo: workYearsBtn.rightAnchor, constant: 10).isActive = true
        verifiedBtn.widthAnchor.constraint(equalToConstant: view.bounds.size.width * 0.2).isActive = true
        verifiedBtn.heightAnchor.constraint(equalToConstant: 35).isActive = true
        // line under "price" button
        line1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        line1.topAnchor.constraint(equalTo: priceBtn.bottomAnchor, constant: 10).isActive = true
        line1.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85).isActive = true
        line1.heightAnchor.constraint(equalToConstant: 1).isActive = true
        // "Price per hour"
        pricePerHourTextView.topAnchor.constraint(equalTo: line1.topAnchor, constant: 5).isActive = true
        pricePerHourTextView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        // first range slider
        rangeSlider1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        rangeSlider1.topAnchor.constraint(equalTo: pricePerHourTextView.bottomAnchor, constant: 10).isActive = true
        rangeSlider1.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85).isActive = true
        rangeSlider1.heightAnchor.constraint(equalToConstant: 10).isActive = true
        // "0" and "1500"
        minTextView.topAnchor.constraint(equalTo: rangeSlider1.bottomAnchor, constant: 10).isActive = true
        minTextView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        maxTextView.topAnchor.constraint(equalTo: rangeSlider1.bottomAnchor, constant: 10).isActive = true
        maxTextView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        // line under first range slider
        line2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        line2.topAnchor.constraint(equalTo: minTextView.bottomAnchor, constant: 10).isActive = true
        line2.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85).isActive = true
        line2.heightAnchor.constraint(equalToConstant: 1).isActive = true
        // "Work years"
        workYearsTextView.topAnchor.constraint(equalTo: line2.bottomAnchor, constant: 5).isActive = true
        workYearsTextView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        // second range slider
        rangeSlider2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        rangeSlider2.topAnchor.constraint(equalTo: workYearsTextView.bottomAnchor, constant: 10).isActive = true
        rangeSlider2.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85).isActive = true
        rangeSlider2.heightAnchor.constraint(equalToConstant: 10).isActive = true
        // "0" and "5+"
        minTextView2.topAnchor.constraint(equalTo: rangeSlider2.bottomAnchor, constant: 10).isActive = true
        minTextView2.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        maxTextView2.topAnchor.constraint(equalTo: rangeSlider2.bottomAnchor, constant: 10).isActive = true
        maxTextView2.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        // line under second range slider
        line3.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        line3.topAnchor.constraint(equalTo: minTextView2.bottomAnchor, constant: 10).isActive = true
        line3.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85).isActive = true
        line3.heightAnchor.constraint(equalToConstant: 1).isActive = true
        // "Location"
        locationTextView.topAnchor.constraint(equalTo: line3.bottomAnchor, constant: 0).isActive = true
        locationTextView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        // "Washington, D.C."
        washingtonTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        washingtonTextField.topAnchor.constraint(equalTo: locationTextView.bottomAnchor, constant: 0).isActive = true
        washingtonTextField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85).isActive = true
        washingtonTextField.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.07).isActive = true
        // "Apply" button
        applyBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        applyBtn.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -view.bounds.size.height * 0.03).isActive = true
        applyBtn.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85).isActive = true
        applyBtn.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.07).isActive = true
    }
}
