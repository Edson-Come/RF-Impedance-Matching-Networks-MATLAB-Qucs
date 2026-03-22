<Qucs Schematic 0.0.19>
<Properties>
  <View=0,-60,3364,827,1,0,0>
  <Grid=10,10,1>
  <DataSet=stubcc.dat>
  <DataDisplay=stubcc.dpl>
  <OpenDisplay=1>
  <Script=stubcc.m>
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
  <Pac P1 1 70 230 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 1 210 310 0 0 0 0>
  <GND * 1 70 300 0 0 0 0>
  <GND * 1 510 270 0 0 0 0>
  <SUBST Subst1 1 70 410 -30 24 0 0 "2.33" 1 "1.575 mm" 1 "35 um" 1 "2e-4" 1 "0.022e-6" 1 "0" 1>
  <C Cl 1 530 180 17 -26 0 1 "0.4184 pF" 1 "" 0 "neutral" 0>
  <R Rl 1 480 180 -132 -26 0 3 "145.248 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <MLIN MSdp 1 330 100 -41 -94 0 0 "Subst1" 1 "4.64293 mm" 1 "28.9789 mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MLIN MSlsp 1 210 230 15 -26 0 1 "Subst1" 1 "4.64293 mm" 1 "23.2648 mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <Eqn Eqn1 1 440 380 -31 16 0 0 "dB=dB(S[1,1])" 1 "yes" 0>
  <.SP SP1 1 200 370 0 63 0 0 "lin" 1 "0" 1 "4 GHz" 1 "200" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
</Components>
<Wires>
  <70 100 70 200 "" 0 0 0 "">
  <70 100 210 100 "" 0 0 0 "">
  <210 100 300 100 "" 0 0 0 "">
  <210 100 210 200 "" 0 0 0 "">
  <360 100 510 100 "" 0 0 0 "">
  <510 100 510 120 "" 0 0 0 "">
  <480 120 510 120 "" 0 0 0 "">
  <480 120 480 150 "" 0 0 0 "">
  <510 120 530 120 "" 0 0 0 "">
  <530 120 530 150 "" 0 0 0 "">
  <530 210 530 240 "" 0 0 0 "">
  <480 240 510 240 "" 0 0 0 "">
  <480 210 480 240 "" 0 0 0 "">
  <210 260 210 310 "" 0 0 0 "">
  <70 260 70 300 "" 0 0 0 "">
  <510 240 530 240 "" 0 0 0 "">
  <510 240 510 270 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
