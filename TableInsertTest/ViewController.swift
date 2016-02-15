//
//  ViewController.swift
//  TableInsertTest
//
//  Created by Niklas Saers on 15/02/16.
//  Copyright © 2016 Snapsale AS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var numSections = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        tableView.beginUpdates()
        numSections += 1
        tableView.insertSections(NSIndexSet(index:0), withRowAnimation: .Automatic)
        numSections += 1
        tableView.insertSections(NSIndexSet(index:0), withRowAnimation: .Automatic)
        numSections += 1
        tableView.insertSections(NSIndexSet(index:0), withRowAnimation: .Automatic)
        numSections += 1
        tableView.insertSections(NSIndexSet(index:0), withRowAnimation: .Automatic)
        numSections += 1
        tableView.insertSections(NSIndexSet(index:0), withRowAnimation: .Automatic)
        tableView.endUpdates()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController : UITableViewDelegate {
    
    
}

extension ViewController : UITableViewDataSource {
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: "Cell")
        cell.textLabel?.text = "Cell (\(indexPath.section),\(indexPath.row))"
        return cell
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return numSections
    }
    
}