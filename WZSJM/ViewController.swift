//
//  ViewController.swift
//  WZSJM
//
//  Created by xiexz on 15/12/18.
//  Copyright © 2015年 xiexz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var allButtonImage = [[UIButton]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let backgroundImage = UIImageView()
        backgroundImage.frame = CGRectMake(0, 0, UIScreen.mainScreen().bounds.width, UIScreen.mainScreen().bounds.height)
        backgroundImage.image = UIImage(named: "background1.png")
        
        self.view.addSubview(backgroundImage)
        
        self.produceDie()
        self.produceCat()
    }
    
    func produceCat(){
        let catImage = UIImageView()
        catImage.frame = CGRectMake(CGFloat(25+28*4), CGFloat(220+28*3), 28, 56)
        
        let leftImage = UIImage(named: "left2.png")
        let rightImage = UIImage(named: "right2.png")
        let middleImage = UIImage(named: "middle2.png")
        
        catImage.animationImages = [leftImage!,rightImage!, middleImage!]
        catImage.animationDuration = 1.0
        catImage.startAnimating()
        
        self.view.addSubview(catImage)
        
        
    }
    
    func produceDie(){
        for var i=0; i < 9; i++ {
            var rowButtons = [UIButton]()
            for var j = 0; j < 9; j++ {
                let btn = UIButton()
                rowButtons.append(btn)
                if j % 2 == 0{
                    btn.frame = CGRectMake(CGFloat(25+28*i), CGFloat(220+28*j), 28, 28)
                }else{
                    btn.frame = CGRectMake(CGFloat(39+28*i), CGFloat(220+28*j), 28, 28)
                }
                
                btn.setImage(UIImage(named: "gray.png"), forState: UIControlState.Normal)
                btn.addTarget(self, action: "clickMe:", forControlEvents: UIControlEvents.TouchUpInside)
                self.view.addSubview(btn)
            }
            allButtonImage.append(rowButtons)
        }
    }
    
    func clickMe(btn:UIButton){
        btn.setImage(UIImage(named: "yellow2.png"), forState: UIControlState.Normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

