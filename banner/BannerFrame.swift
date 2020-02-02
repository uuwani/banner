//
//  BannerInsideView.swift
//  banner
//
//  Created by Wanni on 19/01/2020.
//  Copyright © 2020 Wanni. All rights reserved.
//

import UIKit

protocol BannerFrameProtocol {
    func configure()
    func setup_bannerCell()
}

class BannerFrame: UIView, BannerFrameProtocol {
    
    var model: BannerModel?
    
    func configure() {
        setup_bannerCell()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

//MARK: - bannerCell setup
extension BannerFrame {
    func setup_bannerCell() {

        for (index, img) in (self.model?.imgs.enumerated())! {
            NSLog("hey : \(img)")
            let banner_cell = BannerCell(frame: self.model!.banner_frame)

            self.addSubview(banner_cell)
            banner_cell.translatesAutoresizingMaskIntoConstraints = false
            banner_cell.inside_view.banner_imgView.image = img
            banner_cell.backgroundColor = #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)
            let widthConstant = (self.model?.imgs_size.width)!
            
            switch index {
            case 0:
                
                banner_cell.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
                banner_cell.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
                banner_cell.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
                banner_cell.widthAnchor.constraint(equalToConstant: widthConstant).isActive = true
            default:
                
                banner_cell.leftAnchor.constraint(equalTo: self.subviews[index - 1].rightAnchor).isActive = true
                banner_cell.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
                banner_cell.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
                banner_cell.widthAnchor.constraint(equalToConstant: widthConstant).isActive = true
                
            }
        }
    }
}
