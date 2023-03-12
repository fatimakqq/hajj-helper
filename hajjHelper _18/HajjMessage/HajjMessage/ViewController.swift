//
//  ViewController.swift
//  HajjMessage
//
//  Created by Fatima Khalid on 8/4/18.
//  Copyright © 2018 SlyInc. All rights reserved.
//

import UIKit
import MessageUI



class ViewController: UIViewController, MFMessageComposeViewControllerDelegate {

    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult)
    {
        self.dismiss(animated: true, completion: nil)
    }

    
    @IBAction func SendMessageButton(_ sender: Any)
    {
        if MFMessageComposeViewController.canSendText(){
            let controller = MFMessageComposeViewController()
            controller.body = "My coordinates are 32.819595, -96.945419"
            controller.recipients = ["6822482599"]
            controller.messageComposeDelegate = self
            self.present(controller, animated: true, completion: nil)
        }
        else
        {
            print("Could not send text")
    }
}

}
