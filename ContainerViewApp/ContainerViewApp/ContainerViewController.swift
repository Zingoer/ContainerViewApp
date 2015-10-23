//
//  ContainerView.swift
//  ContainerViewResearchApp
//
//  Created by Xiaoxi Pang on 10/23/15.
//

import Foundation
import UIKit


protocol FooterViewDelegate: class{
    func clickBackButton(viewController: ContainerViewController)
    func clickNextButton(viewController: ContainerViewController)
}

class ContainerViewController: UIViewController {
    
    weak var delegate: FooterViewDelegate?
    var nextButtonTitle: String = "Next"
    var backButtonTitle: String = "Back"
    var nextButtonTitleColor: UIColor = UIColor.blackColor()
    var backButtonTitleColor: UIColor = UIColor.blackColor()
    
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        // Set Button label text and color
        backButton.setTitle(backButtonTitle, forState: .Normal)
        backButton.setTitleColor(backButtonTitleColor, forState: .Normal)
        
        nextButton.setTitle(nextButtonTitle, forState: .Normal)
        nextButton.setTitleColor(nextButtonTitleColor, forState: .Normal)
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    
    @IBAction func backButtonClicked(sender: AnyObject) {
            self.delegate?.clickBackButton(self)
    }



    @IBAction func nextButtonClicked(sender: AnyObject) {
            self.delegate?.clickNextButton(self)
    }

}