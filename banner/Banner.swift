//
//  Banner.swift
//  banner
//
//  Created by Wanni on 19/01/2020.
//  Copyright © 2020 Wanni. All rights reserved.
//

import UIKit

class Banner: UIView {
    
    private var imgs: [UIImage]?
    private var actions: [UITapGestureRecognizer]?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup_banner(imgs:[UIImage], actions:[UITapGestureRecognizer]) {
        
        self.imgs = imgs
        self.actions = actions
        
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
        banner_insideView.widthAnchor.constraint(equalToConstant: CGFloat(imgs.count) * self.frame.width).isActive = true
    }
    
    lazy var banner_scrollView: UIScrollView = {
        let banner_scrollView = UIScrollView()

        banner_scrollView.isPagingEnabled = true
        banner_scrollView.isScrollEnabled = true
        banner_scrollView.showsVerticalScrollIndicator = false
        banner_scrollView.showsHorizontalScrollIndicator = false
        banner_scrollView.translatesAutoresizingMaskIntoConstraints = false

        return banner_scrollView
    }()
    
    lazy var banner_insideView: BannerInsideView = {
        let v = BannerInsideView(frame: self.frame, banner_attr: (imgs!, actions!))
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
}

typealias banner_attributes = (imgs:[UIImage], actions:[UITapGestureRecognizer])
typealias banner_action = () -> ()

