# Infinite Void - Game File

# file requirements
require "./gfx.rb"
require "./repo.rb"
require "./text.rb"

GFX.titlescreen		# => title screen
start = gets		# => user start

# welcome/commander name check
GFX.clear_screen
GFX.welcome_cmdr	# => welcome graphic
Text.introduction	# => introductiom text
Repo.cmdr_name		# => assign commander name

start0 = gets		# input check place holder (assign cmdr name)

# preflight launchpad check
GFX.clear_screen
GFX.launchpad		# => launchpad graphics
Text.prelaunch		# => prelaunch text
Repo.prelaunch		# => prelaunch logic
start1 = gets    	# =>  input check place holder (preflight check)

# successful launch
GFX.clear_screen
GFX.launcher		# =>  launcher animation

# trajectory check
GFX.clear_screen
GFX.trajectory		# => trajectory selection graphics
Text.launched		# => trajectroy text
Repo.trajectory 	# => trajectory check		
start2 = gets		# =>  input check place holder (calculate trajectory)

# trouble in space check
GFX.clear_screen
GFX.trouble			# => trouble graphic (black screen)
Text.trouble		# => trouble text
Repo.trouble		# => trouble logic
						
GFX.game_over		# => game over!
Repo.final_score	# => final score display

#end file