//
//  SelectionViewController.swift
//  Overwatch
//
//  Created by Rama Milaneh on 10/21/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class SelectionViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var characterStackView: UIStackView!
    @IBOutlet weak var characterStackViewWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var heroNameLabel: UILabel!
    @IBOutlet weak var heroScrollView: UIScrollView!
    @IBOutlet weak var firstImageView: UIImageView!
    @IBOutlet weak var secondImageView: UIImageView!
    @IBOutlet weak var thirdImageView: UIImageView!
    @IBOutlet weak var fourthImageView: UIImageView!
    @IBOutlet weak var fifthImageView: UIImageView!
    @IBOutlet weak var sixthImageView: UIImageView!
    var images = [UIImageView]()
    
    
    var game = Game()
    var heroType: HeroType!{
        didSet {
            game.heroType = heroType
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.heroScrollView.delegate = self
        self.images = [firstImageView,secondImageView,thirdImageView,fourthImageView,fifthImageView,sixthImageView]
                // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        self.heroType = .offense
        updateStackViewWithHeroes()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func changeInHeroType(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            self.heroType = .offense
        case 1:
            self.heroType = .defense
        case 2:
            self.heroType = .tank
        case 3:
            self.heroType = .support
        default:
            print("No Type")
        }
        updateStackViewWithHeroes()
    
    }
    
    func updateStackViewWithHeroes() {
        heroScrollView.setContentOffset(CGPoint(x: 0, y: 0), animated: false)
        var numbersOfHeros = game.heroes.count
        while numbersOfHeros != 6 {
            images[numbersOfHeros].isHidden = true
            numbersOfHeros += 1
        }
        
        let newWidth = containerView.frame.width * CGFloat(game.heroes.count - 1)
        characterStackViewWidthConstraint.constant = newWidth
        
        for (index, hero) in game.heroes.enumerated() {
            let imageView = images[index]
            imageView.isHidden = false
            imageView.image = hero.profileImage
         
        }
    scrollViewDidEndDecelerating(heroScrollView)
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
    
        let placeInScrollView = Int(heroScrollView.contentOffset.x / heroScrollView.frame.size.width)
        let hero = game.heroes[placeInScrollView]
        heroNameLabel.text = hero.name.description
    }

    

}



//        for hero in game.heroes {
//
//            let imageView = UIImageView(image: hero.profileImage)
//
//            characterStackView.addArrangedSubview(imageView)
//        }
//
//
//        for imageView in characterStackView.subviews {
//
//            characterStackView.removeArrangedSubview(imageView)
//
//        }

//    func updateStackViewWithHeroes() {

//

