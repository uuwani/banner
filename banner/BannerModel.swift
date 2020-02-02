//
//  BannerModel.swift
//  banner
//
//  Created by Wanni on 2020/02/01.
//  Copyright © 2020 Wanni. All rights reserved.
//

import UIKit

//banner가 반드시 가지고 있어야하는 정보들을 명세한다.

protocol BannerModelProtocol {
    
    var imgs: [UIImage] { get set }
    var banner_number: Int { get }
    var imgs_size:CGSize { get }
    var banner_frame:CGRect { get set }
    
    
    
}

//bannerModel은 protocol이 명세한 것들의 값을 가지고 있다가 나중에 뷰에게 주면 됨.
class BannerModel: BannerModelProtocol {
    
    var banner_number: Int { return imgs.count }
    var imgs_size: CGSize { return CGSize(width: banner_frame.width,
                                          height: banner_frame.height) }
    var banner_frame = CGRect(x: 0, y: 0, width: 0, height: 0)
    var imgs: [UIImage] = []
    
    init() {}
    
}
