//
//  collectionViewTableViewCell.swift
//  scrollView_demo3
//
//  Created by Edwin on 2018/1/23.
//  Copyright © 2018年 Edwin. All rights reserved.
//

import UIKit

class collectionViewTableViewCell: UITableViewCell {

    @IBOutlet weak var myCollectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension collectionViewTableViewCell:UICollectionViewDataSource,UICollectionViewDelegate{
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        <#code#>
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
}
