//
//  ViewController.swift
//  whatDoTo
//
//  Created by gal karady on 07/02/2022.
//

import UIKit
import SwiftUI
import DCToast

class ViewController: UIViewController {

    var randomNum : Int = 0
    
    
    @IBOutlet weak var imgGreen: UIImageView!
    @IBOutlet weak var imgRed: UIImageView!
    @IBOutlet weak var imgBlue: UIImageView!
    @IBOutlet weak var imgYellow: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    @IBAction func btnStart(_ sender: Any) {
        
        randomNum = Int(arc4random_uniform(5))
        
        print(randomNum)
        
        if imgRed.isHidden == true && imgBlue.isHidden == true
            && imgGreen.isHidden == true {
            
            ToastPresenter.shared.show(in: self.view, message: "Yellow WIn", timeOut: 3)
        } else if imgYellow.isHidden == true && imgBlue.isHidden == true
                    && imgGreen.isHidden == true {
                    
                    ToastPresenter.shared.show(in: self.view, message: "Red WIn", timeOut: 3)
                } else if imgRed.isHidden == true && imgYellow.isHidden == true
                            && imgGreen.isHidden == true {
                            
                            ToastPresenter.shared.show(in: self.view, message: "Blue WIn", timeOut: 3)
                        } else if imgRed.isHidden == true && imgBlue.isHidden == true
                                    && imgYellow.isHidden == true {
                                    
                                    ToastPresenter.shared.show(in: self.view, message: "Green WIn", timeOut: 3)
                        } else {
                            switch randomNum {
            
            case 1: imgGreen.isHidden = true
            case 2: imgRed.isHidden = true
            case 3: imgYellow.isHidden = true
            case 4: imgBlue.isHidden = true
                
                
            default:
                print(randomNum)
            }
        }
    }
    
    @IBAction func btnAdd(_ sender: Any) {
        
        if imgGreen.isHidden == true {
            imgGreen.isHidden = false
        } else if imgRed.isHidden == true {
            imgRed.isHidden = false
        } else if imgYellow.isHidden == true {
            imgYellow.isHidden = false
        } else if imgBlue.isHidden == true {
            imgBlue.isHidden = false
        } else {
            ToastPresenter.shared.show(in: self.view, message: "no room for one more",timeOut: 3)
        }
        
        
    }
    @IBAction func btnRemov(_ sender: Any) {
    
        if imgBlue.isHidden == false {
            imgBlue.isHidden = true
        } else if imgYellow.isHidden == false {
            imgYellow.isHidden = true
        } else {
            imgRed.isHidden = true
        }
    }
    
}

