//
//  ViewController.swift
//  tapWar
//
//  Created by Sabrine  on 27/09/2016.
//  Copyright © 2016 Sabrine . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TopButton: UIButton!
    @IBOutlet weak var BottomButton: UIButton!
   
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    
    @IBOutlet weak var EndTopLabel: UILabel!
    @IBOutlet weak var EndBottomLabel: UILabel!
    
    @IBOutlet weak var endScene: UIButton!
    var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        score = 0
        topLabel.text = "\(score)"
        bottomLabel.text = "\(score)"
        
        topLabel.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
        EndTopLabel.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
        endScene.isHidden = true
        EndTopLabel.isHidden = true
        EndBottomLabel.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func BlueBtnAction(_ sender: AnyObject) {
        
        score += 1
        topLabel.text = "\(score)"
        bottomLabel.text = "\(score)"
        testScore()

    }
    @IBAction func PerpleBtnAction(_ sender: AnyObject) {
        score -= 1
        topLabel.text = "\(score)"
        bottomLabel.text = "\(score)"
        testScore()
    }
    
    func testScore() {
        if score >= 10 {
            endScene.isHidden = false
            EndTopLabel.isHidden = false
            EndBottomLabel.isHidden = false
            
            EndTopLabel.text = "Winner"
            EndBottomLabel.text = "Loser"
        }
        
        else if score <= -10 {
            endScene.isHidden = false
            EndTopLabel.isHidden = false
            EndBottomLabel.isHidden = false
            
            EndBottomLabel.text = "Winner"
            EndTopLabel.text = "Loser"
        }
    }
    @IBAction func endSceneAction(_ sender: AnyObject) {
        endScene.isHidden = true
        EndTopLabel.isHidden = true
        EndBottomLabel.isHidden = true
        
        score = 0
        topLabel.text = "\(score)"
        bottomLabel.text = "\(score)"
    }

}

