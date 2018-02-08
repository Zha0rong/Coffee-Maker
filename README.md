# Coffee-Maker: Bring your anxiety during the Graduate program application season to the next level.
![alt text](http://patentimages.storage.googleapis.com/US7543526B1/US07543526-20090609-D00005.png)
# Introduction.
During the Graduate program application season, what is the most annoying and anxious thing?
Grinding the GRE? Not really, as long as you work hard on it should not be a problem.
Worrying about GPA? You should not be worry about that, damage has been done :P.
Recommendation letters? Resume? Nah, you can handle them, not a big deal.
The most annoying thing during the application season, is **_the waiting game_** (an evil face should be presented here).
All has been done and everything has benn submitted, which means that everything is out of your hand now: you are on your own, being helpless in your apartment, waiting for a group of people who can only know you through several papers to decide whether you are admitted to the program or you are **_just not good enough_** (another evil face here).
This kind of helplessness is created by the lack of information: the people in admission board do not reply your email, and will not tell you anything about your application until they make up their mind. To relief the feeling of helplessness, the first thing people do based on their instinct is to search for more information: people start to google about how admission board work, when will the decision be sent and how many people are applying to the same program. This is where you find this:
**_The GradCafe!_**


![alt text](https://thegradcafe.com/images/logo.png)


Or to be more specific:

**_The Result section in GradCafe_**


![alt text](http://user-image.logdown.io/user/5474/blog/5498/post/255721/v7mdmiB2Slm6ChEmzMGD_blog-gradcafe.png)



So now you are having the almost first hand information of how are people applying to the same program as you do are doing during the waiting: some of them may have been interviewed, accepted or rejected. These information may relieve your anxiety, but most of the time, they just brought it to the next level.
As you may have noticed, the GradCafe did a great job collecting these crown jewel data. However, they did not really organize and analyze it to provide information which escalate your blood pressure, cortisol level and daily calories intake; when do most people got the response from the board? What is the rate of acceptance each year for this program? etc etc.
So here comes my project, behold: the **_coffee maker!_** (a evil face here and also some evil laugh).
This project allows you to input the Universities and program you are applying to, then scrap the data of these information from the GradCafe, in the end, a series of analysis will give you information such as when is the earliest response from this school, when is the latest response, when do most people get response and what percentage of applicants have been accepted.

# Requirment
Python 3.6.x 

Python package: [BeautifulSoup](https://www.crummy.com/software/BeautifulSoup/)

Python package: [urllib](https://docs.python.org/3/library/urllib.html)

R

# Instruction
Use Python's [IDLE](https://docs.python.org/3.6/library/idle.html) to open the file Main.

Enter the University name, here i enter 'UIUC' (Can be blank).

![alt text](https://github.com/Zha0rong/Coffee-Maker/blob/master/Media/EnterUniversity.png?raw=true)

Enter the Program name 'Computer Science'(Can be blank).

![alt text](https://github.com/Zha0rong/Coffee-Maker/blob/master/Media/EnterProgram.png?raw=true)

**_they cannot be both blank, enter something_**

Then a notice will pop up, confirming your entries (the spaces in your entries are replaced by +).

Enter 'y' if you want to proceed. If you enter 'n' the program will go back and ask you to enter the University name.

After the process is finished, the program will ask if you want to rename the data file, enter 'y' then you have a chance to rename the file, in this case, i name it as 'UIUC_CS' You do not need to add the suffix '.csv', it has been taken care of by the program.

![alt text](https://github.com/Zha0rong/Coffee-Maker/blob/master/Media/RenameFile.png?raw=true)

Now you will have your data, which looks like this:

![alt text](https://github.com/Zha0rong/Coffee-Maker/blob/master/Media/Example.png?raw=true)

The example file has been uploaded and can be accessed [here](https://github.com/Zha0rong/Coffee-Maker/blob/master/Example/UIUC_CS.csv)
