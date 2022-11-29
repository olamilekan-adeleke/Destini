import UIKit

class ViewController: UIViewController {
    @IBOutlet var storyLabel: UILabel!
    @IBOutlet var choice1Button: UIButton!
    @IBOutlet var choice2Button: UIButton!

    var storyBrain = StoryBrain()

    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
    }

    @IBAction func onButtonPress(_ sender: UIButton) {
        storyBrain.checkAnswer(sender.currentTitle!)
        
        updateUI()
    }
    
    func updateUI(){
        let story: Story = storyBrain.getStory()
        
        storyLabel.text = story.title
        choice1Button.setTitle(story.choice1, for:  UIControl.State.normal)
        choice2Button.setTitle(story.choice2, for: UIControl.State.normal)
    }
}
