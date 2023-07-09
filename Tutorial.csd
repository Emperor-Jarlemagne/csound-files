;<CsoundSynthesizer>
;<CsOptions>
;-n -d 
;</CsOptions>
;<CsInstruments>
; Initialize the global variables. 
;ksmps = 32
;nchnls = 2
;0dbfs = 1
;
;instr 1
;aOut vco2 0.1, 50
;out aOut, aOut
;endin
;
;</CsInstruments>
;<CsScore>
;f 1 0 8192 10 1 ; Generate a simple sine wave for 1 second
;i 1 0 1 ; Play instrument 1 for 1 second
;i 1 2 1 ; Pause for 2 seconds
;i 1 0 1 ; Play instrument 1 for 1 second (repeating pattern)
;i 1 2 1 ; Pause for 2 seconds (repeating pattern)
;loop_start:
;  i 1 0 1 ; Play instrument 1 for 1 second (repeating pattern)
;  i 1 2 1 ; Pause for 2 seconds (repeating pattern)
;  loop_lt loop_start
;</CsScore>
;</CsoundSynthesizer>
<CsoundSynthesizer>
<CsOptions>
</CsOptions>
<CsInstruments>
sr = 44100
ksmps = 4
nchnls = 2
0dbfs = 1

giSine ftgen 0, 0, 4096, 10, 1 ; a sine wave with a plucked envelope

instr 1
  idur = p3
  iamp = p4
  ifrq = cps2pch(p5, 12)
  kamp line iamp, idur, 0
  asig oscili kamp, ifrq, giSine
  outs asig, asig
endin
</CsInstruments>

<CsScore>
r 4
t 0 120
i 1 0 1 0.25 9.00
i 1 +i 1 +  .  . 9.04
i 1 +i 1 +  .  . 9.07
i 1 +i 1 + 2  . 9.04
s
</CsScore>
</CsoundSynthesizer>