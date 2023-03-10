:top

	:start
		echo off
		setlocal enabledelayedexpansion

		set space=space space
		set build=0
		set color=dark

		cd "%~dp0"\bin
		mode 109,31
		title BATSIM build !build!
		color 0f

		goto :menu

	:debug
		cls
		echo [3;2HBATSIM build !build! - Debug

		set /p debug=Debug: 
			!debug!

		goto :debug

	:menu
		cls
		echo [3;2HBATSIM build !build!
		echo [5;2H1. Singleplayer
		echo [6;2H2. Information
		echo [7;2H3. Settings
		echo [9;2H5. Exit

		choice /c 12358 /n
			if !errorlevel! equ 1 goto :singleplayer
			if !errorlevel! equ 2 goto :info
			if !errorlevel! equ 3 goto :settings
			if !errorlevel! equ 4 exit
			if !errorlevel! equ 5 goto :debug

	:info
		cls
		echo [3;2HBATSIM build !build! - Information
		echo [5;2HCreated by @ripbarns on all major social media.
		echo [7;2HPress any key to continue.

		pause > nul
			goto :menu

	:settings
		cls
		echo [3;2HBATSIM build !build! - Settings
		echo [5;2H1. Toggle light and dark mode [!color!]
		echo [7;2H3. Back

		choice /c 13 /n
			if !errorlevel! equ 1 goto :settings_color
			if !errorlevel! equ 2 goto :menu

		:settings_color
			if !color! equ dark goto :settings_color_light
			if !color! equ light goto :settings_color_dark

			:settings_color_dark
				color 0f
				set color=dark
				goto :settings

			:settings_color_light
				color f0
				set color=light
				goto :settings

	:singleplayer
		cls
		echo [3;2HBATSIM build !build! - Singleplayer
		echo [5;2H1. Continue
		echo [6;2H2. New
		echo [8;2H4. Back

		choice /c 124 /n
			if !errorlevel! equ 1 goto :singleplayer_continue
			if !errorlevel! equ 2 goto :singleplayer_new
			if !errorlevel! equ 3 goto :menu

		:singleplayer_new
			if exist "save.txt" goto :singleplayer_overwrite
			if exist "world.txt" goto :singleplayer_overwrite
			set nls=new
			goto :engine

		:singleplayer_continue
			set nls=load
			goto :engine

		:singleplayer_overwrite
			cls
			echo [3;2HBATSIM build !build! - Singleplayer
			echo [5;2HThere is an existing save file, if you create a new world, your previous save data will be deleted.
			echo [7;2HWould you like to create a new world?
			echo [9;2H1. Yes
			echo [10;2H2. No

			choice /c 12 /n
				if !errorlevel! equ 1 (
					del "save.txt"
					del "world.txt"
					goto :singleplayer_new
				)
				if !errorlevel! equ 2 goto :singleplayer

	:engine
		call engine.bat