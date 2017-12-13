# OOP_Assignment_I
Assignment repository for C16391553 OOP Assignment I

My project for OOP Assignment I is a futuristic photon type reactor that can generate huge amounts of power while requiring relatively little space.
This make it a very suitable installation for a space craft! Power on the reactor by using the UP key. This will cause the inhibition lazers to fire,
creating the energy core. Be careful of the temperature! Energy cores such as this one tend to become unstable when reaching high temperatures (50 degrees
celcius, for this demonstration!) so make sure to keep the coolant flowing to avoid catastrophie. If the core reaches critical temperatures, it will begin
to emit deadley, unpredictable leakage in the form of small photons.

Instructions:
- Click on the light switch to turn lights on and off
- Press UP to initiate lazer fire sequence, starting the reaction
- Press LEFT to turn coolant on and off
- Don't let the core go above fifty degrees of it will start to become unstable!

How I coded and my favourite features:
Firstly, I felt using plenty of classes was the best way to approach to deal with different aspects of the project, like the building and core itself. I used some
inheritance etc. I first had to deal with the reactor itself. Simple, draw the top and bottom using rectangles and a triangle! Next, the core itself. It was neccessary 
to use the draw() function to draw the ellipse ie the object as this was the only way I could do the animation. I wanted to put a lot of effort into the reactor high 
temperature sequence so I spent a lot of time here. I researched and found that PVectors were handy and combining this with acceleration and velocity learned in class,
it makes for an interesting effect. Each object ie photon is added to an array list. As the object is created, it is assigned random values for it's movement, like between
minus three and plus three for velocity. When this was finished, I moved on to the light switch. Just change the background colour! After, the temperature. I needed a way
for the program to recognise that the rector was running, so I used a boolean variable. When the CoreActive variable is true, the temperature rises. Then I needed the coolant!
Like the CoreActive, I needed another variable: CoolantOn. When this is true, the temperature will decrease slower than it rose. My favourite feature of the program is the 
hight temperature effect (Although I also find the simplicity of the temperature versus coolant feature really interesting and think it could be expanded).

Link to YouTube:

[![YouTube](https://img.youtube.com/vi/NZ195crZKHQ/0.jpg)](https://www.youtube.com/watch?v=NZ195crZKHQ)