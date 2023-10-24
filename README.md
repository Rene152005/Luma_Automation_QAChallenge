# **LUMA E-COMMERCE WEBSITE AUTOMATION**
 *Created by Rene De Leon R.*



## **SYSTEM REQUIREMENTS**

To set up your environment you'll need the following configurations. You first need to install PyCharm IDE, I've found this to be the most user friendly IDE to run with Robot Framework.

This setup runs with Robot Framework and Selenium Library with Chrome webdriver. The combination of setup I'm currently using is as follows:
- Python v3.9
- Pycharm IDE 2023.2.3 (latest)
- Chrome Driver v118.0.5993.88

For the reader's reference, I'm leaving some useful links to help the installation process:
* Python: [Download latest version here](https://www.python.org/downloads/)
* Pycharm Community Edition: [Download latest version here](https://www.jetbrains.com/pycharm/download/)
* Chrome Driver: [Download latest version here](https://googlechromelabs.github.io/chrome-for-testing/)
* Git: [Download latest version here](https://git-scm.com/downloads)
* Luma Automation QA Challenge repo Github [HERE](https://github.com/Rene152005/Luma_Automation_QAChallenge).

## **LINKS, REFERENCES & MANUAL TESTING**
1. The board with all user stories can be found here: [Go to Trello's Board for this project](https://trello.com/b/jOqTPdPm/rene-de-leons-qa-challenge)
2. The complete test suite can be found here: [Test Suite in Google Sheets](https://docs.google.com/spreadsheets/d/115zRcR73_6-lYKnc-2P7PYC2c-QHvUgwGR-saxP5b48/edit#gid=61291363)

## **SET UP - SUMMARIZED VERSION**
(1.) You can use Pycharm as IDE, I've seen other QA engineers successfully use VS Code too, but I don't recommend it. For this to correctly run, you must download and install python.

(2.) You can clone the Luma Automation QA Challenge repo directly from Github via SSH or download of ZIP files.

(3.) Run the Python installer as Administrator.
* Once you see the "Advanced Options" window, check on the option "Install for all users"
* Select a custom location where to install Python (i.e. C:\Python\Python39)

(4.) After the installation of python is completed, you can review the installation with this command from the command prompt:
```
python --version
```
![](C:\Users\rened\PycharmProjects\Luma_Automation_QAChallenge\Resources\Files\pythonVersion.png)

(5.) If Step #4 is not working, please ensure your Environment Variables are properly setup. As a possible solution, please follow these steps:
* Position your mouse over "This PC" and right-click to select the option "Properties".

![](C:\Users\rened\PycharmProjects\Luma_Automation_QAChallenge\Resources\Files\MyPC.png)

* Click on "Advanced system settings"
* Select the tab "Advanced" and click the "Environment Variables…" button
* Select the option "Path" from System variables and click on "Edit" button.

![](C:\Users\rened\PycharmProjects\Luma_Automation_QAChallenge\Resources\Files\Environment_Variables.png)

* It's important to note that the path must be added to both places "User Variables for <user>" on the top section and also the "System variables" bottom section of the environment variables.
* On the bottom path, its also recommendable to add "C:\Python39\Scripts" which should be the address to the \Scripts folder directly.
* Reboot the system

(6.) Install the repo from Github either from zip files or SSH. After the repo is installed, please install all the Python packages and tools with one command by running this:
```
$ pip install -r requirements.txt
```
*Note:* This requirements.txt file is left on the Repo's root folder as the most efficient way to install all necessary components for this execution.

(7.) Just in case if you get a pip message, please run this command:
```
$ python -m pip install --upgrade pip
```
(8.) Run your first test case or test suite! I like to drop my unzipped chrome driver on the same folder where I installed python 3.9 (root folder). Without the chrome driver, the execution will not work.

In order to do this, first we need to know the arguments/parameters that we can use:
* From the bottom section of Pycharm, select "Terminal". 
* Start browsing your way from the root folder until you reach the route ("CD" and "DIR" commands are your friends) until you reach this location:
```
Test_Suites/Orders_And_Returns/Orders_And_Returns.robot
```
* To execute a specific test case by title, please use the following command:
```
robot -t "Guest user goes to Order and Returns" .\Orders_And_Returns.robot
```
* To execute a specific test case by Tag, please use the following command:
```
robot --i ATC001 .\Orders_And_Returns.robot
```
* To run all test cases at once, use this command:
```
 robot .\Orders_And_Returns.robot
```
# Enjoy!