//
//  ProfileController.swift
//  StackViewExample
//
//  Created by Anthony Ruiz on 4/5/18.
//  Copyright © 2018 Jakaboy. All rights reserved.
//

import Foundation
import UIKit

class ProfileController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    fileprivate let headerId = "headerId"
   
   override func viewDidLoad() {
      super.viewDidLoad()
      collectionView?.backgroundColor = .white
      navigationItem.title = "Profile"
      navigationController?.navigationBar.prefersLargeTitles = true
      collectionView?.alwaysBounceVertical = true
      
      let headerNib = UINib(nibName: "Header", bundle: nil)
      collectionView?.register(headerNib, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: headerId)
   }
   
   
   //MARK:- UICollectionView
   
   func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
      return CGSize(width: view.frame.width, height: view.frame.width)
   }
   
   override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
      let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerId, for: indexPath)
      return header
   }
   
   
   
   
   
   
}
