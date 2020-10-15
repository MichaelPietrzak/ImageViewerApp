//
//  ViewController.swift
//  ImageViewerApp
//
//  Created by Michal Pietrzak on 13/10/2020.
//

import UIKit

class ViewController: UITableViewController {
    var pictures = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Image Viewer"
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)

        for item in items {
            if item.hasPrefix("nssl") {
                pictures.append(item)
            }
        }
        print(pictures)
        
        // Register xib with the name of xib file 
        tableView.register(UINib(nibName: "PictureTableViewCell", bundle: nil), forCellReuseIdentifier: "PictureTableViewCell")
        
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Reuse or create a cell of the appropriate type.
        let cell = tableView.dequeueReusableCell(withIdentifier: "PictureTableViewCell", for: indexPath) as! PictureTableViewCell
        
        // Fetch the data for the row.
        let thePicture = pictures[indexPath.row]
        
        // Configure the cell’s contents with data from the fetched object.
        cell.pictureName?.text = thePicture
    
        return cell
    }
    
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        if let viewController = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController {
//            viewController.selectedImage = pictures[indexPath.row]
//            navigationController?.pushViewController(viewController, animated: true)
//        }
//    }
}

