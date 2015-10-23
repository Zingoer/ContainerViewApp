//
//  ViewController.swift
//  ContainerViewResearchApp
//
//  Created by Xiaoxi Pang on 10/23/15.
//

import UIKit

class FirstViewController: UIViewController, FooterViewDelegate {
    

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Set corresponding parameters only for the specific segue
        if (segue.identifier == "firstEmbeddedSegue"){
            if let viewController: ContainerViewController = segue.destinationViewController as? ContainerViewController{
                viewController.delegate = self
                viewController.nextButtonTitle = "Go To Second"
                viewController.backButtonTitle = ""
                viewController.nextButtonTitleColor = UIColor(red: 1, green: 106/255, blue: 92/255, alpha: 1)
            }
        }
    }
    
    // MARK: - FooterView delegate methods
    func clickBackButton(viewController: ContainerViewController) {
        print("Press the Back Button")
    }
    
    func clickNextButton(viewController: ContainerViewController) {
        performSegueWithIdentifier("firstToSecond", sender: self)
    }

}


