//
//  FUDdiningHallHome.swift
//  BC-Food
//
//  Created by William Babis on 11/1/15.
//  Copyright © 2015 Deverse. All rights reserved.
//

import UIKit

class FUDdiningHallHome: UIViewController, UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate {
    
    
    var textArray = ["list"]
    
    @IBOutlet weak var tableView: UITableViewCell!
    
    @IBOutlet weak var SegmentView: UISegmentedControl!
    
    @IBOutlet weak var Label: UILabel!
    

    override func viewDidLoad() {
        print("viewDidLoad")
        super.viewDidLoad()
        
        
        
        
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
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        print("created number of sections")
        return 6
        
    
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("created number of rows")
        return textArray.count
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        print("configured individual cells")
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
