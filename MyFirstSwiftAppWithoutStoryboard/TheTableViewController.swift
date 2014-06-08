//
//  TheTableViewController.swift
//  MyFirstSwiftAppWithoutStoryboard
//
//  Created by haochen on 14-6-8.
//  Copyright (c) 2014年 lk. All rights reserved.
//

import UIKit

class TheTableViewController:UITableViewController
{
    let Items = ["cell 1","cell 2","cell 3"]
    
    override func viewDidLoad()
    {
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView!) -> Int
    {
        return 1
    }
    
    override func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int
    {
        return Items.count
    }
    
    override func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!
    {
        
        let cellIdent = "Cell"
        
        var cell : UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: cellIdent)
        
        cell.textLabel.text = Items[indexPath.row]
        
        return cell
    }
    
    override func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!)
    {
        var vc = TheViewController()
        vc.title = Items[indexPath.row]
        vc.TheTitle = Items[indexPath.row]
        
        self.navigationController.pushViewController(vc, animated: true)
    }
}
