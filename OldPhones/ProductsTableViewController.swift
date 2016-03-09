//
//  ProductsTableViewController.swift
//  OldPhones
//
//  Created by Jennifer Tigner on 2016-03-09.
//  Copyright © 2016 Jennifer Tigner. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {
    
    var products: [Product]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let product1 = Product()
        let product2 = Product()
        let product3 = Product()
        let product4 = Product()
        
        product1.name = "1907 Wall Set"
        product1.productImage = "phone-fullscreen1"
        product1.cellImage = "image-cell1"
        product1.price = 59.99
        
        product2.name = "1921 Dial Phone"
        product2.productImage = "phone-fullscreen2"
        product2.cellImage = "image-cell2"
        product2.price = 39.99
        
        product3.name = "1937 Desk Set"
        product3.productImage = "phone-fullscreen3"
        product3.cellImage = "image-cell3"
        product3.price = 0.99
        
        product4.name = "1984 Motorola Portable"
        product4.productImage = "phone-fullscreen4"
        product4.cellImage = "image-cell4"
        product4.price = 19.00
        
        products = [product1, product2, product3, product4]
    }
    
    // number of rows
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // 'if let' checks if variable exists AND assigns it to pnames
        if let p = products {
            return p.count
        }
        return 0
    }
    
    // runs once for each row (ie. cell)
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ProductCell",
        forIndexPath: indexPath)
        let product = products?[indexPath.row]
        if let p = product {
            cell.textLabel?.text = p.name
            if let i = p.cellImage {
                cell.imageView?.image = UIImage(named: i)
            }
        }
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
            productVC?.product = products?[indexPath.row]
        }
    }
    
}
