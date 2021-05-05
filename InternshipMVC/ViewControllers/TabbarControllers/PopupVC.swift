//
//  PopupVC.swift
//  InternshipMVC
//
//  Created by talgat on 12/14/20.
//

import UIKit

class PopupVC: UIViewController {

// MARK: - Properties
     let firstTextView: UITextView = {
         let textView = UITextView()
         textView.text = "Filter"
         textView.font = UIFont.boldSystemFont(ofSize: 30)
         textView.textColor = UIColor(red: 0, green: 0.569, blue: 0.682, alpha: 1)
         textView.translatesAutoresizingMaskIntoConstraints = false
         textView.textAlignment = .center
         textView.isEditable = false
         textView.isScrollEnabled = false
         return textView
     }()
    
     let topRightBtn: UIButton = {
        let topRightButton = UIButton()
        topRightButton.setTitle("Clear", for: .normal)
        topRightButton.setTitleColor(.gray, for: .normal)
        topRightButton.frame = CGRect(x: 0, y: 0, width: 40, height: 20)
        topRightButton.backgroundColor = .systemBackground
        topRightButton.translatesAutoresizingMaskIntoConstraints = false
        topRightButton.addSeparator(at: .bottom, color: .gray, weight: 1)
        topRightButton.addTarget(self, action: #selector(clearButton), for: .touchUpInside)
        return topRightButton
    }()
    
     let secondTextView: UITextView = {
         let secondTV = UITextView()
        secondTV.text = "Sort by"
        secondTV.font = UIFont.boldSystemFont(ofSize: 20)
        secondTV.textColor = UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)
        secondTV.translatesAutoresizingMaskIntoConstraints = false
        secondTV.textAlignment = .center
        secondTV.isEditable = false
        secondTV.isScrollEnabled = false
         return secondTV
     }()
    
     let priceBtn: UIButton = {
        let priceButton = UIButton()
        priceButton.setTitle("price", for: .normal)
        priceButton.setTitleColor(.white, for: .normal)
        priceButton.frame = CGRect(x: 0, y: 0, width: 50, height: 15)
        priceButton.backgroundColor = UIColor(red: 1, green: 0.478, blue: 0.349, alpha: 1)
        priceButton.translatesAutoresizingMaskIntoConstraints = false
        priceButton.layer.cornerRadius = 15
        return priceButton
    }()
     let ratingBtn: UIButton = {
        let ratingButton = UIButton()
        ratingButton.setTitle("rating", for: .normal)
        ratingButton.setTitleColor(.gray, for: .normal)
        ratingButton.frame = CGRect(x: 0, y: 0, width: 50, height: 15)
        ratingButton.backgroundColor = .white
        ratingButton.translatesAutoresizingMaskIntoConstraints = false
        ratingButton.layer.cornerRadius = 15
        ratingButton.layer.borderColor = UIColor.lightGray.cgColor
        ratingButton.layer.borderWidth = 1.0
        return ratingButton
    }()
     let workYearsBtn: UIButton = {
        let workYearsButton = UIButton()
        workYearsButton.setTitle("work years", for: .normal)
        workYearsButton.setTitleColor(.gray, for: .normal)
        workYearsButton.frame = CGRect(x: 0, y: 0, width: 50, height: 15)
        workYearsButton.backgroundColor = .white
        workYearsButton.translatesAutoresizingMaskIntoConstraints = false
        workYearsButton.layer.cornerRadius = 15
        workYearsButton.layer.borderColor = UIColor.lightGray.cgColor
        workYearsButton.layer.borderWidth = 1.0
        return workYearsButton
    }()
     let verifiedBtn: UIButton = {
        let verifiedButton = UIButton()
        verifiedButton.setTitle("verified", for: .normal)
        verifiedButton.setTitleColor(.gray, for: .normal)
        verifiedButton.frame = CGRect(x: 0, y: 0, width: 50, height: 15)
        verifiedButton.backgroundColor = .white
        verifiedButton.translatesAutoresizingMaskIntoConstraints = false
        verifiedButton.layer.cornerRadius = 15
        verifiedButton.layer.borderColor = UIColor.lightGray.cgColor
        verifiedButton.layer.borderWidth = 1.0
        return verifiedButton
    }()
    
