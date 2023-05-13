//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Taekwon Lee on 2023/05/13.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var computerImageView: UIImageView!
    @IBOutlet weak var userImageView: UIImageView!
    
    @IBOutlet weak var computerChoiceLabel: UILabel!
    @IBOutlet weak var userChoiceLabel: UILabel!
    
    var userChoice: Rps = Rps.rock
    
    // 앱의 첫 화면에 실행되는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        
        computerImageView.image = #imageLiteral(resourceName: "rock-paper-scissors")
        userImageView.image = UIImage(named: "rock-paper-scissors.png")
        
        computerChoiceLabel.text = "READY"
        userChoiceLabel.text = "READY"
    }
    
    @IBAction func rpsButtonTapped(_ sender: UIButton) {
        //guard let title = sender.currentTitle else { return }
        let title = sender.currentTitle!
        
        switch title {
        case "ROCK":
            userChoice = Rps.rock
        case "PAPER":
            userChoice = Rps.paper
        case "SCISSORS":
            userChoice = Rps.scissors
        default:
            break
        }
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func selectButtonTapped(_ sender: Any) {
    }
}

