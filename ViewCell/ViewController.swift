//
//  ViewController.swift
//  ViewCell
//
//  Created by App Partner on 11/7/17.
//  Copyright © 2017 App Partner. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collectionView: UICollectionView!
    var tabledata : [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        collectionView.dataSource = self
        collectionView.delegate = self
        let nib = UINib(nibName: "CCell", bundle: nil)
        collectionView?.register(nib, forCellWithReuseIdentifier: "cell")
        self.tabledata = ["10", "9", "8", "7", "6", "5", "4", "3", "2", "1", "0", "-1"]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.tabledata.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CCell
        cell.setCellData(data: self.tabledata[indexPath.row])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let string = self.tabledata[indexPath.row]
        self.tabledata[indexPath.row] = "0"
        collectionView.reloadItems(at: [indexPath])
        print(string)
    }
    /*
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 20.0, height: 20.0)
    }
    */
    
}

