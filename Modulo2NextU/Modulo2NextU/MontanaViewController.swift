//
//  MontanaViewController.swift
//  Modulo2NextU
//
//  Created by Jaime Lombana on 14/06/18.
//  Copyright © 2018 Jaime Lombana. All rights reserved.
//

import UIKit

class MontanaViewController: UIViewController,  UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    
    @IBOutlet weak var titleMontana: UILabel!
    var imageArray = [UIImage(named: "montana1"), UIImage(named: "montana2"), UIImage(named: "montana3"), UIImage(named: "montana4")]
    @IBOutlet weak var descriptionMontana: UITextView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        titleMontana.text = "Montana"
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
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MontanaCollectionViewCell", for: indexPath) as! MontanaCollectionViewCell
        
        cell.imgMontana.image = imageArray[indexPath.row]
        
        return cell
    }
    
    
    
}
