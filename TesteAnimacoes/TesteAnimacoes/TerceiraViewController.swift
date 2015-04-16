//
//  TerceiraViewController.swift
//  TesteAnimacoes
//
//  Created by Patricia de Abreu on 15/04/15.
//  Copyright (c) 2015 Patricia de Abreu. All rights reserved.
//

import UIKit

class TerceiraViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var downSwipe: UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("downSwipe"))
        downSwipe.direction = UISwipeGestureRecognizerDirection.Down
        
        self.view!.addGestureRecognizer(downSwipe)

        // Do any additional setup after loading the view.
    }

    func downSwipe(){
        
//        envia notificacao para a view controller para dar retornar o botao para a posicao inicial
        let notificacao:NSNotificationCenter = NSNotificationCenter.defaultCenter()
        
        notificacao.postNotificationName("animeBotao2", object: self)
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func touchesMoved(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        super.touchesMoved(touches, withEvent: event)
        
        let touch: UITouch = touches.first as! UITouch
        
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
