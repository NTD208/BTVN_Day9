//
//  Bai3ViewController.swift
//  BaitapBuoi9
//
//  Created by Chu Du on 08/06/2021.
//

import UIKit

class Bai3ViewController: UIViewController {

    @IBOutlet weak var ballImage: UIImageView!
    let height:CGFloat = 100
    
    override func viewDidLoad() {
        super.viewDidLoad()

        ballImage.image = UIImage(named: "tennisball")
        ballImage.center = CGPoint(x: view.center.x, y: height)
        
        UIView.animate(withDuration: 2) {
            self.ballImage.center.y = self.view.bounds.maxY - self.ballImage.frame.height/2
        }
    }
}
