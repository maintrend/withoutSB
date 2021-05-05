//
//  FirstVC.swift
//  InternshipMVC
//
//  Created by talgat on 12/8/20.
//

import UIKit

class FirstVC: UIViewController {
    
// MARK: - Arrays
    var images1: [String] = [
        "7", "7", "7"]
    var images2:[UIImage] = [
        UIImage(named: "8")!,
        UIImage(named: "9")!,
        UIImage(named: "10")!,
        UIImage(named: "8")!,
        UIImage(named: "9")!,
        UIImage(named: "10")!,
        UIImage(named: "8")!,
        UIImage(named: "9")!, ]
    var images3:[UIImage] = [
        UIImage(named: "11")!,
        UIImage(named: "12")!,
        UIImage(named: "11")!,
        UIImage(named: "12")!, ]
    var images3Label:[String] = [
        "How to organize a grand party", "Secrets of perfect wedding", "To be continued..."]

// MARK: - Properties
    var myCollectionView:UICollectionView?
     let firstTextView: UITextView = {
         let textView = UITextView()
         textView.text = "Hello, Kair"
         textView.font = UIFont.boldSystemFont(ofSize: 30)
         textView.textColor = UIColor(red: 0, green: 0.569, blue: 0.682, alpha: 1)
         textView.translatesAutoresizingMaskIntoConstraints = false
         textView.textAlignment = .center
         textView.isEditable = false
         textView.isScrollEnabled = false
         return textView
     }()
    
     let topRightBtn: UIButton = {
        let topRightButton = UIButton(type: .custom)
        if let image = UIImage(named: "6") {
            topRightButton.setImage(image, for: .normal)
        }
        topRightButton.setTitle("", for: .normal)
        topRightButton.setTitleColor(.white, for: .normal)
        topRightButton.frame = CGRect(x: 0, y: 0, width: 25, height: 25)
        topRightButton.backgroundColor = .green
        topRightButton.layer.backgroundColor = UIColor(red: 1, green: 0.478, blue: 0.349, alpha: 1).cgColor
        topRightButton.translatesAutoresizingMaskIntoConstraints = false
        topRightButton.layer.cornerRadius = 5
        return topRightButton
    }()
     let collectionView1: UICollectionView = {
            let layout = UICollectionViewFlowLayout()
            layout.scrollDirection = .horizontal
            let cv1 = UICollectionView(frame: .zero, collectionViewLayout: layout)
            cv1.backgroundColor = .white
            cv1.layer.cornerRadius = 10
            return cv1
        }()
   
     let thirdTextView: UITextView = {
        let thirdTV = UITextView()
        thirdTV.text = "Categories"
        thirdTV.font = UIFont.boldSystemFont(ofSize: 20)
        thirdTV.textColor = UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)
        thirdTV.translatesAutoresizingMaskIntoConstraints = false
        thirdTV.textAlignment = .center
        thirdTV.isEditable = false
        thirdTV.isScrollEnabled = false
        return thirdTV
    }()
    
     let fourthTextView: UITextView = {
        let fourthTV = UITextView()
        fourthTV.text = "see more >"
        fourthTV.font = UIFont.boldSystemFont(ofSize: 15)
        fourthTV.textColor = UIColor(red: 0.42, green: 0.478, blue: 0.537, alpha: 1)
        fourthTV.translatesAutoresizingMaskIntoConstraints = false
        fourthTV.textAlignment = .center
        fourthTV.isEditable = false
        fourthTV.isScrollEnabled = false
        return fourthTV
    }()
    
     let collectionView2: UICollectionView = {
            let layout2 = UICollectionViewFlowLayout()
            layout2.scrollDirection = .horizontal
            let cv2 = UICollectionView(frame: .zero, collectionViewLayout: layout2)
            cv2.backgroundColor = .white
            cv2.layer.cornerRadius = 10
            return cv2
        }()
     let designBtn: UIButton = {
        let designButton = UIButton()
        designButton.setTitle("Design your event", for: .normal)
        designButton.setTitleColor(.white, for: .normal)
        designButton.frame = CGRect(x: 0, y: 0, width: 343, height: 56)
        designButton.backgroundColor = .white
        designButton.layer.backgroundColor = UIColor(red: 1, green: 0.478, blue: 0.349, alpha: 1).cgColor
        designButton.translatesAutoresizingMaskIntoConstraints = false
        designButton.layer.cornerRadius = 8
        return designButton
        
    }()
    
     let fifthTextView: UITextView = {
        let fifthTV = UITextView()
        fifthTV.text = "Useful articles"
        fifthTV.font = UIFont.boldSystemFont(ofSize: 20)
        fifthTV.textColor = UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)
        fifthTV.translatesAutoresizingMaskIntoConstraints = false
        fifthTV.textAlignment = .center
        fifthTV.isEditable = false
        fifthTV.isScrollEnabled = false
        return fifthTV
    }()
    
     let sixTextView: UITextView = {
        let sixTV = UITextView()
        sixTV.text = "see more >"
        sixTV.font = UIFont.boldSystemFont(ofSize: 15)
        sixTV.textColor = UIColor(red: 0.42, green: 0.478, blue: 0.537, alpha: 1)
        sixTV.translatesAutoresizingMaskIntoConstraints = false
        sixTV.textAlignment = .center
        sixTV.isEditable = false
        sixTV.isScrollEnabled = false
        return sixTV
    }()
     let collectionView3: UICollectionView = {
            let layout3 = UICollectionViewFlowLayout()
            layout3.scrollDirection = .horizontal
            let cv3 = UICollectionView(frame: .zero, collectionViewLayout: layout3)
            cv3.backgroundColor = .white
            cv3.layer.cornerRadius = 10
            return cv3
        }()
    
 // MARK - Func viewDidLoad()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.isHidden = true
        view.backgroundColor = .white      
        view.addSubview(firstTextView)
        view.addSubview(topRightBtn)
        view.addSubview(collectionView1)
        view.addSubview(thirdTextView)
        view.addSubview(fourthTextView)
        view.addSubview(collectionView2)
        view.addSubview(designBtn)
        view.addSubview(fifthTextView)
        view.addSubview(sixTextView)
        view.addSubview(collectionView3)
        collectionViewSetup()
        setupLayoutFirstVC()
    }

