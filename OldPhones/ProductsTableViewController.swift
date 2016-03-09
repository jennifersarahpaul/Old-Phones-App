//
//  ProductsTableViewController.swift
//  OldPhones
//
//  Created by Jennifer Tigner on 2016-03-09.
//  Copyright © 2016 Jennifer Tigner. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {
    
    var productNames: [String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productNames = ["1907 Wall Set", "1921 Dial Phone", "1937 Desk Set", "1984 Motorola Portable"]
    }
    
    // number of rows
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // 'if let' checks if variable exists AND assigns it to pnames
        if let pNames = productNames {
            return pNames.count
        }
        return 0
    }
    
    // runs once for each row (ie. cell)
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ProductCell",
        forIndexPath: indexPath)
        let productName = productNames?[indexPath.row]
        if let pName = productName {
            cell.textLabel?.text = pName
        }
        cell.imageView?.image = UIImage(named: "image-cell1")
        return cell
    }
    
    // transition from table view to product view
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowProduct" {
            let productVC = segue.destinationViewController as? ProductViewController
            // guard: checks if values exist, and (if they do) sets them to the 'cell' and 'indexPath' variables
            guard let cell = sender as? UITableViewCell, let indexPath = tableView.indexPathForCell(cell) else {
                return
            }
            productVC?.productName = productNames?[indexPath.row]
        }
    }
    
}
