//
//  ViewController.swift
//  PlayDice
//
//  Created by Taekwon Lee on 2023/05/12.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftDiceView: UIImageView!
    @IBOutlet weak var rightDiceView: UIImageView!
    
    let diceArray: [UIImage] = [#imageLiteral(resourceName: "dice1"), #imageLiteral(resourceName: "dice2"), #imageLiteral(resourceName: "dice3"), #imageLiteral(resourceName: "dice4"), #imageLiteral(resourceName: "dice5"), #imageLiteral(resourceName: "dice6")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func TappedRollButton(_ sender: UIButton) {
        // 버튼 클릭 시 왼쪽 이미지 랜덤 변경
        leftDiceView.image = diceArray.randomElement()
        
        // 버튼 클릭 시 오른쪽 이미지 랜덤 변경
        rightDiceView.image = diceArray.randomElement()
    }
}

