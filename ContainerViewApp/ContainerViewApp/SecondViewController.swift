//
//  SecondViewController.swift
//  ContainerViewResearchApp
//
//  Created by Xiaoxi Pang on 10/23/15.
//

import Foundation
import UIKit

class SecondViewController: UIViewController, FooterViewDelegate {

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "secondembeddedSegue"){
            if let viewController: ContainerViewController = segue.destinationViewController as? ContainerViewController{
                viewController.delegate = self
                viewController.nextButtonTitle = ""
                viewController.backButtonTitle = "Back To First"
                viewController.backButtonTitleColor = UIColor(red: 74/255, green: 171/255, blue: 247/255, alpha: 1)
            }
        }
    }
    
    // MARK: - FooterView delegate methods
    func clickBackButton(viewController: ContainerViewController) {
        navigationController?.popViewControllerAnimated(true)
    }
    
    func clickNextButton(viewController: ContainerViewController) {
        print("Press the Next Button")
    }
    
}