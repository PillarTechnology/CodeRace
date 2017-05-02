# Pillar Code Race
### Manual Instructions
-----

#### DEFINITIONS:
- RACE SERVER LAPTOP: 
   - The one laptop which receives race results from 5 COMPETITOR RACE LAPTOPS and displays them on the LEADER BOARD
- LEADER BOARD: 
   - The webpage, running on the RACE SERVER LAPTOP, that shows 5 lanes, each with a player's name and a graphic icon (car or whatever) and indicates each contestant's progress left-to-right in the lane.
- COMPETITOR RACE LAPTOP: 
   - The 5 laptops that the competitors sit at and write their code.
- RACE: 
   - One iteration of a selected kata, five players, their code and the results on the leaderboard.



### RACE SERVER LAPTOP SETUP
###### (Done by a Pillar person on RACE SERVER LAPTOP, once per RACE SERVER LAPTOP)

##### Pre-installations:
1. Git client (Only required for cloning git)
   * https://git-scm.com/book/en/v2/Getting-Started-Installing-Git
2. Node.js and npm
   * https://docs.npmjs.com/getting-started/installing-node
        
##### Setup:
1. Clone CodeRace into local laptop under `coderace` directory.  (viz. `Macintosh HD/Users/user/coderace`), so final cloned directory will be `Macintosh HD/Users/user/coderace/CodeRace`:
   * type: `git clone https://github.com/PillarTechnology/CodeRace.git`
2. Determine IP of the laptop:
   * type: `cd coderace/CodeRace`
   * type: `ifconfig | grep 192`
   * You will see something like: `inet 192.168.11.247`
   * Write down the IP number starting with 192.
3. Install node packages
   * type: `npm install`

##### Run:
1. Run server: 
   * type: `npm start`
   * (You should see `Race app listening at port 8081...holla at me' on the terminal`)
2. Signup users:
   * Point browser to http://localhost:8081/signup
   * sign up person 1 (set the dropdown to 1)
   * sign up person 2 (set the dropdown to 2)...
   * sign up person 5 (set the dropdown to 5)
3. Validate all users are signed up:
   * Display leaderboard by showing http://localhost:8081

### COMPETITOR LAPTOP SETUP
##### (Done by a Pillar person five times, once per COMPETITOR RACE LAPTOP)

##### Pre-installations:
1. Homebrew
   * Enter the following in Terminal:
      * `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
2. Git client (Only required for cloning git)
   * Enter the following in Terminal:
      * `brew install git`
3. Node.js and NPM
   * Enter the following in Terminal:
      * `brew install node`
4. Java
   * Enter the following in Terminal:
      * `brew cask install java`
5. Gradle (For running races in Java)
   * Enter the following in Terminal:
      * `brew install gradle`
6. Visual Studio Code
   * Go to [VS Code Download](https://code.visualstudio.com/docs/?dv=osx "Visual Studio Code Download")
   * Open VS Code and press `Command-Shift-P` to open the command palette, and type `shell`, then select to `install 'code' command in PATH`.
      * It is recommended that you add the following extensions:
         * [Code Runner](https://marketplace.visualstudio.com/items?itemName=formulahendry.code-runner "Code Runner") - Allows players to run their code to check output.
         * [Java Language Support](https://marketplace.visualstudio.com/items?itemName=georgewfraser.vscode-javac "Java Language Support") - Adds intellisense for Java
    
##### Setup:
1. Clone CodeRaceClients into local laptop under 'coderace' directory.  (viz. 'Macintosh HD/Users/user/coderace"), so final cloned directory will be 'Macintosh HD/Users/user/coderace/CodeRaceClients":
   * type: `git clone https://github.com/PillarTechnology/CodeRaceClients.git`
   
2. Setup race for each racer:
   ###### For JAVA:
      // Replace RACER below with racer1, racer2, ... racer5, depending on which laptop<br/>
      // Replace SERVER_IP with the server ip from above (192.168… number)<br/>
      type: `./setupRace.sh romanNumeralsJava RACER SERVER_IP`
    
   ###### For Javascript:
      type: `cd RomanNumeralsJS`
      type: `npm install
      type: `cd ..`
      // Replace RACER below with racer1, racer2, ... racer5, depending on which laptop
      // Replace SERVER_IP with the server ip from above (192.168… number)
      type: `./setupRace.sh RomanNumeralsJS RACER SERVER_IP`
      It should read `Updated racer1 to 0` in the terminal.
<br/>
<br/>
3. Laptop is now setup for the race. 


### PLAYING IN THE RACE
##### (Done by contestant, on their assigned COMPETITOR RACE LAPTOP)

##### Steps:
1. Open a new terminal window.
2. Navigate to the appropriate race directory.
3. Type `code ` then the source file to be edited.
4. Edit the source file to make the tests pass:
   ##### For JAVA:
      type: `cd CodeRaceClients/romanNumeralsJava/src/main/java/com/coderace/`
      edit the file `RomanNumerals.java`

   ##### For JAVASCRIPT:
      type: `cd CodeRaceClients/RomanNumeralsJS/src`
      edit the file `RomanNumerals.js`
      <br/>
      <br/>
5. Save file changes -> tests will be run and server leader board will be updated

### RESET BACK CODE ON CLIENT LAPTOPS
##### (Done by a Pillar person on COMPETITOR RACE)
##### Steps:
   1. `./cleanup.sh`


### RESET ALL PLAYERS AND START NEW RACE
##### (Done by a Pillar person on RACE SERVER LAPTOP)
##### SERVER LAPTOP to Reset all players and start new race (Pillar person)
##### Steps:	
1. `ctrl-c` to stop the server
2. type: `./cleanup.sh`
3. type: `npm start`
4. Confirm that all lanes are 0% and have default driver names
5. sign up 5 new players
	
NOTE:
  These katas seem to work: `RomanNumeralsJS`, `FizzBuzzJS`, `romanNumeralsJava`, `fizzBuzzJava` 