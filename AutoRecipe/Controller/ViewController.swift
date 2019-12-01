//
//  ViewController.swift
//  AutoRecipe
//
//  Created by 月岡　悠 on 2019/08/21.
//  Copyright © 2019 AutoRecipe_Developers. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    // MARK: - Properties
    
    @IBOutlet weak var mainFoodCategory: UICollectionView!
    let maxSize : CGSize = UIScreen.main.nativeBounds.size
    var maxWidth : Int = 0
    var maxHeight : Int = 0
        
    func getSizeOfScreen() {
        maxWidth = Int(maxSize.width)
        maxHeight = Int(maxSize.height)
        //let maxSize : CGSize = UIScreen.main.bounds.size
        print(maxWidth, maxHeight)
    }
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 15, left: 15, bottom: 15, right: 15)
        mainFoodCategory.collectionViewLayout = layout
        
        mainFoodCategory.register(UINib(nibName: "foodCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "foodCollectionViewCell")
    }

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //return models.count
        //適当に入れただけなので後で消す
        return 0
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "mainFood", for: indexPath)
        cell.backgroundColor = .gray
        return cell
    }
    
    
}

