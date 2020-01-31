//
//  banner_frame.swift
//  banner
//
//  Created by Wanni on 19/01/2020.
//  Copyright © 2020 Wanni. All rights reserved.
//

// 이미지로 집어넣는다. -> 가장 일반적인 방법이겠네.
// 배너의 필수적인 요소.
// 배너에 넣을 이미지, 배너를 클릭했을때 action.
// 사용자가 설정해줘야하는 부분들은 이미지, 그리고 액션. 두가지만 하면 가능하도록 만들어야한다.

import UIKit

class BannerFrame: UIView {
    
    var btn:UIButton?
    var imgView:UIImageView?
    
    init(frame: CGRect, img banner_img:UIImage, action banner_action: UITapGestureRecognizer) {
        super.init(frame: frame)
        
        setup_imgView(img: banner_img)
        setup_btn(actions: banner_action)

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup_imgView(img: UIImage) {
        let imgView: UIImageView = banner_imgView
        imgView.image = img
        
        self.addSubview(imgView)
        imgView.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height)
        
//        imgView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
//        imgView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
//        imgView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
//        imgView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
    }
    
    func setup_btn(actions: UITapGestureRecognizer) {
        let btn: UIButton = banner_btn
        NSLog("\(actions)")
        btn.addGestureRecognizer(actions)
        self.addSubview(btn)
        btn.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height)

//        btn.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
//        btn.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
//        btn.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
//        btn.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true

    }
    
    let banner_imgView: UIImageView = {
        
        let banner_imgView = UIImageView()
        banner_imgView.contentMode = .scaleToFill
        return banner_imgView
    }()
    
    let banner_btn: UIButton = {
        
        let banner_btn = UIButton()
        banner_btn.backgroundColor = UIColor.clear
        
        
        return banner_btn
    }()
}
