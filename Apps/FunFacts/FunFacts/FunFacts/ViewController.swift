//
//  ViewController.swift
//  FunFacts
//
//  Created by Tuba Abbasi on 8/16/16.
//  Copyright © 2016 Web N App. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!
    
    @IBOutlet var funFactButton: UIButton!
    
    let factModel = FactModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        funFactLabel.text = factModel.getRandomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFunFact() {
        
        let randomColor = ColorModel().getRandomColor()
        view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
        funFactLabel.text = factModel.getRandomFact()
        
        
    }

}

