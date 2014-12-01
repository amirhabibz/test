//
//  ImageViewController.swift
//  TestApi
//
//  Created by Amir Habibi on 2014-11-23.
//  Copyright (c) 2014 Amir Habibi. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet weak var showImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.showImage.image = UIImage(data: NSData(contentsOfURL: NSURL(string:"https://www.talentell.com/uploads/2350/albums/2485/12036_UXBZB2IH_large.jpg")!)!)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
