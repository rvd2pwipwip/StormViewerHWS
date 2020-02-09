//
//  DetailViewController.swift
//  StormViewerHWS
//
//  Created by Herve Desrosiers on 2020-02-09.
//  Copyright © 2020 Herve Desrosiers. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var selectedImage: String? // doesn't exist yet at DetailViewController's creation

    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let imageToLoad = selectedImage { // check and unwrap the optional in selectedImage
            imageView.image  = UIImage(named: imageToLoad) // if selectedImage has a value, pass it to UIImage to load it in imageView
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
