//
//  ViewController.swift
//  blurEffect
//
//  Created by Deki on 15/10/22.
//  Copyright © 2015年 Deki. All rights reserved.
//


import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bg: UIImageView!
    @IBOutlet weak var tx: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // 没有这一句， 不能显示圆角
        tx.clipsToBounds = true
        self.tx.layer.cornerRadius = self.tx.frame.size.width/2
        self.view.addSubview(tx)
        
        /// 添加模糊效果
        // 模糊样式
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.Light   )
        // 模糊视图
        let blurView = UIVisualEffectView(effect: blurEffect)
        // 视图尺寸
        blurView.frame.size = CGSize(width: view.frame.width, height: view.frame.height)
        // 添加到背景图界面
        bg.addSubview(blurView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

