//
//  ViewController.swift
//  BaitapBuoi9
//
//  Created by Chu Du on 08/06/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTitle: UILabel!
    @IBOutlet weak var demGioButton: UIButton!
    @IBOutlet weak var dongHoButton: UIButton!
    @IBOutlet weak var bai3Button: UIButton!
    @IBOutlet weak var bai4Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .cyan
        
        myTitle.text = "Hello"
        myTitle.font = UIFont.italicSystemFont(ofSize: 70)
        myTitle.textAlignment = .center
        myTitle.textColor = UIColor.red
        
        demGioButton.setTitle("Đếm giờ", for: .normal)
        demGioButton.titleLabel?.font = UIFont.systemFont(ofSize: 40, weight: .regular)
        demGioButton.setTitleColor(.black, for: .normal)
        demGioButton.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        demGioButton.layer.cornerRadius = demGioButton.bounds.height/2
        
        dongHoButton.setTitle("Đồng hồ", for: .normal)
        dongHoButton.titleLabel?.font = UIFont.systemFont(ofSize: 40, weight: .regular)
        dongHoButton.setTitleColor(.black, for: .normal)
        dongHoButton.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        dongHoButton.layer.cornerRadius = dongHoButton.bounds.height/2
        
        bai3Button.setTitle("Bóng rơi", for: .normal)
        bai3Button.titleLabel?.font = UIFont.systemFont(ofSize: 40, weight: .regular)
        bai3Button.setTitleColor(.black, for: .normal)
        bai3Button.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        bai3Button.layer.cornerRadius = bai3Button.bounds.height/2
        
        bai4Button.setTitle("Bóng nảy", for: .normal)
        bai4Button.titleLabel?.font = UIFont.systemFont(ofSize: 40, weight: .regular)
        bai4Button.setTitleColor(.black, for: .normal)
        bai4Button.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
        bai4Button.layer.cornerRadius = bai4Button.bounds.height/2
    }    
    
}

