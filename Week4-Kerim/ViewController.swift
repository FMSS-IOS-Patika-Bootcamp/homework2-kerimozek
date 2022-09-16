//
//  ViewController.swift
//  Week4-Kerim
//
//  Created by Mehmet Kerim ÖZEK on 12.09.2022.
//

import UIKit


class ViewController: UIViewController {
    
    //Defining Constants and Variables
    @IBOutlet weak var collectionView: UICollectionView!
    let nameCellIdentifier = "nameCellIdentifier"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //CustomCell Registered to CollectionView and Referred Delegate and DataSource to Self
        collectionView.register(.init(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: nameCellIdentifier)
        collectionView.delegate = self
        collectionView.dataSource = self
        
    }
}


//----------EXTENSIONS----------//

//Extension for CollectionViewDataSource
extension ViewController: UICollectionViewDataSource {
    
    
    //Setting Number of Item in Section for CollectionView
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return NewsDetails.data.count
    }
    
    
    //Setting Title and Image for CollectionView
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: nameCellIdentifier, for: indexPath) as! CollectionViewCell
        cell.cellImage.image = NewsDetails.data[indexPath.row].image
        cell.cellTitle.text = NewsDetails.data[indexPath.row].title
        return cell
        
    }
}

//Extension for CollectionViewDelegateFlowLayout
extension ViewController: UICollectionViewDelegateFlowLayout {
    
    //Setting Item Size and Row Counts
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: (collectionView.frame.width)/2.4, height: (collectionView.frame.height) / 3.5 )
    }
    
    //Setting Gap for Items on CollectionView
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 15.0, bottom: 0, right: 15.0)
    }
    
}


//Extension for CollectionViewDelegate
extension ViewController: UICollectionViewDelegate {
    
    //Going to Details Page From CollectionView Selected Item
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        //Sending Info From ViewController to SecondViewController
        let vc = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        vc.dataSecond = NewsDetails.data[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }
    
}



