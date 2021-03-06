//
//  DemGioViewController.swift
//  BaitapBuoi9
//
//  Created by Chu Du on 08/06/2021.
//

import UIKit

enum Time {
    case Start
    case Pause
}

class DemGioViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var actionButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    var timer:Timer!
    var numberSecond:Int = 0
    
    var timeType:Time = .Start
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @objc func runLoop() {
        numberSecond += 1
        timeLabel.text = stringFromNumberSecond(numberSecond)
//        timeLabel.textAlignment = .center
    }
    
    func stringFromNumberSecond(_ numberSecond:Int) -> String {
        let gio = numberSecond / 3600
        let phut = (numberSecond % 3600) / 60
        let giay = (numberSecond % 3600) % 60
        
        return "\(gio < 10 ? "0\(gio)" : "\(gio)"):\(phut < 10 ? "0\(phut)" : "\(phut)"):\(giay < 10 ? "0\(giay)" : "\(giay)")"
    }
    
    @IBAction func changePress(_ sender: Any) {
        if timeType == Time.Start {
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(runLoop), userInfo: nil, repeats: true)
            actionButton.setTitle("Pause", for: .normal)
            timeType = Time.Pause
        } else {
            actionButton.setTitle("Start", for: .normal)
            timeType = Time.Start
            timer.invalidate()
        }
    }
    
    @IBAction func resetPress(_ sender: Any) {
        numberSecond = 0
        timeLabel.text = stringFromNumberSecond(numberSecond)
        actionButton.setTitle("Start", for: .normal)
        timeType = Time.Start
        timer.invalidate()
    }
    
}
