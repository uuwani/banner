//
//  BannerCell.swift
//  banner
//
//  Created by Wanni on 2020/01/31.
//  Copyright © 2020 Wanni. All rights reserved.
//

import UIKit

open class BannerCell: UIView {
    
    @IBOutlet open var banner_imgView: UIImageView!
    @IBOutlet var banner_btn: UIButton!
    
    var inside_view:BannerCell!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required public init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
    }
    
//    required public init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
    
    private func commonInit(){
        
        inside_view = Bundle.main.loadNibNamed("BannerCell", owner: self, options: nil)?.first as? BannerCell
        
        self.addSubview(inside_view)
        
        inside_view.translatesAutoresizingMaskIntoConstraints = false
        inside_view.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        inside_view.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        inside_view.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        inside_view.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
    }
}
