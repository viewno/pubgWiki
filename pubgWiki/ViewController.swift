//
//  ViewController.swift
//  pubgWiki
//
//  Created by Ryusei Tashiro on 2017/12/05.
//  Copyright © 2017年 Ryusei Tashiro. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource,UICollectionViewDelegate, UICollectionViewDelegateFlowLayout  {
    
    @IBOutlet var collectionView:UICollectionView!
    
    let photos = ["Weapon", "Magazine", "Attachment", "Equipment", "Kit"]
    let labels = ["武器", "弾薬", "アタッチメント", "装備", "回復"]
    
    var selectedImage: UIImage?

    var nowSelcetedId: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let testCell:UICollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
        
        let imageView = testCell.contentView.viewWithTag(1) as! UIImageView
        let cellImage = UIImage(named: photos[indexPath.row])
        imageView.image = cellImage
        
        let label = testCell.contentView.viewWithTag(2) as! UILabel
        label.text = labels[indexPath.row]
        
        return testCell
        
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        didSelectItemAt indexPath: IndexPath) {
        nowSelcetedId = indexPath.row
        performSegue(withIdentifier: "toSubViewController",sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any!) {
        if (segue.identifier == "toSubViewController") {
            
            let subVC: SubViewController = (segue.destination as? SubViewController)!
            subVC.selectedWeaponId = nowSelcetedId
            
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellSize:CGFloat = self.view.bounds.width/2 - 20
        return CGSize(width: cellSize, height: cellSize)
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

