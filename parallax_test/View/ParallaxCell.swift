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
        setupParallax()
    }

    public func updateCell(withItem item: Item){
        imageCell.image = UIImage(named: item.imageTitle)
        descriptionLbl.text = item.description
    }
    
    func setupParallax(){
        let min = CGFloat(-30)
        let max = CGFloat(30)
        
        let xMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.x", type: .tiltAlongHorizontalAxis)
        xMotion.maximumRelativeValue = max
        xMotion.minimumRelativeValue = min
        
        let yMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.y", type: .tiltAlongVerticalAxis)
        yMotion.maximumRelativeValue = max
        yMotion.minimumRelativeValue = min
        
        let effectGroup = UIMotionEffectGroup()
        effectGroup.motionEffects = [xMotion, yMotion]
        
        imageCell.addMotionEffect(effectGroup)
    }
}
