:top

	:start
		setlocal enabledelayedexpansion

	:world_nature
		for /l %%a in (0,1,74) do (
			for /l %%b in (0,1,99) do (
				set /a block=!random! %% 100

				::0-89
				if !block! gtr -1 if !block! lss 90 set line_temp_%%a=!line_temp_%%a! 
				::90-96
				if !block! gtr 89 if !block! lss 97 set line_temp_%%a=!line_temp_%%a!~
				::97
				if !block! equ 97 set line_temp_%%a=!line_temp_%%a!
				::98
				if !block! equ 98 set line_temp_%%a=!line_temp_%%a!
				::99
				if !block! equ 99 set line_temp_%%a=!line_temp_%%a!
			)
		)

	:world_structure

		:world_structure_0
			set /a x=!random! %% 95
			set /a y=!random! %% 70

			set /a structure_x_0=!x!
			set /a structure_x_1=!x! + 1
			set /a structure_x_2=!x! + 2
			set /a structure_x_3=!x! + 3
			set /a structure_x_4=!x! + 4

			set /a structure_y_0=!y!
			set /a structure_y_1=!y! + 1
			set /a structure_y_2=!y! + 2
			set /a structure_y_3=!y! + 3
			set /a structure_y_4=!y! + 4

			set /a temp=!structure_x_0! + 1
			set line_temp_%structure_y_0%=!line_temp_%structure_y_0%:~0,%structure_x_0%!#!line_temp_%structure_y_0%:~%temp%!
			set /a temp=!structure_x_1! + 1
			set line_temp_%structure_y_0%=!line_temp_%structure_y_0%:~0,%structure_x_1%!#!line_temp_%structure_y_0%:~%temp%!
			set /a temp=!structure_x_2! + 1
			set line_temp_%structure_y_0%=!line_temp_%structure_y_0%:~0,%structure_x_2%!#!line_temp_%structure_y_0%:~%temp%!
			set /a temp=!structure_x_3! + 1
			set line_temp_%structure_y_0%=!line_temp_%structure_y_0%:~0,%structure_x_3%!#!line_temp_%structure_y_0%:~%temp%!
			set /a temp=!structure_x_4! + 1
			set line_temp_%structure_y_0%=!line_temp_%structure_y_0%:~0,%structure_x_4%!#!line_temp_%structure_y_0%:~%temp%!

			set /a temp=!structure_x_0! + 1
			set line_temp_%structure_y_1%=!line_temp_%structure_y_1%:~0,%structure_x_0%!#!line_temp_%structure_y_1%:~%temp%!
			set /a temp=!structure_x_1! + 1
			set line_temp_%structure_y_1%=!line_temp_%structure_y_1%:~0,%structure_x_1%! !line_temp_%structure_y_1%:~%temp%!
			set /a temp=!structure_x_2! + 1
			set line_temp_%structure_y_1%=!line_temp_%structure_y_1%:~0,%structure_x_2%! !line_temp_%structure_y_1%:~%temp%!
			set /a temp=!structure_x_3! + 1
			set line_temp_%structure_y_1%=!line_temp_%structure_y_1%:~0,%structure_x_3%! !line_temp_%structure_y_1%:~%temp%!
			set /a temp=!structure_x_4! + 1
			set line_temp_%structure_y_1%=!line_temp_%structure_y_1%:~0,%structure_x_4%!#!line_temp_%structure_y_1%:~%temp%!

			set /a temp=!structure_x_0! + 1
			set line_temp_%structure_y_2%=!line_temp_%structure_y_2%:~0,%structure_x_0%!#!line_temp_%structure_y_2%:~%temp%!
			set /a temp=!structure_x_1! + 1
			set line_temp_%structure_y_2%=!line_temp_%structure_y_2%:~0,%structure_x_1%! !line_temp_%structure_y_2%:~%temp%!
			set /a temp=!structure_x_2! + 1
			set line_temp_%structure_y_2%=!line_temp_%structure_y_2%:~0,%structure_x_2%!T!line_temp_%structure_y_2%:~%temp%!
			set /a temp=!structure_x_3! + 1
			set line_temp_%structure_y_2%=!line_temp_%structure_y_2%:~0,%structure_x_3%! !line_temp_%structure_y_2%:~%temp%!
			set /a temp=!structure_x_4! + 1
			set line_temp_%structure_y_2%=!line_temp_%structure_y_2%:~0,%structure_x_4%!#!line_temp_%structure_y_2%:~%temp%!

			set /a temp=!structure_x_0! + 1
			set line_temp_%structure_y_3%=!line_temp_%structure_y_3%:~0,%structure_x_0%!#!line_temp_%structure_y_3%:~%temp%!
			set /a temp=!structure_x_1! + 1
			set line_temp_%structure_y_3%=!line_temp_%structure_y_3%:~0,%structure_x_1%! !line_temp_%structure_y_3%:~%temp%!
			set /a temp=!structure_x_2! + 1
			set line_temp_%structure_y_3%=!line_temp_%structure_y_3%:~0,%structure_x_2%! !line_temp_%structure_y_3%:~%temp%!
			set /a temp=!structure_x_3! + 1
			set line_temp_%structure_y_3%=!line_temp_%structure_y_3%:~0,%structure_x_3%! !line_temp_%structure_y_3%:~%temp%!
			set /a temp=!structure_x_4! + 1
			set line_temp_%structure_y_3%=!line_temp_%structure_y_3%:~0,%structure_x_4%!#!line_temp_%structure_y_3%:~%temp%!

			set /a temp=!structure_x_0! + 1
			set line_temp_%structure_y_4%=!line_temp_%structure_y_4%:~0,%structure_x_0%!#!line_temp_%structure_y_4%:~%temp%!
			set /a temp=!structure_x_1! + 1
			set line_temp_%structure_y_4%=!line_temp_%structure_y_4%:~0,%structure_x_1%!#!line_temp_%structure_y_4%:~%temp%!
			set /a temp=!structure_x_2! + 1
			set line_temp_%structure_y_4%=!line_temp_%structure_y_4%:~0,%structure_x_2%! !line_temp_%structure_y_4%:~%temp%!
			set /a temp=!structure_x_3! + 1
			set line_temp_%structure_y_4%=!line_temp_%structure_y_4%:~0,%structure_x_3%!#!line_temp_%structure_y_4%:~%temp%!
			set /a temp=!structure_x_4! + 1
			set line_temp_%structure_y_4%=!line_temp_%structure_y_4%:~0,%structure_x_4%!#!line_temp_%structure_y_4%:~%temp%!

		:world_structure_1
			set /a x=!random! %% 95
			set /a y=!random! %% 70

			set /a structure_x_0=!x!
			set /a structure_x_1=!x! + 1
			set /a structure_x_2=!x! + 2
			set /a structure_x_3=!x! + 3
			set /a structure_x_4=!x! + 4

			set /a structure_y_0=!y!
			set /a structure_y_1=!y! + 1
			set /a structure_y_2=!y! + 2
			set /a structure_y_3=!y! + 3
			set /a structure_y_4=!y! + 4

			set /a temp=!structure_x_0! + 1
			set line_temp_%structure_y_0%=!line_temp_%structure_y_0%:~0,%structure_x_0%!#!line_temp_%structure_y_0%:~%temp%!
			set /a temp=!structure_x_1! + 1
			set line_temp_%structure_y_0%=!line_temp_%structure_y_0%:~0,%structure_x_1%!#!line_temp_%structure_y_0%:~%temp%!
			set /a temp=!structure_x_2! + 1
			set line_temp_%structure_y_0%=!line_temp_%structure_y_0%:~0,%structure_x_2%!#!line_temp_%structure_y_0%:~%temp%!
			set /a temp=!structure_x_3! + 1
			set line_temp_%structure_y_0%=!line_temp_%structure_y_0%:~0,%structure_x_3%!#!line_temp_%structure_y_0%:~%temp%!
			set /a temp=!structure_x_4! + 1
			set line_temp_%structure_y_0%=!line_temp_%structure_y_0%:~0,%structure_x_4%!#!line_temp_%structure_y_0%:~%temp%!

			set /a temp=!structure_x_0! + 1
			set line_temp_%structure_y_1%=!line_temp_%structure_y_1%:~0,%structure_x_0%!#!line_temp_%structure_y_1%:~%temp%!
			set /a temp=!structure_x_1! + 1
			set line_temp_%structure_y_1%=!line_temp_%structure_y_1%:~0,%structure_x_1%! !line_temp_%structure_y_1%:~%temp%!
			set /a temp=!structure_x_2! + 1
			set line_temp_%structure_y_1%=!line_temp_%structure_y_1%:~0,%structure_x_2%! !line_temp_%structure_y_1%:~%temp%!
			set /a temp=!structure_x_3! + 1
			set line_temp_%structure_y_1%=!line_temp_%structure_y_1%:~0,%structure_x_3%! !line_temp_%structure_y_1%:~%temp%!
			set /a temp=!structure_x_4! + 1
			set line_temp_%structure_y_1%=!line_temp_%structure_y_1%:~0,%structure_x_4%!#!line_temp_%structure_y_1%:~%temp%!

			set /a temp=!structure_x_0! + 1
			set line_temp_%structure_y_2%=!line_temp_%structure_y_2%:~0,%structure_x_0%!#!line_temp_%structure_y_2%:~%temp%!
			set /a temp=!structure_x_1! + 1
			set line_temp_%structure_y_2%=!line_temp_%structure_y_2%:~0,%structure_x_1%! !line_temp_%structure_y_2%:~%temp%!
			set /a temp=!structure_x_2! + 1
			set line_temp_%structure_y_2%=!line_temp_%structure_y_2%:~0,%structure_x_2%!I!line_temp_%structure_y_2%:~%temp%!
			set /a temp=!structure_x_3! + 1
			set line_temp_%structure_y_2%=!line_temp_%structure_y_2%:~0,%structure_x_3%! !line_temp_%structure_y_2%:~%temp%!
			set /a temp=!structure_x_4! + 1
			set line_temp_%structure_y_2%=!line_temp_%structure_y_2%:~0,%structure_x_4%!#!line_temp_%structure_y_2%:~%temp%!

			set /a temp=!structure_x_0! + 1
			set line_temp_%structure_y_3%=!line_temp_%structure_y_3%:~0,%structure_x_0%!#!line_temp_%structure_y_3%:~%temp%!
			set /a temp=!structure_x_1! + 1
			set line_temp_%structure_y_3%=!line_temp_%structure_y_3%:~0,%structure_x_1%! !line_temp_%structure_y_3%:~%temp%!
			set /a temp=!structure_x_2! + 1
			set line_temp_%structure_y_3%=!line_temp_%structure_y_3%:~0,%structure_x_2%! !line_temp_%structure_y_3%:~%temp%!
			set /a temp=!structure_x_3! + 1
			set line_temp_%structure_y_3%=!line_temp_%structure_y_3%:~0,%structure_x_3%! !line_temp_%structure_y_3%:~%temp%!
			set /a temp=!structure_x_4! + 1
			set line_temp_%structure_y_3%=!line_temp_%structure_y_3%:~0,%structure_x_4%!#!line_temp_%structure_y_3%:~%temp%!

			set /a temp=!structure_x_0! + 1
			set line_temp_%structure_y_4%=!line_temp_%structure_y_4%:~0,%structure_x_0%!#!line_temp_%structure_y_4%:~%temp%!
			set /a temp=!structure_x_1! + 1
			set line_temp_%structure_y_4%=!line_temp_%structure_y_4%:~0,%structure_x_1%!#!line_temp_%structure_y_4%:~%temp%!
			set /a temp=!structure_x_2! + 1
			set line_temp_%structure_y_4%=!line_temp_%structure_y_4%:~0,%structure_x_2%! !line_temp_%structure_y_4%:~%temp%!
			set /a temp=!structure_x_3! + 1
			set line_temp_%structure_y_4%=!line_temp_%structure_y_4%:~0,%structure_x_3%!#!line_temp_%structure_y_4%:~%temp%!
			set /a temp=!structure_x_4! + 1
			set line_temp_%structure_y_4%=!line_temp_%structure_y_4%:~0,%structure_x_4%!#!line_temp_%structure_y_4%:~%temp%!

	:world_save
		(
				echo ################################################################################################################################################################################
			) > world.txt

			for /l %%a in (0,1,10) do (
				echo #                                                                                                                                                                              #>>world.txt
			)

			(
				echo #                                    ######################################################################################################                                    #
			) >> world.txt

			for /l %%a in (0,1,74) do (
				echo #                                    #!line_temp_%%a!#                                    #>>world.txt
			)

			(
				echo #                                    ######################################################################################################                                    #
			) >> world.txt

			for /l %%a in (0,1,10) do (
				echo #                                                                                                                                                                              #>>world.txt
			)

			(
				echo ################################################################################################################################################################################
			) >> world.txt

			exit /b