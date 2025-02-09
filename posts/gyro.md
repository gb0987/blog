---
title: "I'm Using Tilt Controls! And You Should Too"
abstract: "Doing normal things in needlessly silly ways."
toc: true
date: 2025-02-08T01:32:56Z
---

# What is Gyro Control and Why Should I Care

"Gyro control" promises [mouse-like precision without aim assist](https://www.youtube.com/watch?v=krQ_ggZcN1Q). This is great for me, because I've found that I never want to play games at my desk with the mouse and keyboard when I've already been sitting at my desk on mouse and keyboard all day. If I'm going to play a game I want to relax, playing on the projector and a controller. When I buy games without controller support, I basically never play them. I assumed this meant I'd have to write off a lot of games, but apparently you [can even play Team Fortress 2](https://youtu.be/PJIqEX93vL8?si=sOfHWUPpjs1eLp4c) with gyro controls just fine.

Even if you like mouse and keyboard, this gives you another option. And it's fun, it's intuitive, people already jerk their controller around while playing games, why not make that an input?

The best part is, if you own a modern controller, you can (probably) try it without buying anything else.

# How Do I Use Gyro Control?

Using Gyro controls requires two things. First, any controller with a gyro sensor. Switch Pro controllers, Dualshock 4s, and DualSense controllers all have gyro, many third party controllers like 8BitDo Pro models do too. Notably, Xbox controllers do not.

Next, you need *some kind* of gyro controller support. Modern consoles (not the Xbox) have pretty good gyro support. Counterstrike 2, Fortnite, and Apex Legends, all support gyro. If you play primarily on a console, the rest of the post won't be relevant to you, just go try it out, you don't have to read the rest of this post. 

Unfortunately, native gyro support mostly sucks. Games will support one modern controller, like the DualSense, and completely break with another, like the Switch Pro. Even when it doesn't suck, the implementation of gyro support isn't standardized. Availability of customization options is extremely inconsistent. Some games only support one type of camera movement, some don't have flick stick (we'll get to this later). None of this matters because on Steam **if the game supports mouse and keyboard, it supports Gyro.** Outside of Steam you can use [JoyShockMapper](https://github.com/Electronicks/JoyShockMapper) (free, more work) or [reWASD](https://www.rewasd.com/releases/release-5.3.0), which is a subscription service, but supposedly the most convenient.

# Hybrid Default Gamepad + Gyro 

Before I talk about this I should mention that there is a hybrid approach where the game still behaves like you have a gamepad oustide of letting you use gyro aim. At time of writing, this doesn't work well for me. I get weird little bugs, gyro doesn't work, the game gets very confused about whether you are using mouse and keyboard or gamepad, some menus won't open. This is especially bad if the gamepad implementation was a bit half baked, which it often is in older games. So I just map everything in the controller to the equivalent default keyboard mapping for the game. The downside of just emulating mouse and keyboard is you lose button glyphs, so you'll see "hit E" instead of "press A". I don't care about this, some people do.

I hear some people are good at making hybrid setups work, so I think it might be worth trying the couple most popular Steam Community layouts. I may update this later, but I haven't tried a hybrid layout yet that "just worked". Maybe this will change in the future! But for now, I want to talk about my favorite approach.

# Gyro Gamepad as Mouse + Keyboard

In Helldivers 2, without Steam Input, gyro did not work. With Steam Input, the native support fought steam input, and weird buggy behavior was common. Mostly this meant staring into the sun while fumbling with configs and being eaten by bugs / chainsawed / lasered. So I just mapped everything on the controller to Mouse and Keyboard and it worked perfectly. By convincing the game you're just using the default mouse and keyboard, you get the best supported control scheme and you can reuse your tuned personal gyro settings across games without having to petition the devs for better support and feature parity with whatever your favorite implementation of gyro is. Reddit is full of people begging some dev for some gyro feature, just lie to the computer instead. Mouse and keyboard provides us with a perfect interface already, why bother with native support?

# I Don't Have a Controller, Which One Should I Buy?

I wouldn't buy a third party controller unless you want to deal with *even more* config finagling than you normally have to do with gyro. You might not get recommended layouts for Steam, your OS might not recognize it (or if you're on Linux, you might have to deal with 💀 linux driver issues 💀).

If you're crazy you could buy spend $200 on a DualSense Edge. Outside of that, your options are the DualSense, the DualShock 4, and the Switch Pro.

