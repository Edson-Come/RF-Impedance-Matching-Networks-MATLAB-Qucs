<Qucs Schematic 0.0.19>
<Properties>
  <View=0,-120,800,878,1,0,120>
  <Grid=10,10,1>
  <DataSet=Cparalelo.dat>
  <DataDisplay=Cparalelo.dpl>
  <OpenDisplay=1>
  <Script=Cparalelo.m>
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
  <GND * 1 410 340 0 0 0 0>
  <Pac P1 1 50 250 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 1 50 310 0 0 0 0>
  <C Cl1 1 430 250 17 -26 0 1 "0.4184 pF" 1 "" 0 "neutral" 0>
  <R Rl1 1 380 250 -132 -26 0 3 "145.248 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <C Cp 1 190 250 10 -77 0 1 "3.4929 pF" 1 "" 0 "neutral" 0>
  <GND * 1 190 320 0 0 0 0>
  <SUBST Subst1 1 270 450 -30 24 0 0 "2.94" 1 "1.524 mm" 1 "35 um" 1 "2e-4" 1 "0.022e-6" 1 "0" 1>
  <Eqn Eqn1 1 440 430 -31 16 0 0 "dB=dB(S[1,1])" 1 "yes" 0>
  <MLIN MSdc 1 320 160 -51 -113 0 0 "Subst1" 1 "3.851mm" 1 "57.3609 mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <.SP SP1 1 40 410 0 63 0 0 "lin" 1 "0" 1 "3 GHz" 1 "200" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
</Components>
<Wires>
  <380 190 380 220 "" 0 0 0 "">
  <380 190 410 190 "" 0 0 0 "">
  <430 190 430 220 "" 0 0 0 "">
  <430 280 430 310 "" 0 0 0 "">
  <380 280 380 310 "" 0 0 0 "">
  <380 310 410 310 "" 0 0 0 "">
  <410 310 430 310 "" 0 0 0 "">
  <410 310 410 340 "" 0 0 0 "">
  <190 160 190 220 "" 0 0 0 "">
  <410 190 430 190 "" 0 0 0 "">
  <410 160 410 190 "" 0 0 0 "">
  <50 160 190 160 "" 0 0 0 "">
  <50 160 50 220 "" 0 0 0 "">
  <50 280 50 310 "" 0 0 0 "">
  <190 280 190 320 "" 0 0 0 "">
  <190 160 290 160 "" 0 0 0 "">
  <350 160 410 160 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
