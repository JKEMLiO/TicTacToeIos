//
//  ViewController.swift
//  TicTacToe
//
//  Created by csuser on 23/04/2022.
//

import UIKit

class ViewController: UIViewController
{
    enum whosTurn{
        case xPlay
        case oPlay
    }
    
    @IBOutlet weak var turnImage: UIImageView!
    @IBOutlet weak var a1: UIButton!
    @IBOutlet weak var a2: UIButton!
    @IBOutlet weak var a3: UIButton!
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var c1: UIButton!
    @IBOutlet weak var c2: UIButton!
    @IBOutlet weak var c3: UIButton!
    
    var turn=whosTurn.xPlay;
    var board=[UIButton]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func tap(_ sender: UIButton) {
    
    addSign(sender)
    }
    
    func isFull()->Bool
    {
        
    }
    
    
    func addSign(_ sender:UIButton)
    {
        if(sender.image(for: .normal)==nil)
        {
            if(turn==whosTurn.xPlay)
            {
                sender.setImage(UIImage(named: "Xplayer"), for: .normal);
                turn=whosTurn.oPlay;
                turnImage.image=UIImage(named: "Oplayer");
                
                
            }
            
            else if(turn==whosTurn.oPlay)
            {
                sender.setImage(UIImage(named: "Oplayer"), for: .normal);
                turn=whosTurn.xPlay;
                turnImage.image=UIImage(named: "Xplayer");
                
                
            }
        }
    }
}

