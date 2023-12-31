<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>

sr = 44100
ksmps = 128
nchnls = 2
0dbfs = 1
instr 1 ;without explicit init
  i1 = p4
  if i1 == 0 then
  a1 poscil 0.5, 500
  endif
  if i1 == 1 then
  a2 poscil 0.5, 600
  endif
  outs a1, a2
endin

instr 2 ;with explicit init
  i1 = p4
  if i1 == 0 then
  a1 poscil 0.5, 500
  a2 init 0
  endif
  if i1 == 1 then
  a2 poscil 0.5, 600
  a1 init 0
  endif
  outs a1, a2
endin

</CsInstruments>
<CsScore>
i 1 0 .5 0
i . 1 . 0
i . 2 . 1
i . 3 . 1
i . 4 . 0
i . 5 . 0
i . 6 . 1
i . 7 . 1
b 9
i 2 0 .5 0
i . 1 . 0
i . 2 . 1
i . 3 . 1
i . 4 . 0
i . 5 . 0
i . 6 . 1
i . 7 . 1
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
