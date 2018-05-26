//
//  ViewController.swift
//  CheckMySkin
//
//  Created by admin on 25/05/2018.
//  Copyright © 2018 Stephane LEAP. All rights reserved.
//

import UIKit
import CoreML
import Vision

class ViewController: UIViewController {
    
    
    @IBOutlet weak var appNameLabel: UILabel!
    @IBOutlet weak var logoView: UIImageView!
    @IBOutlet var myTapGestureController: UITapGestureRecognizer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let image = UIImage(named: "logocheckmyskin89x89")
        else
        {
            fatalError("no starting image")
        }
        logoView.image = image
        
        appNameLabel.text = "CheckMySkin"
        appNameLabel.textAlignment = NSTextAlignment.center
        appNameLabel.textColor = UIColor.white
        
        
    }

    @IBAction func handleTap(_ sender: Any) {
        performSegue(withIdentifier: "showMyVC", sender: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

