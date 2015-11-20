//
//  FUDhomePage.swift
//  BC-Food
//
//  Created by William Babis on 11/1/15.
//  Copyright © 2015 Deverse. All rights reserved.
//

import UIKit

class FUDhomePage: UIViewController {
    
    var url = NSURL(string:"")
    
    var foodSections:[String]=[] //textArray = ["item"]
    
    var foodItems :[String]=[] //: [String]=[]//foodItems = ["Food Type 1", "Food Type 2", "Food Type 3", "Food Type 4"]

    override func viewDidLoad(){
        super.viewDidLoad()
        print("here")
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var DiningName = "test"
    
    @IBOutlet weak var MacButton: UIButton!
    @IBAction func MacSegue(sender: AnyObject) {
        self.DiningName = "Mac"
        performSegueWithIdentifier("general", sender: nil)
        print("Mac general segue works!!")
        parseHTML()
        
    }
    
    @IBOutlet weak var EagleButton: UIButton!
    @IBAction func EagleSegue(sender: AnyObject) {
        self.DiningName = "Eagle's Nest"
        performSegueWithIdentifier("general", sender: nil)
        print("Eagle's general segue works!!")
        parseHTML()
    
    }

    
    @IBOutlet weak var RatButton: UIButton!
    @IBAction func RatSegue(sender: AnyObject) {
        self.DiningName = "The Rat"
        performSegueWithIdentifier("general", sender: nil)
        print("Rat's general segue works!!")
        parseHTML()
    }
   
    
    @IBOutlet weak var HillsideButton: UIButton!
    @IBAction func HillsideSegue(sender: AnyObject) {
        self.DiningName = "Hillside"
        performSegueWithIdentifier("general", sender: nil)
        print("Hillside's general segue works!!")
        parseHTML()
    }
                    
    @IBOutlet weak var LowerButton: UIButton!
    @IBAction func LowerSegue(sender: AnyObject) {
        self.DiningName = "Lower"
        performSegueWithIdentifier("general", sender: nil)
        print("Lower's general segue works!!")
        parseHTML()
    }
    
    
    @IBOutlet weak var AddieButton: UIButton!
    @IBAction func AddieSegue(sender: AnyObject) {
        self.DiningName = "Addie's"
        performSegueWithIdentifier("general", sender: nil)
        print("Addie's general segue works!!")
        parseHTML()
    }
    
    @IBOutlet weak var StuartButton: UIButton!
    @IBAction func StuartSegue(sender: AnyObject) {
        self.DiningName = "Stuart"
        performSegueWithIdentifier("general", sender: nil)
        print("Stuart's general segue works!!")
        parseHTML()
    }
    
    
    @IBOutlet weak var BrightonButton: UIButton!
    @IBAction func BrightonSegue(sender: AnyObject) {
        self.DiningName = "Brighton"
        performSegueWithIdentifier("general", sender: nil)
        print("Brighton's general segue works!!")
        parseHTML()
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "general" {
            print("general")
            if let nextVC: FUDdiningHallHome = segue.destinationViewController as? FUDdiningHallHome{
                print("accessing third screen from second")
                nextVC.DiningPlace = DiningName
                nextVC.TitleOfMenu = DiningName
                nextVC.foodList = foodItems 
                
            }
            
        }
    
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    
    func parseHTML(){
        
        
        if self.DiningName == "Mac" {
            url = NSURL(string: "http://foodpro.bc.edu/foodpro/shortmenu.asp?sName=BC+DINING&locationNum=23&locationName=Carney%27s&naFlag=1")
        }
        
        if self.DiningName == "Eagle's Nest" {
            url = NSURL(string: "http://foodpro.bc.edu/foodpro/shortmenu.asp?sName=BC+DINING&locationNum=23%28a%29&locationName=Eagle%27s+Nest&naFlag=1")
        }
        
        if self.DiningName == "The Rat" {
            url = NSURL(string: "http://foodpro.bc.edu/foodpro/shortmenu.asp?sName=BC+DINING&locationNum=25&locationName=Lyons+Hall&naFlag=1")
        }
        
        if self.DiningName == "Hillside" {
            url = NSURL(string: "http://foodpro.bc.edu/foodpro/shortmenu.asp?sName=BC+DINING&locationNum=02&locationName=Hillside+Cafe&naFlag=1")
        }
        
        if self.DiningName == "Lower" {
            url = NSURL(string: "http://foodpro.bc.edu/foodpro/shortmenu.asp?sName=BC+DINING&locationNum=21&locationName=Lower+Live&naFlag=1")
        }
        
        if self.DiningName == "Stuart" {
            url = NSURL(string: "http://foodpro.bc.edu/foodpro/shortmenu.asp?sName=BC+DINING&locationNum=28&locationName=Stuart+Hall&naFlag=1")
        }
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) {(data, response, error) in
            // this is asyncronous, page may load first
            var html: NSString
            html = NSString(data: data!, encoding: NSUTF8StringEncoding)!
            
            self.parser(html)
            
        }
        
        task.resume()
    }
    
    
    
    
    func parser(text: NSString){
        
        let html_string = String(text)
        
        var master = html_string.componentsSeparatedByString("shortmenumeals\">")
        master.removeAtIndex(0)
        
        var temporary: [String]=[]
        for sep in master{
            let temp = sep.componentsSeparatedByString("shortmenumeals\">")
            temporary.append(temp[0])
        }
        
        
        //---------------------------PULLING MENU TITLES--------------------------
        var menuTitles: [String]=[]
        for sep in temporary{
            let temp = sep.componentsSeparatedByString("</div>")
            menuTitles.append(temp[0])
        }
        
        for title in menuTitles{
            print(title)
        }
        print("---------end of menus---------")
        
        //--------------------------PULLING SECTIONS-------------------------------
        
        for sections in temporary{
            
            var splitSections = sections.componentsSeparatedByString(">--")
            splitSections.removeAtIndex(0)
            splitSections.insert("new", atIndex: 0)
            for sec in splitSections{
                let temp = sec.componentsSeparatedByString("--<")
                self.foodSections.append(temp[0])
            }
            self.foodSections.removeAtIndex(0)
        }
        
        for sec in self.foodSections{
            print(sec)
        }
        print("---------end of sections---------")
        
        //-----------------------PULLING FOOD ITEMS------------------------------------
        
        for sections in temporary{
            
            var splitFoods = sections.componentsSeparatedByString("#000000'>")
            splitFoods.removeAtIndex(0)
            splitFoods.insert("new", atIndex: 0)
            for food in splitFoods{
                let temp = food.componentsSeparatedByString("&nbsp")
                self.foodItems.append(temp[0])
            }
            foodItems.removeAtIndex(0)
        }
        
        for food in foodItems{
            print(food)
        }
        print(foodItems.count)
        print("---------end of food items---------")
        
    }

}
