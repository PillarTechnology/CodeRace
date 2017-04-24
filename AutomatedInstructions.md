# Pillar Code Race
### Automated Instructions
-----

#### DEFINITIONS:
   * RACE SERVER LAPTOP: 
      - The one laptop which receives race results from 5 COMPETITOR RACE LAPTOPS and displays them on the LEADER BOARD
   - LEADER BOARD: 
      - The webpage, running on the RACE SERVER LAPTOP, that shows 5 lanes, each with a player's name and a graphic icon (car or whatever) and indicates each contestant's progress left-to-right in the lane.
   - COMPETITOR RACE LAPTOP: 
      - The 5 laptops that the competitors sit at and write their code.
   - RACE: 
      - One iteration of a selected kata, five players, their code and the results on the leaderboard.



### RACE SERVER LAPTOP SETUP
###### (Done by a Pillar person on RACE SERVER LAPTOP, once per RACE SERVER LAPTOP)

#### Setup:
1. Copy the content of `CodeRaceServerSetup.scpt` into an Script Editor (found under Utilities):
2. Compile the script (Hammer icon)
3. Run the script (Play icon)
   ##### The script will do the following: 
      >1. Install the following applications:
      >    * Homebrew
      >    * Git client
      >    * Node.js and nom
      >2. Create a `coderace` directory to clone the git repository into.
      >3. Clone the repository.
      >4. Install all necessary npm packages.
      >5. Place shortcuts to all scripts, the CodeRace directory, and these instructions on the Desktop.
      >6. Find the server's IP address on the local network
      >    * Write down this IP address to enter on client computers.
      >    * If you forget or lose the IP, you will find a `getIP` script on the Desktop.  This will show your IP.
        
#### Run:
1. Run the `StartCodeRaceServer` script
   ##### The script will do the following:
      >1. Run the `./cleanup.sh` script to reset the code back to a blank state.
      >2. Start the server.
      >3. Prompt you as to how many players you would like to participate.
      >4. This script comments out additional players so only the number of current players appears.
      >5. Open Safari to the race page (http://localhost:8081) as well as the signup page (http://localhost:8081/signup)
    
 2. Signup users:
    * sign up person 1 (set the dropdown to 1)
    * sign up person 2 (set the dropdown to 2)
      ...
    * sign up person 5 (set the dropdown to 5)
 3. Validate all users are signed up:
    * Display leaderboard by showing http://localhost:8081
    
 4. Make sure all racer names are correct and all racers are at 0%.

### COMPETITOR LAPTOP SETUP
##### (Done by a Pillar person five times, once per COMPETITOR RACE LAPTOP)

#### Setup:
1. Copy the content of `CodeRaceClientSetup.scpt` into an Script Editor (found under Utilities):
2. Compile the script (Hammer icon)
3. Run the script (Play icon)
   ##### The script will do the following: 
   >1. Install the following applications:
   >    * Homebrew
   >    * Git client
   >    * Node.js and NPM
   >    * Java
   >    * Gradle
   >2. Prompt you to enter the IP address of the server computer (see instruction in Server computer setup)
   >    * Enter the IP address which will be stored in a file called `SERVER_IP.txt` under the `Documents` folder.  This IP    will be referenced by future scripts.
   >    * If you enter the IP wrong or need to change the IP, run the script `SetServerIPAddress` on the Desktop or edit the `SERVER_IP.txt` file under `Documents`.
   >3. Prompt you to register the client as a particular racer.
   >    * The racer id is stored in the file `RACER_ID.txt` under the `Documents` folder.  This id will be referenced by future scripts.
   >    * Make sure each client is registered as a unique racer.
   >    * If the racer id needs to be changed run the `registerRacer` script or edit the `RACER_ID.txt` file.
   >4. Create a `race` directory for Karma logs.
   >5. Create a `coderace` direcotry, which the CodeRaceClients repo will be cloned into.
   >6. Clone the git repository https://github.com/PillarTechnology/CodeRaceClients.git
   >7. Download Visual Studio Code
   >8. Place shortcuts to all scripts, the CodeRace directory, and these instructions on the `Desktop`.

4. Install Visual Studio Code

#### PLAYING IN THE RACE
##### (Done by contestant, on their assigned COMPETITOR RACE LAPTOP)
  ##### Steps:
1. Run the appropriate Kata Script on the `Desktop`.
   ##### The script will do the following:
      > 1. Install all necessary npm packages.
      > 2. Launch the server based on the previously entered IP address and racer id.
      > 3. Launch Visual Studio Code and the appropriate kata.
      >
2. Edit the source file to make the tests pass:
3. Save file changes -> tests will be run and server leader board will be updated

#### END OF RACE
##### (Done by a Pillar person on COMPETITOR RACE)
##### Steps:
1. Run the `KillClientServer` script on the Desktop of each client computer.
   ##### The script will do the following:
      > 1. Stop the current Node/Gradle session.
      > 2. Run the `./cleanup.sh` script to reset the code.
      > 3. Close Visual Studio Code
2. Run the `KillCodeRaceServer` script on the Desktop of the server computer.
##### The script will do the following:
   * Stop the current Node session.
   * Close Safari

#### NOTE
* In case that any errors occur with a script, refer to the [Manual Instructions](https://github.com/PillarTechnology/CodeRace/blob/master/README.md "Manual Instructions") located in the CodeRace or CodeRaceClients directory.
* Scripts can also be found in the `Scripts` sub-directory in the repo and changed if needed.
* Infinite loops may cause the client/server to hang.  Fix this by running the `KillClientServer` script on the affected computer and re-start the kata. Other players should not be affected.