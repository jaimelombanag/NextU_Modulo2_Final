//
//  MontanaViewController.swift
//  Modulo2NextU
//
//  Created by Jaime Lombana on 14/06/18.
//  Copyright © 2018 Jaime Lombana. All rights reserved.
//

import UIKit

class MontanaViewController: UIViewController {
    
    
    
    @IBOutlet weak var titleMontana: UILabel!
    @IBOutlet weak var descriptionMontana: UITextView!
    @IBOutlet weak var imagesMontana: UIScrollView!
    
    var imageArray2 = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleMontana.text = "Montana"
        
        imageArray2 = [UIImage(named: "montana1")!, UIImage(named: "montana2")!, UIImage(named: "montana3")!, UIImage(named: "montana4")!]
        
        let imageWidth:CGFloat = 200
        let imageHeight:CGFloat = 200
        
        for i in 0..<imageArray2.count {
            let imageView = UIImageView()
            imageView.image = imageArray2[i]
            imageView.contentMode = .scaleAspectFit
            let xPosition = self.view.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPosition, y: 0, width: imageWidth, height: imageHeight)
            imagesMontana.contentSize.width = imagesMontana.frame.width * CGFloat(i + 1)
            imagesMontana.addSubview(imageView)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
}
