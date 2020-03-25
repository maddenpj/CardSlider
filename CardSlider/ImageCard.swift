//
//  ImageCard.swift
//  CardSlider
//
//  Created by Saoud Rizwan on 2/27/17.
//  Copyright © 2017 Saoud Rizwan. All rights reserved.
//

import UIKit

class ImageCard: CardView {

    init(frame: CGRect, model: SponsorModel) {
        super.init(frame: frame)
        
        // image
        
        let imageView = UIImageView(image: model.image)
        imageView.contentMode = .scaleAspectFill
        imageView.backgroundColor = UIColor(red: 67/255, green: 79/255, blue: 182/255, alpha: 1.0)
        imageView.layer.cornerRadius = 5
        imageView.layer.masksToBounds = true
        
        imageView.frame = CGRect(x: 12, y: 12, width: self.frame.width - 24, height: self.frame.height - 103)
        self.addSubview(imageView)
        
        // dummy text boxes
        
        let textBox1 = UIView()
        textBox1.backgroundColor = UIColor(red: 67/255, green: 79/255, blue: 182/255, alpha: 1.0)
        textBox1.layer.cornerRadius = 12
        textBox1.layer.masksToBounds = true
        
        textBox1.frame = CGRect(x: 12, y: imageView.frame.maxY + 15, width: 200, height: 24)
        let text1 = UILabel(frame: textBox1.frame)
        text1.frame = text1.frame.offsetBy(dx: 10, dy: 0)
        text1.text = model.name
        text1.textColor = UIColor.white
        text1.font = UIFont.boldSystemFont(ofSize: 18)
        text1.layer.zPosition = CGFloat(Float.greatestFiniteMagnitude)
        
        self.addSubview(textBox1)
        self.addSubview(text1)

        
        let textBox2 = UIView()
        textBox2.backgroundColor = UIColor(red: 67/255, green: 79/255, blue: 182/255, alpha: 1.0)
        textBox2.layer.cornerRadius = 12
        textBox2.layer.masksToBounds = true
        
        textBox2.frame = CGRect(x: 12, y: textBox1.frame.maxY + 10, width: 120, height: 24)
        self.addSubview(textBox2)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
