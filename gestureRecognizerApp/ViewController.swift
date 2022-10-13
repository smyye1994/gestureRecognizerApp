//
//  ViewController.swift
//  gestureRecognizerApp
//
//  Created by Sümeyye Kılıçoğlu on 21.04.2022.
//

import UIKit

class ViewController: UIViewController {
    var isbaris = true

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var myLabel: UILabel!
   
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    @objc func changePic() {
        if isbaris == true {
            imageView.image = UIImage(named: "bora")
        myLabel.text = "Bora Yeter"
        isbaris = false
        } else {
            imageView.image =  UIImage(named: "baris")
            myLabel.text = "Baris Yurtcu"
            isbaris = true
        
            
        }
    }
}
