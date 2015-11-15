//
//  FUDdiningHallHome.swift
//  BC-Food
//
//  Created by William Babis on 11/1/15.
//  Copyright © 2015 Deverse. All rights reserved.
//

import UIKit

class FUDdiningHallHome: UIViewController, UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate {
    
    
    var textArray = [["burrito", "quesadilla", "hamburger"], ["taco", "tomato", "lettuce", "carrot"], ["General Zao's food"],["Cheese Pizza"]]
    
    var FoodTypes = ["Hot off the Press", "Deli", "Soups", "Chinese"]
    
    @IBOutlet weak var DiningTable: UITableView!
 
    
    @IBOutlet weak var SegmentView: UISegmentedControl!
    
    @IBOutlet weak var Label: UILabel!
    

    override func viewDidLoad() {
        print("viewDidLoad")
        super.viewDidLoad()
        
        self.DiningTable.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
       
        DiningTable.delegate = self
        DiningTable.dataSource = self
        
        
        print("textArray", textArray.count)
        
        print("SectionNumber", FoodTypes.count)
        
    }
    
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("didReceiveMemory works")
        // Dispose of any resources that can be recreated.
    }
    // This code deals with the section number and title
    
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        print("\(FoodTypes.count) sections created")
        return self.FoodTypes.count
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section < FoodTypes.count{
            print("Section title = \(FoodTypes[section])")
            return FoodTypes[section]
        }
        
        return nil
    }
    
    
    // this function sets the number of rows in each section
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("\(textArray[section]) section created")
        return self.textArray[section].count
    }
    
    
    //this function configures settings for each cell
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        
        cell.backgroundColor = UIColor.blueColor()
        cell.textLabel!.text = self.textArray[indexPath.section][indexPath.row]
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
