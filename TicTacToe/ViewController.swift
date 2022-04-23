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
    
        if checkForVictory(UIImage(named: "Xplayer")!){
            result.text="X WINS"
            self.disableBoard()
        }
        if checkForVictory(UIImage(named: "Oplayer")!){
            result.text="O WINS"
            self.disableBoard()
        }
        if (isFull())
        {
            result.text="NO ONE WINS"
            self.disableBoard()
        }

    }
        
    func checkForVictory(_ i : UIImage) -> Bool{
        
        //Horizontal Win
        if thisSymbol(a1,i) && thisSymbol(a2, i) && thisSymbol(a3, i){
            return true
        }
        if thisSymbol(b1,i) && thisSymbol(b2, i) && thisSymbol(b3, i){
            return true
        }
        if thisSymbol(c1,i) && thisSymbol(c2, i) && thisSymbol(c3, i){
            return true
        }
        
        //Vertical Win
        if thisSymbol(a1,i) && thisSymbol(b1, i) && thisSymbol(c1, i){
            return true
        }
        if thisSymbol(a2,i) && thisSymbol(b2, i) && thisSymbol(c2, i){
            return true
        }
        if thisSymbol(a3,i) && thisSymbol(b3, i) && thisSymbol(c3, i){
            return true
        }
        
        //Diagonal Win
        if thisSymbol(a1,i) && thisSymbol(b2, i) && thisSymbol(c3, i){
            return true
        }
        if thisSymbol(a3,i) && thisSymbol(b2, i) && thisSymbol(c1, i){
            return true
        }
        
        return false
    }
    
    func thisSymbol(_ button: UIButton, _ image: UIImage) -> Bool{
        return button.image(for: .normal) == image
    }
    
    func disableBoard(){
        for button in board{
            button.isEnabled = false
        }
    }
    
    func isFull()->Bool
    
    {
        for button in board
        {
            if button.image(for: .normal) == nil
            {
                return false
            }
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

