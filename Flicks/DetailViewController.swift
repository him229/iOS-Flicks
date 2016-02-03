//
//  DetailViewController.swift
//  Flicks
//
//  Created by Himank Yadav on 1/31/16.
//  Copyright © 2016 himankyadav. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var movie:NSDictionary!

    @IBOutlet weak var posterimageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        titleLabel.text = movie["title"] as! String
        overviewLabel.text = movie["overview"] as! String
        
        if let imageChangingURL = movie["poster_path"] as? String{
            let imageURL = NSURL(string: "http://image.tmdb.org/t/p/w500" + imageChangingURL)
            
            posterimageView.setImageWithURL(imageURL!)
        }
        else {
            posterimageView.image = nil
        }
        
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
