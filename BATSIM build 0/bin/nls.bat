:top

	:start
		goto :!nls!

	:new
		cls
		echo [3;2HCreating world...
		set x=50
		set y=50

		set coin=0
		set flower=0
		set wood=0
		set stone=0

		set nls=save

		call generator.bat

		goto :load_world

	:load

		:load_check
			if not exist "save.txt" goto :load_fail
			if not exist "world.txt" goto :load_fail

			goto :load_save

		:load_fail
			cls
			echo [3;2HThere was an error loading your world.
			echo [5;2HPlease make a new world.
			echo [7;2HPress any key to continue.

			pause > nul
				if exist "save.txt" del "save.txt"
				if exist "world.txt" del "world.txt"

				cd..
				start BATSIM.bat
				exit

		:load_save
			cls
			echo [3;2HLoading world...

			< save.txt (
				set /p x=
				set /p y=
				set /p coin=0
				set /p flower=0
				set /p wood=0
				set /p stone=0
			)

		:load_world
			set temp=0
			for /f "tokens=*" %%a in (world.txt) do (
				set line_!temp!=%%a
				set /a temp=!temp! + 1
			)

			set nls=save

			exit /b

	:save

		:save_check
			if exist "save.txt" goto :save_overwrite
			if exist "world.txt" goto :save_overwrite

			goto :save_save

		:save_overwrite
			cls
			echo [3;2HThere is an existing save file.
			echo [5;2HWould you like to overwrite?
			echo [7;2H1. Yes
			echo [8;2H2. No

			choice /c 12 /n
				if !errorlevel! equ 1 goto :save_save
				if !errorlevel! equ 2 exit /b

		:save_save
			cls
			echo [3;2HSaving world...

			(
				echo !x!
				echo !y!
				echo !coin!
				echo !flower!
				echo !wood!
				echo !stone!
			) > save.txt

		:save_world
			if exist "world.txt" del "world.txt"

			for /l %%a in (0,1,100) do (
				echo !line_%%a!>>world.txt
			)

			exit /b