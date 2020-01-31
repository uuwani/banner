//
//  BannerInsideView.swift
//  banner
//
//  Created by Wanni on 19/01/2020.
//  Copyright © 2020 Wanni. All rights reserved.
//

import UIKit

class BannerInsideView: UIView {
    
    init(frame: CGRect, banner_attr:banner_attributes) {
        super.init(frame: frame)
        setup_bannerInsideView(banner_attr: banner_attr)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup_bannerInsideView(banner_attr:banner_attributes) {
        
        for (index, img) in banner_attr.imgs.enumerated() {
            
            let rect = CGRect(x: CGFloat(index) * self.frame.width, y: 0, width: self.frame.width, height: self.frame.height)
            let banner_frame = BannerFrame(frame: rect, img: img, action: banner_attr.actions[index])
            self.addSubview(banner_frame)
        }
    }
    
    
}
