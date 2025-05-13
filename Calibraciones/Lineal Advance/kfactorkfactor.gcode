; ### Marlin K-Factor Calibration Pattern ###
; -------------------------------------------
;
; Printer: Hellbot Magna 2 300
; Filament: Sunlu
; Created: Tue Apr 29 2025 13:52:35 GMT-0400 (hora estándar de Chile)
;
; Settings Printer:
; Filament Diameter = 1.75 mm
; Nozzle Diameter = 0.8 mm
; Nozzle Temperature = 220 °C
; Bed Temperature = 70 °C
; Retraction Distance = 7 mm
; Layer Height = 0.3 mm
; Extruder = 0
; Fan Speed = 0 %
; Z-axis Offset = 0 mm
;
; Settings Print Bed:
; Bed Shape = Rect
; Bed Size X = 300 mm
; Bed Size Y = 300 mm
; Origin Bed Center = false
;
; Settings Speed:
; Slow Printing Speed = 1200 mm/min
; Fast Printing Speed = 4200 mm/min
; Movement Speed = 7200 mm/min
; Retract Speed = 1800 mm/min
; Unretract Speed = 1800 mm/min
; Printing Acceleration = 500 mm/s^2
; Jerk X-axis =  firmware default
; Jerk Y-axis =  firmware default
; Jerk Z-axis =  firmware default
; Jerk Extruder =  firmware default
;
; Settings Pattern:
; Linear Advance Version = 1.5
; Starting Value Factor = 0
; Ending Value Factor = 2
; Factor Stepping = 0.2
; Test Line Spacing = 5 mm
; Test Line Length Slow = 20 mm
; Test Line Length Fast = 40 mm
; Print Pattern = Standard
; Print Frame = false
; Number Lines = true
; Print Size X = 98 mm
; Print Size Y = 75 mm
; Print Rotation = 0 degree
;
; Settings Advance:
; Nozzle / Line Ratio = 1.2
; Bed leveling = M420 L0 S1 ; Load UBL mesh 0
; Use FWRETRACT = false
; Extrusion Multiplier = 1
; Prime Nozzle = true
; Prime Extrusion Multiplier = 2.5
; Prime Speed = 1800
; Dwell Time = 2 s
;
; prepare printing
;
G21 ; Millimeter units
G90 ; Absolute XYZ
M83 ; Relative E
G28 ; Home all axes

T0 ; Switch to tool 0
G1 Z10 F100 ; Z raise
M104 S220 ; Set nozzle temperature (no wait)
M190 S70 ; Set bed temperature (wait)
M109 S220 ; Wait for nozzle temp
M420 L0 S1 ; Load UBL mesh 0; Activate bed leveling compensation
M204 P500 ; Acceleration




G92 E0 ; Reset extruder distance
M106 P0 S0

G1 X150 Y150 F7200 ; move to start

