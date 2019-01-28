//
//  ParallaxCell.swift
//  parallax_test
//
//  Created by Nicolas Terrone on 28/01/2019.
//  Copyright © 2019 Nicolas Terrone. All rights reserved.
//

import UIKit

class ParallaxCell: UITableViewCell {

    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var descriptionLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    public func updateCell(withItem item: Item){
        imageCell.image = UIImage(named: item.imageTitle)
        descriptionLbl.text = item.description
    }
    
    func setupParallax(){
        
    }

}
