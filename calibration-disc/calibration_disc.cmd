@echo off 

@REM Render 0.5 values
set list=-0.5 -1 -1.5 0.5 1 1.5
(for %%a in (%list%) do ( 
  openscad -o calibration_disc_%%a.stl -D label="\"%%a\"" calibration_disc.scad
))


@REM @REM Render 2 values
set list=-8 -6 -4 -2 2 4 6 8
(for %%a in (%list%) do ( 
   openscad -o calibration_disc_%%a.stl -D label="\"%%a\"" calibration_disc.scad
))

@REM @REM Render 5 values
set list=-20 -15 -10 -5 5 10 15 20
(for %%a in (%list%) do ( 
   openscad -o calibration_disc_%%a.stl -D label="\"%%a\"" calibration_disc.scad
))

@REM @REM Render 0
openscad -o calibration_disc_0.stl -D label="\"0\"" calibration_disc.scad