G1 Z0.3 F1200 ; Move to layer height
;
; prime nozzle
;
G1 X101 Y112.5 F7200 ; move to start
G1 X101 Y187.5 E22.4506 F1800 ; print line
G1 X102.44 Y187.5 F7200 ; move to start
G1 X102.44 Y112.5 E22.4506 F1800 ; print line
G1 E-7 F1800 ; retract
;
; start the Test pattern
;
G4 P2000 ; Pause (dwell) for 2 seconds
G1 X111 Y112.5 F7200 ; move to start
M900 K0 ; set K-factor
M117 K0 ; 
G1 E7 F1800 ; un-retract
G1 X131 Y112.5 E2.3947 F1200 ; print line
G1 X171 Y112.5 E4.7895 F4200 ; print line
G1 X191 Y112.5 E2.3947 F1200 ; print line
G1 E-7 F1800 ; retract
G1 X111 Y117.5 F7200 ; move to start
M900 K0.2 ; set K-factor
M117 K0.2 ; 
G1 E7 F1800 ; un-retract
G1 X131 Y117.5 E2.3947 F1200 ; print line
G1 X171 Y117.5 E4.7895 F4200 ; print line
G1 X191 Y117.5 E2.3947 F1200 ; print line
G1 E-7 F1800 ; retract
G1 X111 Y122.5 F7200 ; move to start
M900 K0.4 ; set K-factor
M117 K0.4 ; 
G1 E7 F1800 ; un-retract
G1 X131 Y122.5 E2.3947 F1200 ; print line
G1 X171 Y122.5 E4.7895 F4200 ; print line
G1 X191 Y122.5 E2.3947 F1200 ; print line
G1 E-7 F1800 ; retract
G1 X111 Y127.5 F7200 ; move to start
M900 K0.6 ; set K-factor
M117 K0.6 ; 
G1 E7 F1800 ; un-retract
G1 X131 Y127.5 E2.3947 F1200 ; print line
G1 X171 Y127.5 E4.7895 F4200 ; print line
G1 X191 Y127.5 E2.3947 F1200 ; print line
G1 E-7 F1800 ; retract
G1 X111 Y132.5 F7200 ; move to start
M900 K0.8 ; set K-factor
M117 K0.8 ; 
G1 E7 F1800 ; un-retract
G1 X131 Y132.5 E2.3947 F1200 ; print line
G1 X171 Y132.5 E4.7895 F4200 ; print line
G1 X191 Y132.5 E2.3947 F1200 ; print line
G1 E-7 F1800 ; retract
G1 X111 Y137.5 F7200 ; move to start
M900 K1 ; set K-factor
M117 K1 ; 
G1 E7 F1800 ; un-retract
G1 X131 Y137.5 E2.3947 F1200 ; print line
G1 X171 Y137.5 E4.7895 F4200 ; print line
G1 X191 Y137.5 E2.3947 F1200 ; print line
G1 E-7 F1800 ; retract
G1 X111 Y142.5 F7200 ; move to start
M900 K1.2 ; set K-factor
M117 K1.2 ; 
G1 E7 F1800 ; un-retract
G1 X131 Y142.5 E2.3947 F1200 ; print line
G1 X171 Y142.5 E4.7895 F4200 ; print line
G1 X191 Y142.5 E2.3947 F1200 ; print line
G1 E-7 F1800 ; retract
G1 X111 Y147.5 F7200 ; move to start
M900 K1.4 ; set K-factor
M117 K1.4 ; 
G1 E7 F1800 ; un-retract
G1 X131 Y147.5 E2.3947 F1200 ; print line
G1 X171 Y147.5 E4.7895 F4200 ; print line
G1 X191 Y147.5 E2.3947 F1200 ; print line
G1 E-7 F1800 ; retract
G1 X111 Y152.5 F7200 ; move to start
M900 K1.6 ; set K-factor
M117 K1.6 ; 
G1 E7 F1800 ; un-retract
G1 X131 Y152.5 E2.3947 F1200 ; print line
G1 X171 Y152.5 E4.7895 F4200 ; print line
G1 X191 Y152.5 E2.3947 F1200 ; print line
G1 E-7 F1800 ; retract
G1 X111 Y157.5 F7200 ; move to start
M900 K1.8 ; set K-factor
M117 K1.8 ; 
G1 E7 F1800 ; un-retract
G1 X131 Y157.5 E2.3947 F1200 ; print line
G1 X171 Y157.5 E4.7895 F4200 ; print line
G1 X191 Y157.5 E2.3947 F1200 ; print line
G1 E-7 F1800 ; retract
G1 X111 Y162.5 F7200 ; move to start
M900 K2 ; set K-factor
M117 K2 ; 
G1 E7 F1800 ; un-retract
G1 X131 Y162.5 E2.3947 F1200 ; print line
G1 X171 Y162.5 E4.7895 F4200 ; print line
G1 X191 Y162.5 E2.3947 F1200 ; print line
G1 E-7 F1800 ; retract
G1 X111 Y167.5 F7200 ; move to start
;
; Mark the test area for reference
M117 K0
M900 K0 ; Set K-factor 0
G1 X131 Y167.5 F7200 ; move to start
G1 E7 F1800 ; un-retract
G1 X131 Y187.5 E2.3947 F1200 ; print line
G1 E-7 F1800 ; retract
G1 X171 Y167.5 F7200 ; move to start
G1 E7 F1800 ; un-retract
G1 X171 Y187.5 E2.3947 F1200 ; print line
G1 E-7 F1800 ; retract
G1 Z0.4 F1200 ; zHop
;
; print K-values
;
G1 X193 Y110.5 F7200 ; move to start
G1 Z0.3 F1200 ; zHop
G1 E7 F1800 ; un-retract
G1 X195 Y110.5 E0.2395 F1200 ; 0
G1 X195 Y112.5 E0.2395 F1200 ; 0
G1 X195 Y114.5 E0.2395 F1200 ; 0
G1 X193 Y114.5 E0.2395 F1200 ; 0
G1 X193 Y112.5 E0.2395 F1200 ; 0
G1 X193 Y110.5 E0.2395 F1200 ; 0
G1 E-7 F1800 ; retract
G1 Z0.4 F1200 ; zHop
G1 X193 Y120.5 F7200 ; move to start
G1 Z0.3 F1200 ; zHop
G1 E7 F1800 ; un-retract
G1 X195 Y120.5 E0.2395 F1200 ; 0
G1 X195 Y122.5 E0.2395 F1200 ; 0
G1 X195 Y124.5 E0.2395 F1200 ; 0
G1 X193 Y124.5 E0.2395 F1200 ; 0
G1 X193 Y122.5 E0.2395 F1200 ; 0
G1 X193 Y120.5 E0.2395 F1200 ; 0
G1 E-7 F1800 ; retract
G1 X196 Y120.5 F7200 ; move to start
G1 E7 F1800 ; un-retract
G1 X196 Y120.9 E0.0479 F1200 ; dot
G1 E-7 F1800 ; retract
G1 X197 Y120.5 F7200 ; move to start
G1 E7 F1800 ; un-retract
G1 X197 Y122.5 F7200 ; move to start
G1 X197 Y124.5 F7200 ; move to start
G1 X197 Y122.5 E0.2395 F1200 ; 4
G1 X199 Y122.5 E0.2395 F1200 ; 4
G1 X199 Y124.5 F7200 ; move to start
G1 X199 Y122.5 E0.2395 F1200 ; 4
G1 X199 Y120.5 E0.2395 F1200 ; 4
G1 E-7 F1800 ; retract
G1 Z0.4 F1200 ; zHop
G1 X193 Y130.5 F7200 ; move to start
G1 Z0.3 F1200 ; zHop
G1 E7 F1800 ; un-retract
G1 X195 Y130.5 E0.2395 F1200 ; 0
G1 X195 Y132.5 E0.2395 F1200 ; 0
G1 X195 Y134.5 E0.2395 F1200 ; 0
G1 X193 Y134.5 E0.2395 F1200 ; 0
G1 X193 Y132.5 E0.2395 F1200 ; 0
G1 X193 Y130.5 E0.2395 F1200 ; 0
G1 E-7 F1800 ; retract
G1 X196 Y130.5 F7200 ; move to start
G1 E7 F1800 ; un-retract
G1 X196 Y130.9 E0.0479 F1200 ; dot
G1 E-7 F1800 ; retract
G1 X197 Y130.5 F7200 ; move to start
G1 E7 F1800 ; un-retract
G1 X197 Y132.5 F7200 ; move to start
G1 X199 Y132.5 E0.2395 F1200 ; 8
G1 X199 Y130.5 E0.2395 F1200 ; 8
G1 X197 Y130.5 E0.2395 F1200 ; 8
G1 X197 Y132.5 E0.2395 F1200 ; 8
G1 X197 Y134.5 E0.2395 F1200 ; 8
G1 X199 Y134.5 E0.2395 F1200 ; 8
G1 X199 Y132.5 E0.2395 F1200 ; 8
G1 E-7 F1800 ; retract
G1 Z0.4 F1200 ; zHop
G1 X193 Y140.5 F7200 ; move to start
G1 Z0.3 F1200 ; zHop
G1 E7 F1800 ; un-retract
G1 X193 Y142.5 E0.2395 F1200 ; 1
G1 X193 Y144.5 E0.2395 F1200 ; 1
G1 E-7 F1800 ; retract
G1 X194 Y140.5 F7200 ; move to start
G1 E7 F1800 ; un-retract
G1 X194 Y140.9 E0.0479 F1200 ; dot
G1 E-7 F1800 ; retract
G1 X195 Y140.5 F7200 ; move to start
G1 E7 F1800 ; un-retract
G1 X195 Y142.5 F7200 ; move to start
G1 X195 Y144.5 F7200 ; move to start
G1 X197 Y144.5 E0.2395 F1200 ; 2
G1 X197 Y142.5 E0.2395 F1200 ; 2
G1 X195 Y142.5 E0.2395 F1200 ; 2
G1 X195 Y140.5 E0.2395 F1200 ; 2
G1 X197 Y140.5 E0.2395 F1200 ; 2
G1 E-7 F1800 ; retract
G1 Z0.4 F1200 ; zHop
G1 X193 Y150.5 F7200 ; move to start
G1 Z0.3 F1200 ; zHop
G1 E7 F1800 ; un-retract
G1 X193 Y152.5 E0.2395 F1200 ; 1
G1 X193 Y154.5 E0.2395 F1200 ; 1
G1 E-7 F1800 ; retract
G1 X194 Y150.5 F7200 ; move to start
G1 E7 F1800 ; un-retract
G1 X194 Y150.9 E0.0479 F1200 ; dot
G1 E-7 F1800 ; retract
G1 X195 Y150.5 F7200 ; move to start
G1 E7 F1800 ; un-retract
G1 X195 Y152.5 F7200 ; move to start
G1 X197 Y152.5 E0.2395 F1200 ; 6
G1 X197 Y150.5 E0.2395 F1200 ; 6
G1 X195 Y150.5 E0.2395 F1200 ; 6
G1 X195 Y152.5 E0.2395 F1200 ; 6
G1 X195 Y154.5 E0.2395 F1200 ; 6
G1 X197 Y154.5 E0.2395 F1200 ; 6
G1 E-7 F1800 ; retract
G1 Z0.4 F1200 ; zHop
G1 X193 Y160.5 F7200 ; move to start
G1 Z0.3 F1200 ; zHop
G1 E7 F1800 ; un-retract
G1 X193 Y162.5 F7200 ; move to start
G1 X193 Y164.5 F7200 ; move to start
G1 X195 Y164.5 E0.2395 F1200 ; 2
G1 X195 Y162.5 E0.2395 F1200 ; 2
G1 X193 Y162.5 E0.2395 F1200 ; 2
G1 X193 Y160.5 E0.2395 F1200 ; 2
G1 X195 Y160.5 E0.2395 F1200 ; 2
G1 E-7 F1800 ; retract
G1 Z0.4 F1200 ; zHop
;
; FINISH
;
M107 ; Turn off fan
M400 ; Finish moving
M104 S0 ; Turn off hotend
M140 S0 ; Turn off bed
G1 Z30 X300 Y300 F7200 ; Move away from the print
M84 ; Disable motors
M501 ; Load settings from EEPROM
;