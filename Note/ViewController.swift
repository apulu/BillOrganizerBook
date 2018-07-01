//
//  ViewController.swift
//  Note
//
//  Created by APULU on 2018/6/26.
//  Copyright © 2018 APULU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var records = [Record]()
    var Total = 0
    
    @IBOutlet weak var imgImage: UIImageView!
    @IBOutlet weak var totalCostLabel: UILabel!
    @IBOutlet weak var imgLabel: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let records = Record.readRecordFromFile(){
            self.records = records
        }
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        records = [Record]()
        if let records = Record.readRecordFromFile(){
            self.records = records
        }
        
        Total = 0
        for record in records{
            Total += record.amount
            
        }
        
        if(Total>100000){
            imgImage.loadGif(name: "SecretDoge")
            imgLabel.image = #imageLiteral(resourceName: "costSecret")
        }else if(Total>10000){
            imgImage.loadGif(name: "BeerDoge")
            imgLabel.image = #imageLiteral(resourceName: "costBeer")
        }else if(Total>1000){
            imgImage.loadGif(name: "ChickenlegDoge")
            imgLabel.image = #imageLiteral(resourceName: "costChickenleg")
        }else{
            imgImage.loadGif(name: "DancingDoge")
            imgLabel.image = #imageLiteral(resourceName: "costNothing")
        }
        
        totalCostLabel.text = "$ " + String(Total)
        
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

