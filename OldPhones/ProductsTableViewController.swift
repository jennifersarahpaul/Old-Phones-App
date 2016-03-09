//
//  ProductsTableViewController.swift
//  OldPhones
//
//  Created by Jennifer Tigner on 2016-03-09.
//  Copyright © 2016 Jennifer Tigner. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ProductCell",
        forIndexPath: indexPath)
        cell.textLabel?.text = "Hello friend."
        cell.imageView?.image = UIImage(named: "image-cell1")
        return cell
    }
    
}
