# Coffee-Maker: Bring your anxiety during the Graduate program application season to the next level.
![alt text](http://patentimages.storage.googleapis.com/US7543526B1/US07543526-20090609-D00005.png)
# Introduction.
During the Graduate program application season, the most annoying period of time is **when you have submitted the application** (an evil face should be presented here).

The is because whatever happens next cannot be solved by hard working and efforts. People cannot directly contact the admission board to monitor the reviewing processes of their applications, they do not know how the professors in the admission board view and think of their resumes and personal statements. The natural reactions of humans now is to acquire more information from people who are doing the same thing, in this case, applying to the same program or university.

This is where you find this:
**_The GradCafe_**


![alt text](https://thegradcafe.com/images/logo.png)


Or to be more specific:

**_The Result section in GradCafe_**


![alt text](http://user-image.logdown.io/user/5474/blog/5498/post/255721/v7mdmiB2Slm6ChEmzMGD_blog-gradcafe.png)



Now you can know the situations of your commrades: they may have been interviewed, accepted or rejected. These information may relieve your anxiety; however, most of the time, they just make you more anxious and depressed, because your peers have got responses, **_but you did not_**.
As you may have noticed, the GradCafe did a great job collecting these crown jewel data. However, they did not really organize and analyze it to provide information which may really put your mind at ease: when do most people got the response from the board? When is the earliest response and when is the latest?
So here comes my project, behold: the **_coffee maker!_**.
This project allows you to input the Universities and program you are applying to, then scrap the data of these information from the GradCafe, in the end, a series of analysis will give you information such as when is the earliest response from this school, when is the latest response, when do most people get response.

# Requirment
Python 3.6.x 

Python package: [BeautifulSoup](https://www.crummy.com/software/BeautifulSoup/)

Python package: [urllib](https://docs.python.org/3/library/urllib.html)

R 3.6.4

R package: [tidyr](http://tidyr.tidyverse.org/)

R package: [ggplot2](http://ggplot2.org/)

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

Then you should execute the provided Rscript 'Analyzer_Graph.R' (i will add a function to 'main' which ask you if you want to execute Rscript and run it automatically). A graph called 'FrequencyAnalysis' will be exported to the script directory.

![alt text](https://github.com/Zha0rong/Coffee-Maker/blob/master/Media/FrequencyAnalysis.png?raw=true)

More analytic graphs will be added and updated!

# Update

## This is a section for update.


# Thank you! I hope everyone get offers from their dream schools!
