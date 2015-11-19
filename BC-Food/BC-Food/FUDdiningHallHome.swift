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
    
    var textArray = ["item"]
    
    var FoodTypes = ["Food Type 1", "Food Type 2", "Food Type 3", "Food Type 4"]
    
    // Dom's code
    var dictionary: [String:String] = [:] // declare empty dictionary for content
    var array: [String] = []
    
    @IBOutlet weak var DiningTable: UITableView!
 
    
    @IBOutlet weak var SegmentView: UISegmentedControl!
    
    @IBOutlet weak var Label: UILabel!

    

    override func viewDidLoad() {
        print("viewDidLoad")
        super.viewDidLoad()
        
        // dom's code
        // run our parser
        parseHTML()
        
        print("parse done")
        
        
        self.Label.text = self.TitleOfMenu
        
        print("I'm eating at \(self.DiningPlace)!")
        
        self.DiningTable.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
       
        DiningTable.delegate = self
        DiningTable.dataSource = self
        
        
        print("textArray", textArray.count)
        print("SectionNumber", FoodTypes.count)
        
        
        
        // this is where I set the incoming dining hall name to the actual dining hall array that contains the food items for each dining hall
        
        if self.DiningPlace == "Mac" {
//            var textArray = MacFoods[0][0]
            print("MacFoods")
        }
        
        
    }
    
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("didReceiveMemory works")
        // Dispose of any resources that can be recreated.
    }
    // This code deals with the section number and title
    
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        print("\(FoodTypes.count) sections created")
        //return self.FoodTypes.count
        return 5
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
        //print("\(textArray[section]) section created")
        //return self.textArray[section].count
        return 5
    }
    
    
    //this function configures settings for each cell
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        
        cell.backgroundColor = UIColor.blueColor()
        // cell.textLabel!.text = self.textArray[indexPath.section][indexPath.row]
        return cell
    }
    
    
    
    
    // this is the function for switching between segmented views (breakfast, lunch, dinner, late night). It refills the displayed table data based by drawing from different elements of the food arrays.
    
    @IBAction func SwitchMealTime(sender: AnyObject) {
        
        if SegmentView.selectedSegmentIndex == 0 {
           Label.text = "Breakfast" }
       
        if SegmentView.selectedSegmentIndex == 1 {
            Label.text = "Lunch" }
        
        if SegmentView.selectedSegmentIndex == 2 {
            Label.text = "Dinner" }
        
        if SegmentView.selectedSegmentIndex == 3 {
            Label.text = "Late Night" }
        
    }
    
    
    //
    
    
    
    
    // here are the dum_ can use to test your_   var PlaceImEating = ["food"]
    
