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
    var selectedImageNumber = 0
    var totalImages = 0

    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.largeTitleDisplayMode = .never
        title = "Picture \(selectedImageNumber) of \(totalImages)"
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTapped))

        if let imageToLoad = selectedImage { // check and unwrap the optional in selectedImage
            imageView.image  = UIImage(named: imageToLoad) // if selectedImage has a value, pass it to UIImage to load it in imageView
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
    
    @objc func shareTapped() {
        guard let image = imageView.image?.jpegData(compressionQuality: 0.8) else {
            print("No image found")
            return
        }

        let vc = UIActivityViewController(activityItems: [image], applicationActivities: [])
        vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        present(vc, animated: true)
    }

}
