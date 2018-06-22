//
//  FastoViewController.swift
//  Modulo2NextU
//
//  Created by Jaime Lombana on 14/06/18.
//  Copyright © 2018 Jaime Lombana. All rights reserved.
//

import UIKit

class FastoViewController: UIViewController,  UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    
    @IBOutlet weak var titleFasto: UILabel!
    var imageArray = [UIImage(named: "fasto1"), UIImage(named: "fasto2"), UIImage(named: "fasto3"), UIImage(named: "fasto4")]
    @IBOutlet weak var descriptionFasto: UITextView!
    @IBOutlet weak var imagesFasto: UIScrollView!
    
    
    
    
    var imageArray2 = [UIImage]()

    override func viewDidLoad() {
        super.viewDidLoad()

        
        titleFasto.text = "Fasto"
        
        
        imageArray2 = [#imageLiteral(resourceName: "kybos1"), #imageLiteral(resourceName: "montana2"), #imageLiteral(resourceName: "montana1"), #imageLiteral(resourceName: "kybos3")]
        let imageWidth:CGFloat = 200
        let imageHeight:CGFloat = 200
        
        
        for i in 0..<imageArray2.count {
            let imageView = UIImageView()
            imageView.image = imageArray2[i]
            imageView.contentMode = .scaleAspectFit
            
            let xPosition = self.view.frame.width * CGFloat(i)
            //imageView.frame = CGRect(x: xPosition, y: 0, width: self.imagesFasto.frame.width, height: self.imagesFasto.frame.height)
            imageView.frame = CGRect(x: xPosition, y: 0, width: imageWidth, height: imageHeight)
            
            imagesFasto.contentSize.width = imagesFasto.frame.width * CGFloat(i + 1)
            
            imagesFasto.addSubview(imageView)
            
            
            
        }
        
        
        
        
        
        
//        let imagenesFasto = ["fasto1", "fasto2", "fasto3", "fasto4"]
//        
//        let imageWidth:CGFloat = 150
//        let imageHeight:CGFloat = 150
//        var yPosition:CGFloat = 0
//        var ScrollViewContentSize:CGFloat = 150
//        
//        
//        for index in 0 ..< imagenesFasto.count {
//            
//            let imageFasto:UIImage = UIImage(named: imagenesFasto[index])!
//            let imageFastiView:UIImageView = UIImageView()
//            imageFastiView.image = imageFasto
//            
//            imageFastiView.frame.size.width = imageWidth
//            imageFastiView.frame.size.height = imageHeight
//            imageFastiView.frame.origin.x = yPosition
//            imageFastiView.frame.origin.y = 10
//            
//            imagesFasto.addSubview(imageFastiView)
//            
//            yPosition += imageHeight
//            ScrollViewContentSize += imageHeight
//
//            imagesFasto.contentSize = CGSize(width: imageWidth, height: ScrollViewContentSize)
//            
//        }
//        
        
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FastoCollectionViewCell", for: indexPath) as! FastoCollectionViewCell
        
        cell.imgFasto.image = imageArray[indexPath.row]
        
        return cell
    }
    
    

}
