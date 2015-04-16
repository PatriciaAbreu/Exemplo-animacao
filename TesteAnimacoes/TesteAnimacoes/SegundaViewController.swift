//
//  SegundaViewController.swift
//  TesteAnimacoes
//
//  Created by Patricia de Abreu on 15/04/15.
//  Copyright (c) 2015 Patricia de Abreu. All rights reserved.
//

import UIKit

class SegundaViewController: UIViewController {
    
    @IBOutlet weak var labelText: UILabel!
    
    override func viewWillAppear(animated: Bool) {
        
        //        AlertSheet
        let alerta: UIAlertController = UIAlertController(title: "Alerta Teste", message: "Texto Alerta", preferredStyle: .ActionSheet)
        
        let acaoS: UIAlertAction = UIAlertAction(title: "Sim", style: .Default) { action -> Void in
            
            self.labelText.text = "sim sim sim sim \n sim sim sim sim"
        }
        
        let acaoN: UIAlertAction = UIAlertAction(title: "Não", style: .Default) { (action) -> Void in
            
            self.labelText.text = "nao nao nao nao \n nao nao nao nao \n nao nao nao nao"
        }
        
        alerta.addAction(acaoS)
        alerta.addAction(acaoN)
        
        self.presentViewController(alerta, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        Animação de Swipe
        var downSwipe: UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("downSwipe"))
        downSwipe.direction = UISwipeGestureRecognizerDirection.Down
        
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
