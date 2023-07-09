<Cabbage>
form caption("Untitled") size(400, 300), colour(58, 110, 182), pluginid("def1")
rslider bounds(296, 162, 100, 100), channel("gain"), range(0, 1, 0, 1, .01), text("Gain"), trackercolour("lime"), outlinecolour(0, 0, 0, 50), textcolour("black")

button bounds(16, 14, 80, 40), text("Update Notes"), channel("updateNotes")
button bounds(100, 14, 80, 40), text("Add delay", "Remove delay"), channel("addDelay")
</Cabbage>
<CsoundSynthesizer>
<CsOptions>
-n -d -+rtmidi=NULL -M0 -m0d 
</CsOptions>
<CsInstruments>
; Initialize the global variables. 
ksmps = 32
nchnls = 2
0dbfs = 1

instr SEQUENCER

    kCnt init 0
    kNoteIndex init 0
    kNotes[] init 32
    kNewNotes[] init 32
    kNoteCnt init 8
     
    if changed:k(chnget:k("updateNotes")) == 1 then
        kCnt = 0
        while kCnt < kNoteCnt do
            kNewNotes[kCnt] = 60+int(random:k(0, 12))
            kCnt+=1
        od 
    endif

    while kCnt < kNoteCnt do
        kNotes[kCnt] = 60+kCnt
        kCnt+=1
    od

    if metro(4) == 1 then
        event "i", "SYNTH", 0, .5, kNotes[kNoteIndex]
        
        if chnget:k("addDelay") == 1 then
            event "i", "SYNTH", .50, .5, kNotes[kNoteIndex]
        endif
        
        kNoteIndex = kNoteIndex<kNoteCnt-1 ? kNoteIndex+1 : 0
        
        if kNoteIndex == 7 then 
            kNotes = kNewNotes
        endif
        
    endif
endin


instr SYNTH
    a1 expon 1, p3, 0.01
    aOut oscili a1, cpsmidinn(p4)
    out aOut*chnget:k("gain"), aOut*chnget:k("gain")
endin

</CsInstruments>
<CsScore>
;causes Csound to run for about 7000 years...
f0 z
;starts instrument 1 and runs it for a week
i"SEQUENCER" 0 [60*60*24*7] 
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
<EventPanel name="" tempo="60.00000000" loop="8.00000000" x="-1767" y="512" width="655" height="346" visible="false" loopStart="0" loopEnd="0">    </EventPanel>
