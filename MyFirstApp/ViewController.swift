//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Eilyn Fabiana Tudares Granadillo on 5/7/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func changeColor() -> UIColor {
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
    }

    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        let randomColor = changeColor()
        view.backgroundColor = randomColor
        
        nameLabel.textColor = .white
        universityLabel.textColor = .white
        jobLabel.textColor = .white
        
        let imageNames = ["cat1", "cat2", "cat3"]
        let randomIndex = Int.random(in: 0..<imageNames.count)
        let randomImage = UIImage(named: imageNames[randomIndex])
        UIView.transition(with: dynamicImageView,
        duration: 0.5,
        options: .transitionCrossDissolve,
        animations: {
        self.dynamicImageView.image = randomImage},
        completion: nil)


    }
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var universityLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!

    @IBOutlet weak var dynamicImageView: UIImageView!
    
    
}