Reddit generally likes the DualSense. [Youtuber "Nerrell" found that the Switch Pro was a little more accurate](https://youtu.be/CenJLOTGxLc?si=jUzV9cW4qZuQj_7o&t=946), I've seen a couple other people test them and find that the Switch Pro is a *little* better. Also, I own a Switch. So I bought the Switch Pro, and let me tell you, it does not have enough buttons. The DualSense has the whole pad there to map gesture controls, and I get the impression it is better supported on some games. Maybe if I bought that instead I wouldn't have experience any weird issues and I wouldn't even have bothered writing this at all! But you can just create mode switches in Steam Input (or layers? or I think they made a third thing?) in order to access more buttons (provided you're holding one), and it's good enough. Steam also lets you do things like map clicking once to one key, twice to another, and click and hold to another, which is pretty useful for making one button deal with, for example, my bindings for Helldivers 2: dive for cover (single tap), go prone (double tap), and crouch (hold).

Anyway, I bought the controller from Pink Gorilla, a small local shop that I'm always surprised is still chugging along, so I don't want to return it.

I tried to get an old DualShock 4 from a friend to connect to the computer, but it would randomly disconnect, your mileage may vary there.

If you want a little more convenience and some more features, buy a DualSense. If you want marginally more accuracy, get a Switch Pro Controller. If you already own a Switch (which is more likely than owning a PS5 if you consider their sales figures, [etc](https://www.youtube.com/watch?v=UtG11pmBe3U)), you might as well get the controller compatible with it.

# Configuration

You could just settle for native support or Steam Community suggested layouts (if any are present for your game), but you'll probably have to configure some stuff yourself. There are a [lot](https://www.reddit.com/r/GyroGaming/comments/198wq0y/new_to_gyro_gaming_start_here_gyro_beginners_guide/) of [guides](https://www.youtube.com/watch?v=D0uSfda_-Rc) out there that go into great detail, so I'm going to trust those to be better up-to-date comprehensive sources. Here I'm just going to hit a couple very common changes you might make, or situations you might find yourself in.

## Flick Stick

This is probably the most important setting. Once you've freed up your right stick from looking around, you can use it to instead allow you to make very large movements (like fully turning around) instantly. This is very useful, as those huge movements are kind of annoying otherwise. 

## Gyro Ratcheting

Ratcheting refers to the ability to disable the gyro briefly so you can move the controller back to a neutral position without moving the game's camera. I often map this to my mode switch button.

For some reason, in Steam Input you don't set a gyro disable button,you set a gyro enable button (even if gyro is always on) and set the behavior of the button to... disabling gyro? [Credit](https://www.reddit.com/r/GyroGaming/comments/ug54tk/comment/i6xgli4/?utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1&utm_content=share_button)

## Sensitivity

You're probably going to start with the sensitivity too low while you're getting used to it. This is fine. Eventually you'll probably get tired of making big movements and turn it down.

## 3d to 2d

For some reason Steam Input default to just using "Yaw", reading input from how the controller is rotated or tilted. You probably also want to use "Roll", which reads how the controller is "twisted" or "tipped" as well. If it makes sense to you that turning the controller so the top faces left when you want to turn left, use "Roll" as well. Just try them out, reading it is very abstract, but when you actually try the different options you will immediately understand how they work, and if you're anything like me, one setting will seem obviously right and the rest obviously wrong. But if you want to read about it anyway, [here you go](http://gyrowiki.jibbsmart.com/blog:player-space-gyro-and-alternatives-explained).

# Tangent About TF2

Remember [that TF2 video](https://www.youtube.com/watch?v=PJIqEX93vL8) I mentioned? That guy's controller config is available, and extremely popular! But it didn't work for me immediately. TF2 has really weird gamepad support as covered in that video, this caused me issues. The inventory would open and then instantly close as if it was getting two inputs. Long story short, disabling gamepad in settings seemed to do nothing, console commands either did nothing or broke it, what worked was finding the Xbox 360 controller config text file and commenting everything out (deleting the contents would also work). 

For anyone else running into this, the file lives at
`SteamLibrary\steamapps\common/TeamFortress2\tf\cfg\360controller.cfg`

So, if you want to play old, exceptionally buggy games with half baked features in a way that they were never meant to be played, you may have to do some of that sort of thing.

# In Conclusion,

If this guide convinced you to try Gyro controls, send me a message on Github telling me how many hours you spent futzing with configurations and I'll chuckle knowingly while shaking my head.