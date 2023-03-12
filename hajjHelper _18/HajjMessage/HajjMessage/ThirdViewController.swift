//
//  ThirdViewController.swift
//  HajjMessage
//
//  Created by Fatima Khalid on 8/4/18.
//  Copyright © 2018 SlyInc. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    

   //steps button opens url
    @IBAction func onStepsButtonWasPressed(_ sender: Any)
    {
        
        UIApplication.shared.open(URL (string: "https://www.aljazeera.com/focus/hajj/2009/11/2009111895127111168.html" )! as URL , options: [:], completionHandler: nil)
        
        
    }
    //makes dummy call
    @IBAction func makecall(_ sender: Any) {
        if let url = NSURL(string: "telprompt://5551212"){
            if #available(iOS 10.0, *){
                UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
            }else{
                UIApplication.shared.open(url as URL)
            }
            
            
            
        }
        
        
    }
    
    
    
    
    
    
    //tips button opens url
    @IBAction func onTipsButtonWasPressed(_ sender: Any) {
        
        UIApplication.shared.open(URL (string: "https://productivemuslim.com/tips-for-a-productive-hajj/")! as URL, options: [:], completionHandler: nil)
    }
    
    
}
