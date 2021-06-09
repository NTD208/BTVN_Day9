//
//  Bai4ViewController.swift
//  BaitapBuoi9
//
//  Created by Chu Du on 08/06/2021.
//

import UIKit

class Bai4ViewController: UIViewController {

    @IBOutlet weak var ballImage: UIImageView!
    var h:CGFloat = 100
    var bottomOfScreen:CGFloat!
    var temp:CGFloat = 0
    var timer:Timer!
    var timer1:Timer!
    var timer2:Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ballImage.image = UIImage(named: "tennisball")
        ballImage.center = CGPoint(x: view.center.x, y: h)
        
        bottomOfScreen = view.bounds.maxY - ballImage.bounds.height/2
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(jumpBall), userInfo: nil, repeats: true)
    }
    
    @objc func jumpBall() {
        h += (75 - temp)
        temp += 1
        
        if h >= bottomOfScreen {
            timer.invalidate()
            return
        }
        timer1 = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(jumpDown), userInfo: nil, repeats: true)
        timer2 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(jumpUp), userInfo: nil, repeats: true)
    }
    
    @objc func jumpDown() {
        UIView.animate(withDuration: 0.5) {
            self.ballImage.center.y = self.bottomOfScreen
        }
        timer1.invalidate()
    }
    
    @objc func jumpUp() {
        if h >= bottomOfScreen {
            timer2.invalidate()
            return
        }
        UIView.animate(withDuration: 0.5) {
            self.ballImage.center.y = self.h
        }
        timer2.invalidate()
    }
}

