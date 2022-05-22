//
//  ViewController.swift
//  Practica 1
//
//  Created by Erendira Cruz Reyes on 19/05/22.
//

import UIKit

class ViewController: UIViewController {
    let image = LoaderView()
    @IBAction func segmento(_ sender: Any) {
        let temp = filtro.selectedSegmentIndex
        
        switch filtro.selectedSegmentIndex{
        case 0: image.repintar("dog")
            
        case 1: image.repintar("mundo")
            
        case 2: image.repintar("cat")
            
        case 3: image.repintar("fish")
            
        default: image.repintar("dog")
            
        }
        print (temp)
    } 
    @IBOutlet weak var filtro: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let unView = self.view.viewWithTag(666) {
                    unView.removeFromSuperview()
                }

        image.frame.size = CGSize(width: 400, height: 400)
        image.center = self.view.center
        image.tag = 666

        self.view.addSubview(image)
        self.view.backgroundColor = .cyan
        

    }



}

