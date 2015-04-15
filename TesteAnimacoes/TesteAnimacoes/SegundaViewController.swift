//
//  SegundaViewController.swift
//  TesteAnimacoes
//
//  Created by Patricia de Abreu on 15/04/15.
//  Copyright (c) 2015 Patricia de Abreu. All rights reserved.
//

import UIKit

class SegundaViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        var downSwipe: UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: "downSwipe:")
        
        var downSwipe: UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("downSwipe"))
        downSwipe.direction = UISwipeGestureRecognizerDirection.Down
        
//        downSwipe.edges = UIRectEdge.Left
        
        self.view!.addGestureRecognizer(downSwipe)
        
//        self.modalTransitionStyle = UIModalTransitionStyle.FlipHorizontal
        
        // Do any additional setup after loading the view.
    }

    func downSwipe(){
        
        let notification: NSNotificationCenter = NSNotificationCenter.defaultCenter()
        
        notification.postNotificationName("animeBotao1", object: self)
        
       self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

     override func touchesMoved(touches: Set<NSObject>, withEvent event: UIEvent) {
    
        super.touchesMoved(touches, withEvent: event)
        
        let touch: UITouch = touches.first as! UITouch
        
        
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
