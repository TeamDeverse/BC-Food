//
//  FUDhomePage.swift
//  BC-Food
//
//  Created by William Babis on 11/1/15.
//  Copyright © 2015 Deverse. All rights reserved.
//

import UIKit

class FUDhomePage: UIViewController {

    override func viewDidLoad(){
        super.viewDidLoad()
        print("here")

        // Do any additional setup after loading the view.
    }  

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func MacSegue(sender: AnyObject) {
        performSegueWithIdentifier("general", sender: nil)
        print("Mac general segue works!!")
        
    }
    
    @IBAction func EagleSegue(sender: AnyObject) {
        performSegueWithIdentifier("general", sender: nil)
        print("Eagle's general segue works!!")
    
    }

    
    @IBAction func RatSegue(sender: AnyObject) {
        performSegueWithIdentifier("general", sender: nil)
        print("Rat's general segue works!!")
    }
   
    
    @IBAction func HillsideSegue(sender: AnyObject) {
        performSegueWithIdentifier("general", sender: nil)
        print("Hillside's general segue works!!")
    }
                    
    @IBAction func LowerSegue(sender: AnyObject) {
        performSegueWithIdentifier("general", sender: nil)
        print("Lower's general segue works!!")
    }
    
    
    @IBAction func AddieSegue(sender: AnyObject) {
        performSegueWithIdentifier("general", sender: nil)
        print("Addie's general segue works!!")
    }
    
    @IBAction func StuartSegue(sender: AnyObject) {
        performSegueWithIdentifier("general", sender: nil)
        print("Stuart's general segue works!!")
    }
    
    
    @IBAction func BrightonSegue(sender: AnyObject) {
        performSegueWithIdentifier("general", sender: nil)
        print("Brighton's general segue works!!")
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
