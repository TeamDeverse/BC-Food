//
//  FUDdiningHallHome.swift
//  BC-Food
//
//  Created by William Babis on 11/1/15.
//  Copyright © 2015 Deverse. All rights reserved.
//

import UIKit

class FUDdiningHallHome: UIViewController, UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate {
    
    
    var textArray = [""]
    
    
    
    @IBOutlet weak var DiningTable: UITableView!
 
    
    @IBOutlet weak var SegmentView: UISegmentedControl!
    
    @IBOutlet weak var Label: UILabel!
    

    override func viewDidLoad() {
        print("viewDidLoad")
        super.viewDidLoad()
        
        self.DiningTable.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
       
        DiningTable.delegate = self
        DiningTable.dataSource = self
        
        
        self.textArray.append("burrito")
        
        self.textArray.append("quesadilla")
        
        self.textArray.append("hamburger")
        
        self.textArray.append("taco")
    
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("didReceiveMemory works")
        // Dispose of any resources that can be recreated.
    }
    
    // this function sets the number of rows in each section
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
        
    
    //this function configures settings for each cell
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        
        if indexPath.row==0{
            cell.backgroundColor = UIColor.orangeColor()
            cell.textLabel!.text = textArray[indexPath.row]
        }
        
        
        if indexPath.row==1{
            cell.backgroundColor = UIColor.purpleColor()
            cell.textLabel!.text = textArray[indexPath.row]
        }
        
        
        if indexPath.row==2{
            cell.backgroundColor = UIColor.blueColor()
            cell.textLabel!.text = textArray[indexPath.row]
        }
        
        return cell
    }
    
    
    
    
    // this is the function for switching between segmented views
    
    @IBAction func SwitchMenu(sender: AnyObject) {
        
        if SegmentView.selectedSegmentIndex == 0 {
           Label.text = "Breakfast" }
       
        if SegmentView.selectedSegmentIndex == 1 {
            Label.text = "Lunch" }
        
        if SegmentView.selectedSegmentIndex == 2 {
            Label.text = "Dinner" }
        
        if SegmentView.selectedSegmentIndex == 3 {
            Label.text = "Late Night" }
        
        }
    
    

}
