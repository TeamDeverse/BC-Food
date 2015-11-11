//
//  FUDdiningHallHome.swift
//  BC-Food
//
//  Created by William Babis on 11/1/15.
//  Copyright © 2015 Deverse. All rights reserved.
//

import UIKit

class FUDdiningHallHome: UIViewController {
    
    
    @IBOutlet weak var SegmentView: UISegmentedControl!
    
    @IBOutlet weak var Label: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    
    var textArray: NSMutableArray! = NSMutableArray()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.textArray.addObject("Burritos")
        
        self.textArray.addObject("Hamburgers")
        
        self.textArray.addObject("Quesadillas")
        
        self.textArray.addObject("Salads")
        

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
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
