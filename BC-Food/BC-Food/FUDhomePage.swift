//
//  FUDhomePage.swift
//  BC-Food
//
//  Created by William Babis on 11/1/15.
//  Copyright © 2015 Deverse. All rights reserved.
//

import UIKit

class FUDhomePage: UIViewController {
    
    var API_base = "https://raw.githubusercontent.com/TeamDeverse/BC-Food/master/API/"

    override func viewDidLoad(){
        super.viewDidLoad()

        // run the UI call. Later, should turn into an asynchronous call
        // or otherwise have a local hard-coded list of the dining halls at minimum
        getDiningHalls()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func getDiningHalls(){
        let json_data = NSData(contentsOfURL: NSURL(string: API_base+"bcdining%3Fdining_halls")!)!
        let json_dict = getJSON_dict(json_data)
        if json_dict != [:]{
            //print(json_dict)
            // print the keys of the dictionary, ie the actual dining halls
            // each dining hall technically has further information attached
            // currently whether it is open, and the website url
            print("List of dining halls")
            print(json_dict.allKeys)
            
        }
        else{
            print("There was an error, can't load")
            let alertView = UIAlertView(title: "Error", message: "Could not load dining halls", delegate: self, cancelButtonTitle: "Okay") //, otherButtonTitles: "No"
            alertView.tag = 1
            alertView.show()
            
        }
    }
    
    func getJSON_dict(json_data: NSData) -> NSDictionary {
        do {
            if let jsonResult = try NSJSONSerialization.JSONObjectWithData(json_data, options: []) as? NSDictionary {
                return jsonResult
                //let k = jsonResult.allKeys
                //print(k)
            }
        } catch {
            print(error)
        }
        return [:]
    }
    
    
    var DiningName = "test"
    
    @IBOutlet weak var MacButton: UIButton!
    @IBAction func MacSegue(sender: AnyObject) {
        self.DiningName = "Mac"
        performSegueWithIdentifier("general", sender: nil)
        print("Mac general segue works!!")
        
    }
    
    @IBOutlet weak var EagleButton: UIButton!
    @IBAction func EagleSegue(sender: AnyObject) {
        self.DiningName = "Eagle's Nest"
        performSegueWithIdentifier("general", sender: nil)
        print("Eagle's general segue works!!")
    
    }

    
    @IBOutlet weak var RatButton: UIButton!
    @IBAction func RatSegue(sender: AnyObject) {
        self.DiningName = "The Rat"
        performSegueWithIdentifier("general", sender: nil)
        print("Rat's general segue works!!")
    }
   
    
    @IBOutlet weak var HillsideButton: UIButton!
    @IBAction func HillsideSegue(sender: AnyObject) {
        self.DiningName = "Hillside"
        performSegueWithIdentifier("general", sender: nil)
        print("Hillside's general segue works!!")
    }
                    
    @IBOutlet weak var LowerButton: UIButton!
    @IBAction func LowerSegue(sender: AnyObject) {
        self.DiningName = "Lower"
        performSegueWithIdentifier("general", sender: nil)
        print("Lower's general segue works!!")
    }
    
    
    @IBOutlet weak var AddieButton: UIButton!
    @IBAction func AddieSegue(sender: AnyObject) {
        self.DiningName = "Addie's"
        performSegueWithIdentifier("general", sender: nil)
        print("Addie's general segue works!!")
    }
    
    @IBOutlet weak var StuartButton: UIButton!
    @IBAction func StuartSegue(sender: AnyObject) {
        self.DiningName = "Stuart"
        performSegueWithIdentifier("general", sender: nil)
        print("Stuart's general segue works!!")
    }
    
    
    @IBOutlet weak var BrightonButton: UIButton!
    @IBAction func BrightonSegue(sender: AnyObject) {
        self.DiningName = "Brighton"
        performSegueWithIdentifier("general", sender: nil)
        print("Brighton's general segue works!!")
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "general" {
            print("general")
            if let nextVC: FUDdiningHallHome = segue.destinationViewController as? FUDdiningHallHome{
                print("accessing third screen from second")
                nextVC.DiningPlace = DiningName
                nextVC.TitleOfMenu = DiningName 
                
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

}
