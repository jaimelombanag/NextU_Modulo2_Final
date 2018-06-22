//
//  FastoViewController.swift
//  Modulo2NextU
//
//  Created by Jaime Lombana on 14/06/18.
//  Copyright © 2018 Jaime Lombana. All rights reserved.
//

import UIKit

class FastoViewController: UIViewController {
    
    @IBOutlet weak var titleFasto: UILabel!
    @IBOutlet weak var descriptionFasto: UITextView!
    @IBOutlet weak var imagesFasto: UIScrollView!
    
    
    var imageArray2 = [UIImage]()

    override func viewDidLoad() {
        super.viewDidLoad()

        titleFasto.text = "Fasto"
        //imageArray2 = [#imageLiteral(resourceName: "kybos1"), #imageLiteral(resourceName: "montana2"), #imageLiteral(resourceName: "montana1"), #imageLiteral(resourceName: "kybos3")]
        imageArray2 = [UIImage(named: "fasto1")!, UIImage(named: "fasto2")!, UIImage(named: "fasto3")!, UIImage(named: "fasto4")!]

        let imageWidth:CGFloat = 200
        let imageHeight:CGFloat = 200
        
        for i in 0..<imageArray2.count {
            let imageView = UIImageView()
            imageView.image = imageArray2[i]
            imageView.contentMode = .scaleAspectFit
            let xPosition = self.view.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPosition, y: 0, width: imageWidth, height: imageHeight)
            imagesFasto.contentSize.width = imagesFasto.frame.width * CGFloat(i + 1)
            imagesFasto.addSubview(imageView)
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
