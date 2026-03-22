<Qucs Schematic 0.0.19>
<Properties>
  <View=0,-87,800,851,1,0,0>
  <Grid=10,10,1>
  <DataSet=lambda4min.dat>
  <DataDisplay=lambda4min.dpl>
  <OpenDisplay=1>
  <Script=lambda4min.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Título>
  <FrameText1=Autor:>
  <FrameText2=Data:>
  <FrameText3=Revisão:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <GND * 1 660 310 0 0 0 0>
  <C Cl1 1 680 220 17 -26 0 1 "0.4184 pF" 1 "" 0 "neutral" 0>
  <R Rl1 1 630 220 -132 -26 0 3 "145.248 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <Pac P1 1 180 210 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 1 180 280 0 0 0 0>
  <MLIN MS1 1 500 120 -36 -99 0 0 "Subst1" 1 "2.51219 mm" 1 "48.4613 mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MLIN lambd4 1 330 120 -40 -98 0 0 "Subst1" 1 "5.27848 mm" 1 "52.6423 mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <Eqn Eqn1 1 590 370 -31 16 0 0 "dB=dB(S[1,1])" 1 "yes" 0>
  <SUBST Subst1 1 230 380 -30 24 0 0 "2.05" 1 "0.790 mm" 1 "35 um" 1 "2e-4" 1 "0.022e-6" 1 "0" 1>
  <.SP SP1 1 360 350 0 63 0 0 "lin" 1 "1MHz" 1 "3.5 GHz" 1 "200" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
</Components>
<Wires>
  <630 160 660 160 "" 0 0 0 "">
  <630 160 630 190 "" 0 0 0 "">
  <660 160 680 160 "" 0 0 0 "">
  <680 160 680 190 "" 0 0 0 "">
  <680 250 680 280 "" 0 0 0 "">
  <630 250 630 280 "" 0 0 0 "">
  <630 280 660 280 "" 0 0 0 "">
  <660 280 680 280 "" 0 0 0 "">
  <660 280 660 310 "" 0 0 0 "">
  <180 240 180 280 "" 0 0 0 "">
  <360 120 470 120 "" 0 0 0 "">
  <530 120 660 120 "" 0 0 0 "">
  <660 120 660 160 "" 0 0 0 "">
  <180 120 300 120 "" 0 0 0 "">
  <180 120 180 180 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
