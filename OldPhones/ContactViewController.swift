//
//  ContactViewController.swift
//  OldPhones
//
//  Created by Jennifer Tigner on 2016-03-09.
//  Copyright © 2016 Jennifer Tigner. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(scrollView)
    }
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        scrollView.contentSize = CGSizeMake(375, 800)
    }
}
