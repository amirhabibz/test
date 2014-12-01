//
//  ViewController.swift
//  TestApi
//
//  Created by Amir Habibi on 2014-11-23.
//  Copyright (c) 2014 Amir Habibi. All rights reserved.
//

import UIKit
import Alamofire
import ObjectMapper

struct resultstruct {
    
}

var name : AnyObject?
var arr:[String] = []

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
        
        
        Alamofire.request(.GET, "https://www.talentell.com/api/imagesearch", parameters: nil)
            .response { (request, response, data, error) in
                //println(request)
                //println(response)
                //println(error)
        }
        
        Alamofire.request(.GET, "https://www.talentell.com/api/imagesearch")
            .responseJSON { (_, _, JSON, _) in
                println(JSON)
                
                // var string = "" + JSON
                let user = Mapper().map(string: JSON as String, toType: Images.self)
                
                
                
              //  result = JSON
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return 6
    }
    
    // The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell{
        
        var cell = collectionView.dequeueReusableCellWithReuseIdentifier("myCell", forIndexPath: indexPath) as myViewCell
        
       
        cell.singleImage.image =  UIImage(data: NSData(contentsOfURL: NSURL(string:"https://www.talentell.com/uploads/2350/albums/2485/12036_UXBZB2IH_large.jpg")!)!)
        
        return cell
        
       
        
        
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        
       // name = arr[indexPath.row]
        
    }


}

