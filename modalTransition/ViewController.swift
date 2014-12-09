//
//  ViewController.swift
//  modalTransition
//
//  Created by diane cronenwett on 12/5/14.
//  Copyright (c) 2014 diane cronenwett. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   var backgroundImages = [
        UIImage(named: "image_1.png"),
        UIImage(named: "image_2.png"),
        UIImage(named: "image_3.png"),
    ]

   
    @IBOutlet weak var imageView: UIImageView!
    
    var counter = 0;

    override func viewDidLoad() {
        super.viewDidLoad()
        //   textView.delegate = self
        updateImage()
    }
    
    @IBAction func onNext(sender: AnyObject) {
        
        counter++
        if (counter >= backgroundImages.count) {
            counter = 0
        }
        updateImage()
        
    }

    // on tap of back, go back one, if it gets to the beginning, hide
    
    @IBAction func onBack(sender: AnyObject) {
        counter--
        if (counter < 0) {
            counter = backgroundImages.count - 1
        }
        updateImage()
    

    }
    
    func updateImage() {
        imageView.image = backgroundImages[counter]
        println(counter)
    }
    
    
    
//    override func viewDidAppear(animated: Bool) {
//        UIView.animateWithDuration(1, animations: {
//            
//            self.alien.frame = CGRectMake(100, 20, 100, 200)
//            
//        })
//        
//    }

    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }


}

