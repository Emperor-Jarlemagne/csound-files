<CsoundSynthesizer>
<CsOptions>
-o dac
</CsOptions>
<CsInstruments>

sr = 44100
ksmps = 441
nchnls = 2
0dbfs = 1

instr 1
iAmp = p4 ;amplitude taken from the 4th parameter of the score line
iFreq = p5 ;frequency taken from the 5th parameter
; --- move from 0 to 1 in the duration of this instrument call (p3)
kPan line 0, p3, 1
aNote poscil  iAmp, iFreq ;create an audio signal
aL, aR pan2 aNote, kPan ;let the signal move from left to right
 outs aL, aR ;write it to the output
endin


</CsInstruments>
<CsScore>
i 1 0 3 0.2 443
</CsScore>
</CsoundSynthesizer>
<bsbPanel>
 <label>Widgets</label>
 <objectName/>
 <x>100</x>
 <y>100</y>
 <width>320</width>
 <height>240</height>
 <visible>true</visible>
 <uuid/>
 <bgcolor mode="background">
  <r>240</r>
  <g>240</g>
  <b>240</b>
 </bgcolor>
</bsbPanel>
<bsbPresets>
</bsbPresets>
