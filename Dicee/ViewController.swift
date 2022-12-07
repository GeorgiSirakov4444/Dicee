import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceeImageOne: UIImageView!
    @IBOutlet weak var diceeImageTwo: UIImageView!
    
    @IBOutlet weak var score: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // who.what = value
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        let imageArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        let leftDiceImage = Int.random(in: 0...5)
        let rightDiceImage = Int.random(in: 0...5)
        
        diceeImageOne.image = imageArray[leftDiceImage]
        diceeImageTwo.image = imageArray[rightDiceImage]
        
        score.text = ("Score: \(leftDiceImage + rightDiceImage + 2)")
    }
}
