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
    @IBOutlet weak var result: UILabel!
    
    var turn=whosTurn.xPlay;
    var board=[UIButton]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initBoard()
        
    }
    
    func initBoard()
    {
        board.append(a1)
        board.append(a2)
        board.append(a3)
        board.append(b1)
        board.append(b2)
        board.append(b3)
        board.append(c1)
        board.append(c2)
        board.append(c3)
    }


    @IBAction func tap(_ sender: UIButton) {
    
    addSign(sender)
    }
    
    func isFull()->Bool
    
    {
        for button in board
        {
            if button.image(for: .normal) == nil
            {return false}
        }
        return true
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

