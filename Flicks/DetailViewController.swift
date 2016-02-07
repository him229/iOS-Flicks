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

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var posterimageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    @IBOutlet weak var infoView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = CGSize(width: scrollView.frame.size.width , height: infoView.frame.origin.y + infoView.frame.size.height)

        // Do any additional setup after loading the view.
        
        titleLabel.text = movie["title"] as! String
        titleLabel.textColor = UIColor(red: 245/255.0, green: 173/255.0, blue: 40/255.0, alpha: 1.0)

        infoView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1.0)
        
        overviewLabel.text = movie["overview"] as! String
        overviewLabel.textColor = UIColor(red: 245/255.0, green: 173/255.0, blue: 40/255.0, alpha: 1.0)
        
        overviewLabel.sizeToFit()
        
        //self.infoView.sizeThatFits(CGSize(width: overviewLabel.frame.width, height: overviewLabel.frame.height + titleLabel.frame.height+25))
        
        //infoView.sizeThatFits(CGSize(width: 100, height: 200))
        //newFrame.size.height = overviewLabel.frame.height
        
        
        
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
