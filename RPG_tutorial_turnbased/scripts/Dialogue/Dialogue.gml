function create_dialog(_messages) {
    if (instance_exists(obj_dialog)) return;
        
    var _inst = instance_create_depth(0, 0, 0, obj_dialog);
    
    _inst.messages = _messages;
    _inst.current_message = 0;
}

char_colors = {
    "Congrats": c_yellow,
    "Cross": c_yellow,
    "Linq": c_aqua,
    "Wizard": c_lime
}

welcome_dialog = [
{
    name: "Cross",
    msg: "Welcome to the Pitt."
},
{
    name: "Linq",
    msg: "Uh, what is this place?"
},
{
    name: "Cross",
    msg: "This is the gateway to the land between life and death."
},
{
    name: "Linq",
    msg: "Huh, that's a lot to process..."
},
{
    name: "Cross",
    msg: "Well there's a frozen yogurt stand in there too."
}
]

wizard_dialog = [
{
    name: "Wizard",
    msg: "Hail and well met, adventurer."
},
{
    name: "Linq",
    msg: "Oh hi there. What can I do you for?"
},
{
    name: "Wizard",
    msg: "Your flippant attitude will not serve you well here. There is much danger ahead."
},
{
    name: "Linq",
    msg: "Sorry. Which way should I go?"
},
{
    name: "Wizard",
    msg: "The path is long and labyrinthine. The only way is through."
},
{
    name: "Linq",
    msg: "How will I survive against all of the enemies within?"
},
{
    name: "Wizard",
    msg: "Fear not, for the Pitt rewards bravery and skill in battle. You will grow stronger as you progress."
},
{
    name: "Linq",
    msg: "How will I find the exit?"
},
{
    name: "Wizard",
    msg: "Look for another wizard within. He will open the way for you."
}
]