//    var MacFoods = [[["MBa 1", "MBa 2", "MBa 3", "MBa 4"], ["MBb 1", "MBb 2", "MBb 3", "MBb 4"], ["MBc 1", "MBc 2", "MBc 3"], ["MBd 1", "MBd 2"]],[["MLa 1", "MLa 2", "MLa 3", "MLa 4"], ["MLb 1", "MLb 2", "MLb 3", "MLb 4"], ["MLc 1", "MLc 2", "MLc 3"], ["MLd 1", "MLd 2"]],[["MDa 1", "MDa 2", "MDa 3", "MDa 4"], ["MDb 1", "MDb 2", "MDb 3", "MDb 4"], ["MDc 1", "MDc 2", "MDc 3"], ["MDd 1", "MDd 2"]],[["MLNa 1", "MLNa 2", "MLNa 3", "MLNa 4"], ["MLNb 1", "MLNb 2", "MLNb 3", "MLNb 4"], ["MLNc 1", "MLNc 2", "MLNc 3"], ["MLNd 1", "MLNd 2"]]]
//
//    var EagleFoods = [[["EBa 1", "EBa 2", "EBa 3", "EBa 4"], ["EBb 1", "EBb 2", "EBb 3", "EBb 4"], ["EBc 1", "EBc 2", "EBc 3"], ["EBd 1", "EBd 2"]],[["ELa 1", "ELa 2", "ELa 3", "ELa 4"], ["ELb 1", "ELb 2", "ELb 3", "ELb 4"], ["ELc 1", "ELc 2", "ELc 3"], ["ELd 1", "ELd 2"]],[["EDa 1", "EDa 2", "EDa 3", "EDa 4"], ["EDb 1", "EDb 2", "EDb 3", "EDb 4"], ["EDc 1", "EDc 2", "EDc 3"], ["EDd 1", "EDd 2"]],[["ELNa 1", "ELNa 2", "ELNa 3", "ELNa 4"], ["ELNb 1", "ELNb 2", "ELNb 3", "ELNb 4"], ["ELNc 1", "ELNc 2", "ELNc 3"], ["ELNd 1", "ELNd 2"]]]
//    
//    var RatFoods = [[["RBa 1", "RBa 2", "RBa 3", "RBa 4"], ["RBb 1", "RBb 2", "RBb 3", "RBb 4"], ["RBc 1", "RBc 2", "RBc 3"], ["RBd 1", "RBd 2"]],[["RLa 1", "RLa 2", "RLa 3", "RLa 4"], ["RLb 1", "RLb 2", "RLb 3", "RLb 4"], ["RLc 1", "RLc 2", "RLc 3"], ["RLd 1", "RLd 2"]],[["RDa 1", "RDa 2", "RDa 3", "RDa 4"], ["RDb 1", "RDb 2", "RDb 3", "RDb 4"], ["RDc 1", "RDc 2", "RDc 3"], ["RDd 1", "RDd 2"]],[["RLNa 1", "RLNa 2", "RLNa 3", "RLNa 4"], ["RLNb 1", "RLNb 2", "RLNb 3", "RLNb 4"], ["RLNc 1", "RLNc 2", "RLNc 3"], ["RLNd 1", "RLNd 2"]]]
//    
//    var HillsideFoods = [[["HBa 1", "HBa 2", "HBa 3", "HBa 4"], ["HBb 1", "HBb 2", "HBb 3", "HBb 4"], ["HBc 1", "HBc 2", "HBc 3"], ["HBd 1", "HBd 2"]],[["HLa 1", "HLa 2", "HLa 3", "HLa 4"], ["HLb 1", "HLb 2", "HLb 3", "HLb 4"], ["HLc 1", "HLc 2", "HLc 3"], ["HLd 1", "HLd 2"]],[["HDa 1", "HDa 2", "HDa 3", "HDa 4"], ["HDb 1", "HDb 2", "HDb 3", "HDb 4"], ["HDc 1", "HDc 2", "HDc 3"], ["HDd 1", "HDd 2"]],[["HLNa 1", "HLNa 2", "HLNa 3", "HLNa 4"], ["HLNb 1", "HLNb 2", "HLNb 3", "HLNb 4"], ["HLNc 1", "HLNc 2", "HLNc 3"], ["HLNd 1", "HLNd 2"]]]
//    
//    var ChocolateFoods = [[["CBa 1", "CBa 2", "CBa 3", "CBa 4"], ["CBb 1", "CBb 2", "CBb 3", "CBb 4"], ["CBc 1", "CBc 2", "CBc 3"], ["CBd 1", "CBd 2"]],[["CLa 1", "CLa 2", "CLa 3", "CLa 4"], ["CLb 1", "CLb 2", "CLb 3", "CLb 4"], ["CLc 1", "CLc 2", "CLc 3"], ["CLd 1", "CLd 2"]],[["CDa 1", "CDa 2", "CDa 3", "CDa 4"], ["CDb 1", "CDb 2", "CDb 3", "CDb 4"], ["CDc 1", "CDc 2", "CDc 3"], ["CDd 1", "CDd 2"]],[["CLNa 1", "CLNa 2", "CLNa 3", "CLNa 4"], ["CLNb 1", "CLNb 2", "CLNb 3", "CLNb 4"], ["CLNc 1", "CLNc 2", "CLNc 3"], ["CLNd 1", "CLNd 2"]]]
//    
//    var AddieFoods = [[["ABa 1", "ABa 2", "ABa 3", "ABa 4"], ["ABb 1", "ABb 2", "ABb 3", "ABb 4"], ["ABA 1", "ABA 2", "ABA 3"], ["ABd 1", "ABd 2"]],[["ALa 1", "ALa 2", "ALa 3", "ALa 4"], ["ALb 1", "ALb 2", "ALb 3", "ALb 4"], ["ALA 1", "ALA 2", "ALA 3"], ["ALd 1", "ALd 2"]],[["ADa 1", "ADa 2", "ADa 3", "ADa 4"], ["ADb 1", "ADb 2", "ADb 3", "ADb 4"], ["ADA 1", "ADA 2", "ADA 3"], ["ADd 1", "ADd 2"]],[["ALNa 1", "ALNa 2", "ALNa 3", "ALNa 4"], ["ALNb 1", "ALNb 2", "ALNb 3", "ALNb 4"], ["ALNA 1", "ALNA 2", "ALNA 3"], ["ALNd 1", "ALNd 2"]]]
//    
//    var StuartFoods = [[["SBa 1", "SBa 2", "SBa 3", "SBa 4"], ["SBb 1", "SBb 2", "SBb 3", "SBb 4"], ["SBS 1", "SBS 2", "SBS 3"], ["SBd 1", "SBd 2"]],[["SLa 1", "SLa 2", "SLa 3", "SLa 4"], ["SLb 1", "SLb 2", "SLb 3", "SLb 4"], ["SLS 1", "SLS 2", "SLS 3"], ["SLd 1", "SLd 2"]],[["SDa 1", "SDa 2", "SDa 3", "SDa 4"], ["SDb 1", "SDb 2", "SDb 3", "SDb 4"], ["SDS 1", "SDS 2", "SDS 3"], ["SDd 1", "SDd 2"]],[["SLNa 1", "SLNa 2", "SLNa 3", "SLNa 4"], ["SLNb 1", "SLNb 2", "SLNb 3", "SLNb 4"], ["SLNS 1", "SLNS 2", "SLNS 3"], ["SLNd 1", "SLNd 2"]]]
//    
//    
//    var BrightonFoods = [[["BBa 1", "BBa 2", "BBa 3", "BBa 4"], ["BBb 1", "BBb 2", "BBb 3", "BBb 4"], ["BBB 1", "BBB 2", "BBB 3"], ["BBd 1", "BBd 2"]],[["BLa 1", "BLa 2", "BLa 3", "BLa 4"], ["BLb 1", "BLb 2", "BLb 3", "BLb 4"], ["BLB 1", "BLB 2", "BLB 3"], ["BLd 1", "BLd 2"]],[["BDa 1", "BDa 2", "BDa 3", "BDa 4"], ["BDb 1", "BDb 2", "BDb 3", "BDb 4"], ["BDB 1", "BDB 2", "BDB 3"], ["BDd 1", "BDd 2"]],[["BLNa 1", "BLNa 2", "BLNa 3", "BLNa 4"], ["BLNb 1", "BLNb 2", "BLNb 3", "BLNb 4"], ["BLNB 1", "BLNB 2", "BLNB 3"], ["BLNd 1", "BLNd 2"]]]
//   
    
    
    
    
    // Dom's code again
    func parseHTML(){
        
        let url = NSURL(string: "http://foodpro.bc.edu/foodpro/shortmenu.asp?sName=BC+DINING&locationNum=23&locationName=Carney%27s&naFlag=1&WeeksMenus=This+Week%27s+Menus&myaction=read&dtdate=11%2F19%2F2015")//http://foodpro.bc.edu/foodpro/shortmenu.asp?sName=BC+DINING&locationNum=23&locationName=Carney%27s&naFlag=1")
        
        // following will initially get error:
        // Security has blocked a cleartext HTTP (http://) resource load since it is insecure. Temporary exceptions can be configured via your app's Info.plist file.
        
        // go to info.plist, add line:
        // NSAppTransportSecurity (dictionary), under which add element
        // NSAllowsArbitraryLoads (BOOL) set to yes
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) {(data, response, error) in
            // this is asyncronous, page may load first
            var html: NSString
            html = NSString(data: data!, encoding: NSUTF8StringEncoding)!
            print(html)
            
            // here, call the parser etc
            self.parser(html)
            
        }
        
        task.resume()
    }
    
    func parser(text: NSString){
        
        let html_string = String(text)
        
        //--------------------------------TRY 2-------------------------------------------------------------
        let splitArray = html_string.componentsSeparatedByString("shortmenumeals\">")
        
        var master: [String]=[]
        
        //---------------------------THIS CODE PULLS MENU TITLES-----------------------------------------------
        
        var mealMenuTitles: [String] = []
        for menu in splitArray{
            let temp = menu.componentsSeparatedByString("</div>")//"shortmenucats") // grabs the end of the UL block
            mealMenuTitles.append(temp[0])
        }
        mealMenuTitles.removeAtIndex(0)
        
        // all the info has been grabbed, convert into a datastracuture that is usable
        
        //        for title in temparry{
        //            print("--------NEW SECTION----------")
        //            print(title)
        //        }
        //
        
        
        
        
        
        //------------------------------------ORIGINAL--------------------------------------------------
        
        //        //------------------------------------BLOCK #1-----------------------------------
        //        // try splitting the string into pieces
        //        let master = html_string.componentsSeparatedByString(">--")
        //
        //        //------------------------------------BLOCK #2-----------------------------------
        //        var temparry: [String]=[]
        //        for sep in splitArray{
        //            let temp = sep.componentsSeparatedByString(">--")//"shortmenucats") // grabs the end of the UL block
        ////            print("check sections")
        ////            print(temp[0])
        //            temparry.append(temp[0])
        //        }
        //        temparry.removeAtIndex(0)
        //
        
        
        //----------------------------------THIS CODE GRABS THE SECTION NAMES----------------------------------------------------------
        
        
        
        // Patrick's pseudo text
        //
        
        /*
        inside the loop > for sections in splitArray{
        create two arrays in parallel, with 1:1 entries:
            create the section names in foodSections (as is being done here)
            create the food_items found within this station/section
            BOTH only for "this time of day" (ie breakfast, lunch, or dinner)
        // after this one loop, the "foodSections" array will be 1D with a list of headings
        // and the "food_items" will be 2D array, e.g.


        */
        
        //
        //        var foodSections: [String]=[]
        //        for sections in splitArray{
        //            let temp = sections.componentsSeparatedByString("--<")
        //            foodSections.append(temp[0])
        //        }
        //
        //        foodSections.removeAtIndex(0)
        //
        
        
        
        // Patrick recommends NOT having the loop array below, but move it inside the loop above
        // and only grab info for the specific time of day per specific station/section
        
        
        //-------------------------------------THIS CODE SEPARATES FOOD ITEMS BY SECTIONS-----------------------------------------------
        
        
        //        //var allDayFoods: [String]=[]
        //        for sections in temparry{
        //
        //            let splitBfast = sections.componentsSeparatedByString("#000000'>")
        //            var allFoods: [String]=[]
        //            for food in splitBfast{
        //                let temp = food.componentsSeparatedByString("&nbsp")
        //                allFoods.append(temp[0])
        //            }
        //            allFoods.removeAtIndex(0)
        //            for food in allFoods{
        //                print(food)
        //            }
        //        }
        
        
        //
        
    }
    

}
