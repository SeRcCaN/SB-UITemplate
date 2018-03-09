//
//  CVinsideCell.swift
//  SB-UITemplate
//
//  Created by Sercan Burak AĞIR on 1.02.2018.
//  Copyright © 2018 Sercan Burak AĞIR. All rights reserved.
//

import UIKit

class CVinsideCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupCollectionView()
        
    }
}

extension CVinsideCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SuggestCVCell", for: indexPath) as! SuggestCVCell
        transformCell(cell: cell)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200.0, height: 250.0)
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        collectionView.visibleCells.forEach{transformCell(cell: $0)}
    }
    
    func transformCell(cell: UICollectionViewCell){
        let coverFrame = cell.convert(self.bounds, to: self)
        let transformOffsetY = collectionView.bounds.width * 5/10
        let percent = getPercent(value: (coverFrame.minX - transformOffsetY) / (collectionView.bounds.width - transformOffsetY))
        
        let maxScakeDifference: CGFloat = 0.35
        let scale = percent * maxScakeDifference
        
        cell.transform = CGAffineTransform(scaleX: 1-scale, y: 1-scale)
    }
    
    func getPercent(value: CGFloat) -> CGFloat{
        let lBound:CGFloat = 0
        let uBound:CGFloat = 1
        
        if value < lBound{
            return lBound
        }else if value > uBound{
            return uBound
        }
        
        return value
    }
    
    func setupCollectionView(){
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        
        let UIEdgeInsets  = UIEdgeInsetsMake(0.0, 15.0, 10.0, 50.0);
        self.collectionView.contentInset = UIEdgeInsets
        collectionView.showsHorizontalScrollIndicator = false
        
        let SuggestCellNib = UINib(nibName: "SuggestCVCell", bundle: nil)
        self.collectionView.register(SuggestCellNib, forCellWithReuseIdentifier: "SuggestCVCell")
    }
    
    
}
