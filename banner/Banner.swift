//
//  Banner.swift
//  banner
//
//  Created by Wanni on 19/01/2020.
//  Copyright © 2020 Wanni. All rights reserved.
//

//Banner size
//Banner cell size
//Banner

import UIKit

protocol BannerProtocol {
    
    var model:BannerModel { get set }
    func configure()
  
}

class Banner: UIView {
    
    var model = BannerModel()
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        self.model.banner_frame = frame
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy var banner_scrollView: UIScrollView = {
        let banner_scrollView = UIScrollView()

        banner_scrollView.isPagingEnabled = true
        banner_scrollView.isScrollEnabled = true
        banner_scrollView.showsVerticalScrollIndicator = false
        banner_scrollView.showsHorizontalScrollIndicator = false
        banner_scrollView.translatesAutoresizingMaskIntoConstraints = false
        banner_scrollView.backgroundColor = #colorLiteral(red: 1, green: 0.4536619989, blue: 0.5770271341, alpha: 1)
        return banner_scrollView
        
    }()
    
    lazy var banner_insideView: BannerFrame = {
        let v = BannerFrame(frame: self.frame)
        v.model = self.model
        v.configure()

        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)
        return v
    }()
}

//MARK: - Banner DataSource
extension Banner: BannerProtocol {
    func configure() {
        
        self.addSubview(banner_scrollView)
        
        banner_scrollView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        banner_scrollView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        banner_scrollView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        banner_scrollView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
        banner_scrollView.addSubview(banner_insideView)
        
        banner_insideView.leftAnchor.constraint(equalTo: banner_scrollView.leftAnchor).isActive = true
        banner_insideView.rightAnchor.constraint(equalTo: banner_scrollView.rightAnchor).isActive = true
        banner_insideView.topAnchor.constraint(equalTo: banner_scrollView.topAnchor).isActive = true
        banner_insideView.bottomAnchor.constraint(equalTo: banner_scrollView.bottomAnchor).isActive = true
        
        banner_insideView.widthAnchor.constraint(equalToConstant: self.model.banner_frame.width * CGFloat(self.model.banner_number)).isActive = true
        
        banner_insideView.heightAnchor.constraint(equalTo: banner_scrollView.heightAnchor, multiplier: 1).isActive = true
    }
}

typealias banner_attributes = (imgs:[UIImage], actions:[UITapGestureRecognizer])
typealias banner_action = () -> ()

