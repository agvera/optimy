Pre-requisite: You need the following installed in your system
1. Python3 (download here: https://www.python.org/download/releases/3.0/)
2. Robot Framework, Selenium2Library, WebdriverManager
3. Git

To install robot framework: 
1. Open your terminal
2. Input "pip3 install robotframework"

To install Selenium2Library:
1. Open your terminal
2. Input "pip3 install robotframework-selenium2library"

To install Browser Manager:
1. In your terminal
2. Input: "pip3 install webdrivermanager"
3. Install the specific browser that you need by typing: "webdrivermanager firefox chrome --linkpath /usr/local/bin"

To install git:
1. Go to https://git-scm.com/downloads
2. Click the download button of the latest version
3. After downloading, install git
4. To verify if you have installed git, type "git --version" and the terminal should display the git version installed in your system

To clone this repository
1. In your terminal, type: https://github.com/agvera/optimy.git
2. Wait for the download to finish

How to execute:
1. Open your terminal
2. Change the directory to the location where you saved the repo, by typing "cd directory_path"
3. To execute the "Login NegativeThen type "robot src/suite/VerifyAllValidationsForLoginTest.robot"

How to change the browser:
1. Open config.robot file (located at common folder)
2. Change the value of constant ${BROWSER} to the name of the browser you want to execute the script
   - chrome (for Google Chrome), firefox (for Mozilla Firefox)
