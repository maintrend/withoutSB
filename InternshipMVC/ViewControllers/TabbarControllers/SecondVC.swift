//
//  SecondVC.swift
//  InternshipMVC
//
//  Created by talgat on 12/8/20.
//

import UIKit

class SecondVC: UIViewController, UIPopoverPresentationControllerDelegate {
    let popUpVC = PopupVC()
    
// MARK: - Arrays
    var images4:[UIImage] = [
        UIImage(named: "23")!,
        UIImage(named: "24")!,
        UIImage(named: "25")!,
        UIImage(named: "26")!,
        UIImage(named: "23")!,
        UIImage(named: "24")!,
        UIImage(named: "25")!,
        UIImage(named: "26")!, ]
    
    var myNames:[String] = ["Greg Henry", "Cody Lane", "Robert Edwards" , "Jorge Watson", "Shane Black", "Greg Henry", "Cody Lane", "Robert Edwards"]
 
// MARK: - Properties
     let firstTextView: UITextView = {
         let textView = UITextView()
         textView.text = "Search"
         textView.font = UIFont.boldSystemFont(ofSize: 15)
         textView.textColor = UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)
         textView.translatesAutoresizingMaskIntoConstraints = false
         textView.textAlignment = .center
         textView.isEditable = false
         textView.isScrollEnabled = false
         return textView
     }()
     let secondTextView: UITextView = {
         let secondTV = UITextView()
        secondTV.text = "Showman"
        secondTV.font = UIFont.boldSystemFont(ofSize: 30)
        secondTV.textColor = UIColor(red: 1, green: 0.478, blue: 0.349, alpha: 1)
        secondTV.translatesAutoresizingMaskIntoConstraints = false
        secondTV.textAlignment = .center
        secondTV.isEditable = false
        secondTV.isScrollEnabled = false
         return secondTV
     }()
    
     let topRightBtn: UIButton = {
        let topRightButton = UIButton(type: .custom)
        if let image = UIImage(named: "15") {
            topRightButton.setImage(image, for: .normal)
        }
        topRightButton.setTitle("@", for: .normal)
        topRightButton.setTitleColor(.white, for: .normal)
        topRightButton.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
        topRightButton.backgroundColor = .green
        topRightButton.layer.backgroundColor = UIColor(red: 1, green: 0.478, blue: 0.349, alpha: 1).cgColor
        topRightButton.translatesAutoresizingMaskIntoConstraints = false
        topRightButton.layer.cornerRadius = 5
        topRightButton.addTarget(self, action: #selector(didRightButton), for: .touchUpInside)
        return topRightButton
    }()
     let thirdTextView: UITextView = {
         let thirdTV = UITextView()
        thirdTV.text = "Washington,D.C. *"
        thirdTV.font = UIFont.boldSystemFont(ofSize: 15)
        thirdTV.textColor = UIColor(red: 0, green: 0.569, blue: 0.682, alpha: 1)
        thirdTV.translatesAutoresizingMaskIntoConstraints = false
        thirdTV.textAlignment = .center
        thirdTV.layer.backgroundColor = UIColor(red: 0.808, green: 0.906, blue: 0.941, alpha: 1).cgColor
        thirdTV.layer.cornerRadius = 15
        thirdTV.isEditable = false
        thirdTV.isScrollEnabled = false
         return thirdTV
     }()
    
     let collectionView1: UICollectionView = {
           let layout = UICollectionViewFlowLayout()
           layout.scrollDirection = .vertical
           let cv1 = UICollectionView(frame: .zero, collectionViewLayout: layout)
           cv1.backgroundColor = .white
           cv1.layer.cornerRadius = 10
           return cv1
       }()
 
// MARK: - Func viewDidLoad()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationController?.navigationBar.isHidden = true
        view.addSubview(firstTextView)
        view.addSubview(secondTextView)
        view.addSubview(topRightBtn)
        view.addSubview(thirdTextView)
        view.addSubview(collectionView1)
        collectionViewSetup()
        setupLayoutSecondVC()
    }

// MARK: - Private func
    private func collectionViewSetup() {
        collectionView1.delegate = self
        collectionView1.dataSource = self
        collectionView1.showsVerticalScrollIndicator = false
        collectionView1.register(UINib(nibName: "SecondVCCell", bundle: nil), forCellWithReuseIdentifier: "SecondVCCell")
        
    }
    @objc private func didRightButton(){
        self.popUpVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        self.popUpVC.preferredContentSize = CGSize(width: view.bounds.height, height: view.bounds.height)
        let popoverPresentationViewController = self.popUpVC.popoverPresentationController
        popoverPresentationViewController?.permittedArrowDirections = .any
        popoverPresentationViewController?.delegate = self
        popoverPresentationViewController?.sourceView = self.view
        present(popUpVC, animated: true, completion: nil)
        
    }

}

// MARK: - Extension, collection view functions
extension SecondVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell1 = collectionView.dequeueReusableCell(withReuseIdentifier: "SecondVCCell", for: indexPath) as! SecondVCCell
        cell1.myFoto.image = images4[indexPath.item]
        cell1.myName.text = myNames[indexPath.item]
        cell1.dataImage.image = UIImage(named: "27")
        cell1.backgroundColor = UIColor.white
        cell1.contentView.layer.cornerRadius = 10.0
        cell1.contentView.layer.borderWidth = 1.0
        cell1.contentView.layer.borderColor = UIColor.clear.cgColor
        cell1.contentView.layer.masksToBounds = true
        cell1.layer.shadowColor = UIColor.lightGray.cgColor
        cell1.layer.shadowOffset = CGSize(width: 0,height: 5.0)
        cell1.layer.shadowRadius = 5.0
        cell1.layer.cornerRadius = 10
        cell1.layer.shadowOpacity = 1.0
        cell1.layer.masksToBounds = false
        cell1.layer.shadowPath = UIBezierPath(roundedRect:cell1.bounds, cornerRadius:cell1.contentView.layer.cornerRadius).cgPath
        cell1.myFoto.layer.cornerRadius = 40
        cell1.myFoto.contentMode = .scaleToFill
        return cell1
       
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.size.width - 30, height: 100)
       
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 30
    }
}
