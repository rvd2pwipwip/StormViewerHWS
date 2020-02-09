//
//  ViewController.swift
//  StormViewerHWS
//
//  Created by Herve Desrosiers on 2020-02-08.
//  Copyright © 2020 Herve Desrosiers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var pictures = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
//            if item.hasPrefix("nssl") {
//                print(item)
//            }
            if item.hasSuffix("jpg") {
                pictures.append(item)
            }
        }
        print(pictures)
    }


}

