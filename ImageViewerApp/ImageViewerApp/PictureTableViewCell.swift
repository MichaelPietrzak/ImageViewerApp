//
//  PictureTableViewCell.swift
//  ImageViewerApp
//
//  Created by Michal Pietrzak on 15/10/2020.
//

import UIKit

class PictureTableViewCell: UITableViewCell {
    @IBOutlet var pictureLabel: UILabel!
    @IBOutlet var view: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let lightGrayColor = UIColor(red: 0.89, green: 0.89, blue: 0.89, alpha: 1.00)
        
        pictureLabel.font = UIFont(name: "Avenir Next", size: 20)
        pictureLabel.textColor = UIColor(named: "textColor")
        
        view.backgroundColor = lightGrayColor
        view.layer.cornerRadius = 18
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
