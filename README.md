# Pillar Code Race

Server application which hosts the Code Race.

## Getting Started

See [Manual Instructions](https://github.com/PillarTechnology/CodeRace/blob/master/README.md "Manual Instructions") for detailed steps for setting up Code Race, and [Automated Instructions](https://github.com/PillarTechnology/CodeRaceClients/blob/master/README.md "Automated Instructions") for the easy path.


#### RACE SERVER LAPTOP SETUP
(Done by a Pillar person on RACE SERVER LAPTOP, once per RACE SERVER LAPTOP)

##### Setup:
1. Copy the content of [`CodeRaceServerSetup.scpt`](https://github.com/PillarTechnology/CodeRaceClients/Scripts/CodeRaceServerSetup.scpt "Code Race Server Setup") into an Script Editor (found under Utilities).
2. Compile the script (Hammer icon)
3. Run the script (Play icon)

###### The script will do the following: 
> 1. Install the following applications:
>    * Homebrew
>    * Git client
>    * Node.js and nom
> 
> 2. Create a 'coderace' directory to clone the git repository into.
> 3. Clone the repository.
> 4. Install all necessary npm packages.
> 5. Place shortcuts to all scripts, the CodeRace directory, and these instructions on the Desktop.
> 6. Find the server's IP address on the local network
>    * Write down this IP address to enter on client computers.
>    * If you forget or lose the IP, you will find a 'getIP' script on the Desktop.  This will show your IP.
> 
        
##### Run:
1. Run the 'StartCodeRaceServer' script application
   * ###### The script will do the following:
     > - Run the `./cleanup.sh` script to reset the code back to a blank state.
     > - Start the server.
     > - Prompt you as to how many players you would like to participate.
     > - This script comments out additional players so only the number of current players appears.
     > - Opens Safari to the race page (http://localhost:8081) as well as the signup page (http://localhost:8081/signup)
    
2. Signup users:
   * sign up person 1 (set the dropdown to 1)
   * sign up person 2 (set the dropdown to 2)
     ...
   * sign up person 5 (set the dropdown to 5)
3. Validate all users are signed up:
   * Display leaderboard by showing http://localhost:8081
    
4. Make sure all racer names are correct and all racers are at 0%.

Note: All the client Kata code has now been moved to https://github.com/PillarTechnology/CodeRaceClients
