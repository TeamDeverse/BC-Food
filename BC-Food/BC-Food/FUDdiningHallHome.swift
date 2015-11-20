//
//  FUDdiningHallHome.swift
//  BC-Food
//
//  Created by William Babis on 11/1/15.
//  Copyright © 2015 Deverse. All rights reserved.
//

import UIKit

class FUDdiningHallHome: UIViewController, UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate {
    
    var TitleOfMenu = "I'm ready to eat!!"
    
    var DiningPlace = "Which menu am I looking at?"
    
    var breakfastFoods: [String]=[]
    var lunchFoods: [String]=[]
    var dinnerFoods: [String]=[]
    var latenightFoods: [String]=[]
    
    
    var foodList: [String]=[]
    
    var array: [String] = ["hello", "goodbye"]
    
    
    
    // Dom's code
    var dictionary: [String:String] = [:] // declare empty dictionary for content
  
    
    @IBOutlet weak var DiningTable: UITableView!
 
    
    @IBOutlet weak var SegmentView: UISegmentedControl!
    
    @IBOutlet weak var Label: UILabel!

    

    override func viewDidLoad() {
        print("viewDidLoad")
        super.viewDidLoad()
        // dom's code
        // run our parser
       
        

        
        print("parse done")
        
        self.title = DiningPlace
        self.Label.text = self.TitleOfMenu
        self.Label.backgroundColor = UIColor.init(red: 128, green: 0, blue: 0, alpha:1)
        
        print("I'm eating at \(self.DiningPlace)!")
        
        self.DiningTable.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
       
        DiningTable.delegate = self
        DiningTable.dataSource = self
        
        
    }
    
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("didReceiveMemory works")
        // Dispose of any resources that can be recreated.
    }
    // This code deals with the section number and title
    
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        print("\(foodList.count) sections created")
        //return self.foodItems.count
        return 1
    }
    
//    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        if section < foodItems.count{
//            print("Section title = \(foodItems[section])")
//            return foodItems[section]
//        }
//        
//        return nil
//    }
    
    
    // this function sets the number of rows in each section
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //print("\(textArray[section]) section created")
        //return self.textArray[section].count
        print(foodList.count)
        return foodList.count
    }
    
    
    //this function configures settings for each cell
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        
      
        cell.backgroundColor = UIColor.init(red: 128, green: 0, blue: 0, alpha: 1)
        cell.textLabel!.text = self.foodList[indexPath.row]
        return cell
    }

    
    
    
    // this is the function for switching between segmented views (breakfast, lunch, dinner, late night). It refills the displayed table data based by drawing from different elements of the food arrays.
    
    @IBAction func SwitchMealTime(sender: AnyObject) {
        
        if SegmentView.selectedSegmentIndex == 0 {
           self.foodList = self.breakfastFoods
            self.DiningTable.reloadData()
 
        }
       
        if SegmentView.selectedSegmentIndex == 1 {
            self.foodList = self.lunchFoods
            self.DiningTable.reloadData()
        }
        
        if SegmentView.selectedSegmentIndex == 2 {
            self.foodList = self.dinnerFoods
            self.DiningTable.reloadData()
        }
        
        if SegmentView.selectedSegmentIndex == 3 {
            self.foodList = self.latenightFoods
            self.DiningTable.reloadData()
        }
        
        
        
    }
    
    
    //-------------------------------------------------------------------------------------------------------------------------------
    
    
    
    // Dom's code again
    

}
