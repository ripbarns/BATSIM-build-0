:top

	:start
		call nls.bat

		set temp=0
		for /f "tokens=*" %%a in (collide.txt) do (
			set block_!temp!=%%a
			set /a temp=!temp! + 1
		)

	:loop
		cls

		:refresh
			set /a w=!x! - 37
			set /a z=!x! + 1

			for /l %%a in (0,1,11) do (
				set /a u%%a=!y! - %%a - 1
				set /a d%%a=!y! + %%a + 1
			)

		:screen
			echo [3;2H###########################################################################################################
			echo [4;2H# !line_%u11%:~%w%,75! #                           #
			echo [5;2H# !line_%u10%:~%w%,75! #                           #
			echo [6;2H# !line_%u9%:~%w%,75! #                           #
			echo [7;2H# !line_%u8%:~%w%,75! #                           #
			echo [8;2H# !line_%u7%:~%w%,75! #                           #
			echo [9;2H# !line_%u6%:~%w%,75! #                           #
			echo [10;2H# !line_%u5%:~%w%,75! #                           #
			echo [11;2H# !line_%u4%:~%w%,75! #                           #
			echo [12;2H# !line_%u3%:~%w%,75! #                           #
			echo [13;2H# !line_%u2%:~%w%,75! #                           #
			echo [14;2H# !line_%u1%:~%w%,75! #                           #
			echo [15;2H# !line_%u0%:~%w%,75! #                           #
			echo [16;2H# !line_%y%:~%w%,37!!line_%y%:~%z%,37! #                           #
			echo [17;2H# !line_%d0%:~%w%,75! #                           #
			echo [18;2H# !line_%d1%:~%w%,75! #                           #
			echo [19;2H# !line_%d2%:~%w%,75! #                           #
			echo [20;2H# !line_%d3%:~%w%,75! #                           #
			echo [21;2H# !line_%d4%:~%w%,75! #                           #
			echo [22;2H# !line_%d5%:~%w%,75! #                           #
			echo [23;2H# !line_%d6%:~%w%,75! #                           #
			echo [24;2H# !line_%d7%:~%w%,75! #                           #
			echo [25;2H# !line_%d8%:~%w%,75! #                           #
			echo [26;2H# !line_%d9%:~%w%,75! #                           #
			echo [27;2H# !line_%d10%:~%w%,75! #############################
			echo [28;2H# !line_%d11%:~%w%,75! #                           #
			echo [29;2H###########################################################################################################

			echo [25;82HCoins [!coin!]
			echo [26;82H[M] Save
			echo [28;82H(!x!,!y!) [!line_%y%:~%x%,1!]

			choice /c wasdmx /t 1 /d x /n
				if !errorlevel! leq 4 goto :move
				if !errorlevel! equ 5 call nls.bat
				if !errorlevel! equ 6 goto :refresh

			goto :loop

		:move
			if !errorlevel! equ 1 set /a y=!y! - 1
			if !errorlevel! equ 2 set /a x=!x! - 1
			if !errorlevel! equ 3 set /a y=!y! + 1
			if !errorlevel! equ 4 set /a x=!x! + 1

			if "!line_%y%:~%x%,1!" neq " " call collide.bat

			goto :refresh