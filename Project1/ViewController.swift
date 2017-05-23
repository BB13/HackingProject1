//
//  ViewController.swift
//  Project1
//
//  Created by Billy Benson on 5/23/17.
//  Copyright © 2017 Billy Benson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var pictures = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        let fm = FileManager.default   //explained at 5 mins 11.65
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            
            if item.hasPrefix("nssl") {
                
                pictures.append(item)
            }
        }
        
        print(pictures)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

