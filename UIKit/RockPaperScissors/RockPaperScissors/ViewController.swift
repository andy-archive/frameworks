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
    
    var computerChoice: Rps = Rps(rawValue: Int.random(in: 0...2))!
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
        mainLabel.text = "Choose One!"
        
        computerImageView.image = UIImage(named: "rock-paper-scissors.png")
        userImageView.image = UIImage(named: "rock-paper-scissors.png")
        
        computerChoiceLabel.text = "READY"
        userChoiceLabel.text = "READY"
    }
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        switch computerChoice {
        case Rps.rock:
            computerImageView.image = #imageLiteral(resourceName: "fist")
            computerChoiceLabel.text = "ROCK"
        case Rps.paper:
            computerImageView.image = #imageLiteral(resourceName: "hello")
            computerChoiceLabel.text = "PAPER"
        case Rps.scissors:
            computerImageView.image = #imageLiteral(resourceName: "letter-v")
            computerChoiceLabel.text = "SCISSORS"
        }

        switch userChoice {
        case Rps.rock:
            userImageView.image = #imageLiteral(resourceName: "fist")
            userChoiceLabel.text = "ROCK"
        case Rps.paper:
            userImageView.image = #imageLiteral(resourceName: "hello")
            userChoiceLabel.text = "PAPER"
        case Rps.scissors:
            userImageView.image = #imageLiteral(resourceName: "letter-v")
            userChoiceLabel.text = "SCISSORS"
        }
        
        if computerChoice == userChoice {
            mainLabel.text = "IT IS DRAW 🙂"
        } else if computerChoice == .rock && userChoice == .paper {
            mainLabel.text = "YOU WON 😆"
        } else if computerChoice == .paper && userChoice == .scissors {
            mainLabel.text = "YOU WON 😆"
        } else if computerChoice == .scissors && userChoice == .rock {
            mainLabel.text = "YOU WON 😆"
        } else {
            mainLabel.text = "YOU LOST 😭"
        }
    }
}

