//
//  KybosViewController.swift
//  Modulo2NextU
//
//  Created by Jaime Lombana on 14/06/18.
//  Copyright © 2018 Jaime Lombana. All rights reserved.
//

import UIKit

class KybosViewController: UIViewController,  UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    
    @IBOutlet weak var titleKybos: UILabel!
    var imageArray = [UIImage(named: "kybos1"), UIImage(named: "kybos2"), UIImage(named: "kybos3"), UIImage(named: "kybos4")]
    @IBOutlet weak var descriptionMontana: UITextView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        titleKybos.text = "Kybos"
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
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "KybosCollectionViewCell", for: indexPath) as! KybosCollectionViewCell
        
        cell.imgKybos.image = imageArray[indexPath.row]
        
        return cell
    }
    
    
    
}