// MARK: - Private func
    private func collectionViewSetup() {
        collectionView1.delegate = self
        collectionView1.dataSource = self
        collectionView1.showsHorizontalScrollIndicator = false
        collectionView1.register(UINib(nibName: "VC1Cell", bundle: nil), forCellWithReuseIdentifier: "VC1Cell")
        collectionView2.delegate = self
        collectionView2.dataSource = self
        collectionView2.showsHorizontalScrollIndicator = false
        collectionView2.register(UINib(nibName: "VC2Cell", bundle: nil), forCellWithReuseIdentifier: "VC2Cell")
        collectionView3.delegate = self
        collectionView3.dataSource = self
        collectionView3.showsHorizontalScrollIndicator = false
        collectionView3.register(UINib(nibName: "FirstVCCell", bundle: nil), forCellWithReuseIdentifier: "FirstVCCell")
    }
}

// MARK: - Extension, collection view functions
extension FirstVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if (collectionView == collectionView1) {
            return 3
        } else if (collectionView == collectionView2){
            return 5
        } else {
            return 3
        }

    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if (collectionView == collectionView1) {
            let cell1 = collectionView.dequeueReusableCell(withReuseIdentifier: "VC1Cell", for: indexPath) as! VC1Cell
            cell1.backgroundColor = .green
            cell1.layer.cornerRadius = 10
            cell1.image1.image = UIImage(named: "7")
            cell1.image1.contentMode = .scaleToFill
            return cell1
        } else if (collectionView == collectionView2){
        let cell2  = collectionView.dequeueReusableCell(withReuseIdentifier: "VC2Cell", for: indexPath) as! VC2Cell
            cell2.backgroundColor = .blue
            cell2.layer.cornerRadius = 10
            cell2.layer.borderColor = UIColor(red: 0.846, green: 0.846, blue: 0.846, alpha: 1).cgColor
            cell2.layer.borderWidth = 1
            cell2.image2.image = images2[indexPath.item]
            cell2.image2.contentMode = .scaleToFill
            return cell2
        } else {
            let cell3  = collectionView.dequeueReusableCell(withReuseIdentifier: "FirstVCCell", for: indexPath) as! FirstVCCell
                cell3.backgroundColor = .systemBackground
                cell3.layer.cornerRadius = 10
                cell3.myLabel.text = images3Label[indexPath.item]
            cell3.myLabel.font = UIFont.systemFont(ofSize: 12)
            cell3.myImage.image = images3[indexPath.item]
            cell3.myImage.contentMode = .scaleToFill
            cell3.myImage.layer.cornerRadius = 10
                return cell3
        }
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if (collectionView == collectionView1) {
            return CGSize(width: view.bounds.size.width * 0.9 , height: view.bounds.size.height * 0.2)
        } else if (collectionView == collectionView2){
            return CGSize(width: view.bounds.size.width * 0.3, height: view.bounds.size.height * 0.15)
        } else {
            return CGSize(width: view.bounds.size.width * 0.45, height: view.bounds.size.height * 0.25)
        }
            
    }
}
