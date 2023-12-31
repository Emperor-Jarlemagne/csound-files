<CsoundSynthesizer>
<CsOptions>
</CsOptions>
<CsInstruments>

sr = 44100
ksmps = 32
nchnls = 2
0dbfs = 1

instr 1

 ;explicit initialization
 k_Exp init 10
 S_Exp init "goodbye"

 ;implicit initialization
 k_Imp linseg 10, 1, 0
 S_Imp strcpyk "world"

 ;print out at init-time
 prints "k_Exp -> %d\n", k_Exp
 printf_i "S_Exp -> %s\n", 1, S_Exp
 prints "k_Imp -> %d\n", k_Imp
 printf_i "S_Imp -> %s\n", 1, S_Imp

endin

</CsInstruments>
<CsScore>
i 1 0 1
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
