:top

	:start
		set /a v=!x! + 1

		for /l %%a in (0,1,5) do (
			if "!line_%y%:~%x%,1!" equ "!block_%%a:~0,1!" goto :collide_!block_%%a:~2!
		)

		exit /b

		:collide_clear
			if !errorlevel! equ 1 set line_!y!=!line_%y%:~0,%x%!!space:~5,1!!line_%y%:~%z%!
			if !errorlevel! equ 2 set line_!y!=!line_%y%:~0,%x%!!space:~5,1!!line_%y%:~%v%!
			if !errorlevel! equ 3 set line_!y!=!line_%y%:~0,%x%!!space:~5,1!!line_%y%:~%z%!
			if !errorlevel! equ 4 set line_!y!=!line_%y%:~0,%x%!!space:~5,1!!line_%y%:~%v%!

			exit /b

		:collide_back
			if !errorlevel! equ 1 set /a y=!y! + 1
			if !errorlevel! equ 2 set /a x=!x! + 1
			if !errorlevel! equ 3 set /a y=!y! - 1
			if !errorlevel! equ 4 set /a x=!x! - 1

			exit /b

		:collide_wall
			goto :collide_back

		:collide_coin
			set /a coin=!coin! + 1

			goto :collide_clear
		:collide_flower
			set /a flower=!flower! + 1

			goto :collide_clear
		:collide_wood
			set /a wood=!wood! + 1

			goto :collide_clear
		:collide_stone
			set /a stone=!stone! + 1

			goto :collide_clear
		:collide_water
			goto :collide_back