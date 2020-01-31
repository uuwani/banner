//
//  ViewController.swift
//  banner
//
//  Created by Wanni on 19/01/2020.
//  Copyright © 2020 Wanni. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let screen_width = UIScreen.main.bounds.width
    let screen_height = UIScreen.main.bounds.height
    
    var banner:Banner?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        banner = Banner(frame: CGRect(x: 0, y: 0, width: screen_width, height: screen_height))
        let imgs = [UIImage(named: "required_reading_7")!, UIImage(named: "required_reading_6")!,UIImage(named: "required_reading_5")!]
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(btn_action))
        
        let actions = [tapGesture, tapGesture, tapGesture]
        
        banner!.setup_banner(imgs: imgs, actions: actions)
        self.view.addSubview(banner!)
        
        
        let btn = UIButton()
//        self.view.addSubview(btn)
        btn.frame = CGRect(x: 0, y: 300, width: 30, height: 30)
        btn.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        btn.addTarget(self, action: #selector(btn_action), for: .touchUpInside)
        
    }
    
    @objc func btn_action() {
        print("click")
    }


}

