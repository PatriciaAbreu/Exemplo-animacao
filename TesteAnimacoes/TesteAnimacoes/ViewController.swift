//
//  ViewController.swift
//  TesteAnimacoes
//
//  Created by Patricia de Abreu on 15/04/15.
//  Copyright (c) 2015 Patricia de Abreu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var flag:Bool = true
    
    @IBOutlet var btnSegue: UIButton!

    @IBOutlet weak var btnSegue2: UIButton!
    
    @IBAction func buttonSegue(sender: AnyObject) {
       

        
//        Animação
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            
            self.btnSegue.transform = CGAffineTransformMakeTranslation(-100, -300)
            
            self.btnSegue.transform = CGAffineTransformScale(self.btnSegue.transform, 3.0, 3.0)
            
            self.btnSegue.transform = CGAffineTransformRotate(self.btnSegue.transform,CGFloat(M_PI))
            
        })
            { (terminou) -> Void in
            
                UIView.animateWithDuration(0.001, animations: { () -> Void in
                    self.btnSegue.transform = CGAffineTransformRotate(self.btnSegue.transform, CGFloat(M_PI))
                    
                })
                
        }

    }
    
    
    @IBAction func buttonSegue2(sender: AnyObject) {
        
//        Animação
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            
            self.btnSegue2.transform = CGAffineTransformMakeTranslation(100, -300)
            
            self.btnSegue2.transform = CGAffineTransformScale(self.btnSegue2.transform, 3.0, 3.0)
            
            self.btnSegue2.transform = CGAffineTransformRotate(self.btnSegue2.transform,CGFloat(M_PI))
            
            })
            { (terminou) -> Void in
                
                UIView.animateWithDuration(0.001, animations: { () -> Void in
                    self.btnSegue2.transform = CGAffineTransformRotate(self.btnSegue2.transform, CGFloat(M_PI))
                    
                })
                
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let notificacao1: NSNotificationCenter = NSNotificationCenter.defaultCenter()
        
        let notificacao2: NSNotificationCenter = NSNotificationCenter.defaultCenter()
        
        notificacao1.addObserver(self, selector: "animarBotao1:", name: "animeBotao1", object: nil)
        
        notificacao2.addObserver(self, selector: "animarBotao2:", name: "animeBotao2", object: nil)
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
//    método que recebe notificação da outra view para animar o botão
    func animarBotao1(mensagem:NSNotification)
    {
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            
            self.btnSegue.transform = CGAffineTransformMakeTranslation(10, 0)
          
        })
    }
    
    func animarBotao2(mensagem:NSNotification)
    {
            UIView.animateWithDuration(0.5, animations: { () -> Void in
                
                self.btnSegue2.transform = CGAffineTransformMakeTranslation(-10, 0)
                
            })
    
    
    }


}

