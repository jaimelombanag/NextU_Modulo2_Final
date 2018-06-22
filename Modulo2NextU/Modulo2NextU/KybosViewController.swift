//
//  KybosViewController.swift
//  Modulo2NextU
//
//  Created by Jaime Lombana on 14/06/18.
//  Copyright © 2018 Jaime Lombana. All rights reserved.
//

import UIKit

class KybosViewController: UIViewController {
    
    
    
    @IBOutlet weak var titleKybos: UILabel!
    @IBOutlet weak var descriptionMontana: UITextView!
    @IBOutlet weak var imagesKybos: UIScrollView!
    
     var imageArray2 = [UIImage]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleKybos.text = "Kybos"
        
        imageArray2 = [UIImage(named: "kybos1")!, UIImage(named: "kybos2")!, UIImage(named: "kybos3")!, UIImage(named: "kybos4")!]
        
        let imageWidth:CGFloat = 200
        let imageHeight:CGFloat = 200
        
        for i in 0..<imageArray2.count {
            let imageView = UIImageView()
            imageView.image = imageArray2[i]
            imageView.contentMode = .scaleAspectFit
            let xPosition = self.view.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPosition, y: 0, width: imageWidth, height: imageHeight)
            imagesKybos.contentSize.width = imagesKybos.frame.width * CGFloat(i + 1)
            imagesKybos.addSubview(imageView)
        }

    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
