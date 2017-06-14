//
//  ViewController.swift
//  SegmentedController
//
//  Created by Iwan Teplyakov on 6/14/17.
//  Copyright © 2017 Iwan Teplyakov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var contentView: UIView!
    
    @IBOutlet var views: [UIView]!
    
    @IBAction func selectedSegmentChanged() {
        let selectedIndex = segmentedControl.selectedSegmentIndex
        let selectedView = views[selectedIndex]
        selectedView.frame = view.bounds
        
        UIView.transition(
            from: contentView,
            to: selectedView,
            duration: 0.25,
            options: .transitionCrossDissolve
        ) { (finished) in
            if finished {
                self.contentView = selectedView
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        selectedSegmentChanged()
    }

}
