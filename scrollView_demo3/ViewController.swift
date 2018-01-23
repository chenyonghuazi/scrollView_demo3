//
//  ViewController.swift
//  scrollView_demo3
//
//  Created by Edwin on 2018/1/23.
//  Copyright © 2018年 Edwin. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    
    let collectionImageSet = ["daily","electronic","food","furniture","gift catd","office"]
    var tableViewData = ["sam","sam","sam","sam","sam","sam","sam","sam","sam","sam","sam","sam","sam","sam","sam","sam","sam","sam","sam","sam","sam","sam","sam","sam","sam","sam","sam","samExceed"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewData.count + 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "topScrollView") as! topScrollViewCell
            cell.frameWidth = self.view.frame.width
            return cell
        }
        if indexPath.row == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: "collectionView") as! collectionViewTableViewCell
            return cell
        }
        
    }

}

