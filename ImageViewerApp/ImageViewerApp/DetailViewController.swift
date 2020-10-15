//
//  DetailViewController.swift
//  ImageViewerApp
//
//  Created by Michal Pietrzak on 13/10/2020.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    
    var totalPictures = 0
    var selectedPicture = 0
    
    var selectedImage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "\(selectedPicture) / \(totalPictures)"

        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
        }
        navigationItem.largeTitleDisplayMode = .never
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }

}
