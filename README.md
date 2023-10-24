# **LUMA E-COMMERCE WEBSITE**
 *Created by Rene De Leon R.*



## **SYSTEM REQUIREMENTS:**

To set up your environment you'll need the following configurations. You first need to install pycharm.

This setup runs with Robot Framework and Selenium Library with Chrome webdriver. The combination of setup currently used by me is:
- Python v3.9
- Pycharm IDE (latest)
- Chrome Driver v118.0.5993.88

For the reader's reference, I'm leaving some useful links to help the installation process:
1. Python: [Download latest version here](https://www.python.org/downloads/)
2. Pycharm Community Edition: [Download latest version here](https://www.jetbrains.com/pycharm/download/)
3. Chrome Driver: [Download latest version here](https://googlechromelabs.github.io/chrome-for-testing/)
4. Git (*Only for Windows*): [Download latest version here](https://git-scm.com/downloads)

## **LINKS, REFERENCES & MANUAL TESTING**
1. The board with all user stories can be found here: [Go to Trello's Board for this project](https://trello.com/b/jOqTPdPm/rene-de-leons-qa-challenge)
2. The complete test suite can be found here: [Test Suite in Google Sheets](https://docs.google.com/spreadsheets/d/115zRcR73_6-lYKnc-2P7PYC2c-QHvUgwGR-saxP5b48/edit#gid=61291363)

## **SET UP - SUMMARY VERSION**

(1.) You can use Pycharm as IDE.

(2.) You can clone the Luma Automation QA Challenge repo directly from Github which is found [HERE](https://github.com/Rene152005/Luma_Automation_QAChallenge).

(3.) After the repo is installed, please install all the Python packages and tools with one command!
```
$ pip install -r requirements.txt
```
*Note:* This requirements.txt file is left on the Repo's root folder as the most efficient way to install all necessary components for this execution.

(4.) Just in case if you get a pip message
```
$ python -m pip install --upgrade pip
```
(6.) Run your first test case or test suite!

In order to do this, first we need to know the arguments/parameters that we can use:
1. From the bottom section of Pycharm, select "Terminal".
2. Start browsing your way from the root folder until you reach the route (CD command and DIR commands are your friend):
```
Test_Suites/Orders_And_Returns/Orders_And_Returns.robot
```
3. To execute a specific test case by title, please use the following command:
```
robot -t "Guest user goes to Order and Returns" .\Orders_And_Returns.robot
```
4. To execute a specific test case by Tag, please use the following command:
```
robot --i ATC001 .\Orders_And_Returns.robot
```
5. Both commands from step 3 and step 4 do the same thing. With this, your browser window will open and the automation will begin.

6. To run all test cases at once, use this command:
```
 robot .\Orders_And_Returns.robot
```
# Enjoy!