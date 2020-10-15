//
//  PictureTableViewCell.swift
//  ImageViewerApp
//
//  Created by Michal Pietrzak on 15/10/2020.
//

import UIKit

class PictureTableViewCell: UITableViewCell {
    @IBOutlet var pictureName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