     let line1: UILabel = {
        let line1Label = UILabel()
        line1Label.frame = CGRect(x: 0, y: 0, width: 340, height: 1)
        line1Label.backgroundColor = .gray
        line1Label.layer.backgroundColor = UIColor(red: 0.833, green: 0.833, blue: 0.833, alpha: 1).cgColor
        line1Label.layer.cornerRadius = 1
        line1Label.translatesAutoresizingMaskIntoConstraints = false
        return line1Label
    }()
     let pricePerHourTextView: UITextView = {
         let pricePerHourTV = UITextView()
        pricePerHourTV.text = "Price per hour"
        pricePerHourTV.font = UIFont.boldSystemFont(ofSize: 20)
        pricePerHourTV.textColor = UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)
        pricePerHourTV.translatesAutoresizingMaskIntoConstraints = false
        pricePerHourTV.textAlignment = .center
        pricePerHourTV.isEditable = false
        pricePerHourTV.isScrollEnabled = false
         return pricePerHourTV
     }()
    
     let rangeSlider1: UISlider = {
        let slider1 = UISlider()
        slider1.frame = CGRect(x: 0, y: 0, width: 300, height: 20)
        slider1.minimumValue = 0
        slider1.maximumValue = 100
        slider1.isContinuous = true
        slider1.tintColor = UIColor(red: 1, green: 0.478, blue: 0.349, alpha: 1)
        slider1.translatesAutoresizingMaskIntoConstraints = false
        return slider1
    }()
     let minTextView: UITextView = {
         let minTV = UITextView()
        minTV.text = "0"
        minTV.font = UIFont.boldSystemFont(ofSize: 15)
        minTV.textColor = UIColor(red: 0.42, green: 0.478, blue: 0.537, alpha: 1)
        minTV.translatesAutoresizingMaskIntoConstraints = false
        minTV.textAlignment = .center
        minTV.isEditable = false
        minTV.isScrollEnabled = false
         return minTV
     }()
     let maxTextView: UITextView = {
         let maxTV = UITextView()
        maxTV.text = "1500"
        maxTV.font = UIFont.boldSystemFont(ofSize: 15)
        maxTV.textColor = UIColor(red: 0.42, green: 0.478, blue: 0.537, alpha: 1)
        maxTV.translatesAutoresizingMaskIntoConstraints = false
        maxTV.textAlignment = .center
        maxTV.isEditable = false
        maxTV.isScrollEnabled = false
         return maxTV
     }()
     let line2: UILabel = {
        let line2Label = UILabel()
        line2Label.frame = CGRect(x: 0, y: 0, width: 340, height: 1)
        line2Label.backgroundColor = .gray
        line2Label.layer.backgroundColor = UIColor(red: 0.833, green: 0.833, blue: 0.833, alpha: 1).cgColor
        line2Label.layer.cornerRadius = 1
        line2Label.translatesAutoresizingMaskIntoConstraints = false
        return line2Label
    }()
    
     let workYearsTextView: UITextView = {
         let workYearsTV = UITextView()
        workYearsTV.text = "Work years"
        workYearsTV.font = UIFont.boldSystemFont(ofSize: 20)
        workYearsTV.textColor = UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)
        workYearsTV.translatesAutoresizingMaskIntoConstraints = false
        workYearsTV.textAlignment = .center
        workYearsTV.isEditable = false
        workYearsTV.isScrollEnabled = false
         return workYearsTV
     }()
    
     let rangeSlider2: UISlider = {
        let slider2 = UISlider()
        slider2.frame = CGRect(x: 0, y: 0, width: 300, height: 20)
        slider2.minimumValue = 0
        slider2.maximumValue = 100
        slider2.isContinuous = true
        slider2.tintColor = UIColor(red: 1, green: 0.478, blue: 0.349, alpha: 1)
        slider2.translatesAutoresizingMaskIntoConstraints = false
        return slider2
    }()
     let minTextView2: UITextView = {
         let minTV2 = UITextView()
        minTV2.text = "0"
        minTV2.font = UIFont.boldSystemFont(ofSize: 15)
        minTV2.textColor = UIColor(red: 0.42, green: 0.478, blue: 0.537, alpha: 1)
        minTV2.translatesAutoresizingMaskIntoConstraints = false
        minTV2.textAlignment = .center
        minTV2.isEditable = false
        minTV2.isScrollEnabled = false
         return minTV2
     }()
     let maxTextView2: UITextView = {
         let maxTV2 = UITextView()
        maxTV2.text = "5+"
        maxTV2.font = UIFont.boldSystemFont(ofSize: 15)
        maxTV2.textColor = UIColor(red: 0.42, green: 0.478, blue: 0.537, alpha: 1)
        maxTV2.translatesAutoresizingMaskIntoConstraints = false
        maxTV2.textAlignment = .center
        maxTV2.isEditable = false
        maxTV2.isScrollEnabled = false
         return maxTV2
     }()
    
     let line3: UILabel = {
        let line3Label = UILabel()
        line3Label.frame = CGRect(x: 0, y: 0, width: 340, height: 1)
        line3Label.backgroundColor = .gray
        line3Label.layer.backgroundColor = UIColor(red: 0.833, green: 0.833, blue: 0.833, alpha: 1).cgColor
        line3Label.layer.cornerRadius = 1
        line3Label.translatesAutoresizingMaskIntoConstraints = false
        return line3Label
    }()
     let locationTextView: UITextView = {
         let locationTV = UITextView()
        locationTV.text = "Location"
        locationTV.font = UIFont.boldSystemFont(ofSize: 20)
        locationTV.textColor = UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)
        locationTV.translatesAutoresizingMaskIntoConstraints = false
        locationTV.textAlignment = .center
        locationTV.isEditable = false
        locationTV.isScrollEnabled = false
         return locationTV
     }()
    
     let washingtonTextField: UITextField = {
        let washingtonTF = UITextField()
        washingtonTF.backgroundColor = .white
        washingtonTF.alpha = 1.0
        washingtonTF.frame = CGRect(x: 0, y: 0, width: 375, height: 60)
        washingtonTF.layer.cornerRadius = 10
        washingtonTF.layer.borderColor = UIColor(red: 0, green: 0.569, blue: 0.682, alpha: 1).cgColor
        washingtonTF.layer.borderWidth = 1.0
        washingtonTF.text = "     Washington, D.C."
        washingtonTF.textColor = UIColor(red: 0, green: 0.569, blue: 0.682, alpha: 1)
        washingtonTF.translatesAutoresizingMaskIntoConstraints = false
        washingtonTF.autocapitalizationType = .none
        return washingtonTF
    }()
     let applyBtn: UIButton = {
        let applyButton = UIButton()
        applyButton.setTitle("Apply", for: .normal)
        applyButton.setTitleColor(.white, for: .normal)
        applyButton.frame = CGRect(x: 0, y: 0, width: 343, height: 56)
        applyButton.backgroundColor = .white
        applyButton.layer.backgroundColor = UIColor(red: 1, green: 0.478, blue: 0.349, alpha: 1).cgColor
        applyButton.translatesAutoresizingMaskIntoConstraints = false
        applyButton.layer.cornerRadius = 10
        applyButton.addTarget(self, action: #selector(clearButton), for: .touchUpInside)
        return applyButton
    }()

// MARK: -  Func viewDidLoad()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationController?.navigationBar.isHidden = true
        view.addSubview(firstTextView)
        view.addSubview(secondTextView)
        view.addSubview(topRightBtn)
        view.addSubview(priceBtn)
        view.addSubview(ratingBtn)
        view.addSubview(workYearsBtn)
        view.addSubview(verifiedBtn)
        view.addSubview(line1)
        view.addSubview(pricePerHourTextView)
        view.addSubview(rangeSlider1)
        view.addSubview(minTextView)
        view.addSubview(maxTextView)
        view.addSubview(line2)
        view.addSubview(workYearsTextView)
        view.addSubview(rangeSlider2)
        view.addSubview(minTextView2)
        view.addSubview(maxTextView2)
        view.addSubview(line3)
        view.addSubview(locationTextView)
        view.addSubview(washingtonTextField)
        view.addSubview(applyBtn)
        setupLayoutPopupVC()
        animateRangeSlider()
    }
    
// MARK: - Private func
    private func animateRangeSlider() {
        UIView.animate(withDuration: 0.8) {
            self.rangeSlider1.setValue(80.0, animated: true)
                }
        UIView.animate(withDuration: 0.8) {
            self.rangeSlider2.setValue(80.0, animated: true)
                }
    }
    
    @objc private func clearButton(){
        self.dismiss(animated: true, completion: nil)
    }

}

// MARK: - Extension, separator func
extension UIView {
    enum SeparatorPosition {
        case bottom
    }
    @discardableResult
    func addSeparator(at position: SeparatorPosition, color: UIColor, weight: CGFloat = 1.0 / UIScreen.main.scale, insets: UIEdgeInsets = .zero) -> UIView {
        let view = UIView()
        view.backgroundColor = color
        view.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(view)
        switch position {
        case .bottom:
            view.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -insets.bottom).isActive = true
            view.leftAnchor.constraint(equalTo: self.leftAnchor, constant: insets.left).isActive = true
            view.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -insets.right).isActive = true
            view.heightAnchor.constraint(equalToConstant: weight).isActive = true
        }
        return view
    }
    
}
