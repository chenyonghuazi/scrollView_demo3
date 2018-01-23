//
//  topScrollViewCell.swift
//  scrollView_demo3
//
//  Created by Edwin on 2018/1/23.
//  Copyright © 2018年 Edwin. All rights reserved.
//

import UIKit

class topScrollViewCell: UITableViewCell,UIScrollViewDelegate {
    
    @IBOutlet weak var myScrollView: UIScrollView!
    @IBOutlet weak var pageController: UIPageControl!
    
    let topScrollData = ["sephora","mcdonalds","lenovo","swiss chalet"]
    var contentSize:CGFloat = 0.0
    var count:CGFloat = 0.0
    var frameWidth:CGFloat?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        myScrollView.delegate = self
        
        //setting the scrollview
        setScrollView()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func setScrollView(){
        for index in topScrollData{
            let xcoordinate = myScrollView.frame.width * count
            let imageV = UIImageView()
            imageV.image = UIImage(named: index)
            imageV.contentMode = .scaleAspectFill
            imageV.frame = CGRect(x: xcoordinate, y: 0, width: myScrollView.frame.width, height: myScrollView.frame.height)
            myScrollView.addSubview(imageV)
            myScrollView.isPagingEnabled = true
            myScrollView.showsHorizontalScrollIndicator = false
            
            contentSize += myScrollView.frame.width
            count += 1.0
        }
        myScrollView.contentSize = CGSize(width: contentSize, height: myScrollView.frame.height)
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        pageController.currentPage = Int(myScrollView.contentOffset.x / myScrollView.frame.width)
    }

}
