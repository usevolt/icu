<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.7.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="100" name="red" color="12" fill="1" visible="yes" active="yes"/>
<layer number="101" name="blue" color="9" fill="1" visible="yes" active="yes"/>
<layer number="102" name="grey" color="7" fill="1" visible="yes" active="yes"/>
<layer number="103" name="black" color="15" fill="1" visible="yes" active="yes"/>
<layer number="104" name="green" color="10" fill="1" visible="yes" active="yes"/>
<layer number="105" name="yellow" color="6" fill="1" visible="yes" active="yes"/>
<layer number="200" name="200bmp" color="1" fill="10" visible="yes" active="yes"/>
<layer number="201" name="201bmp" color="2" fill="10" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="frames">
<description>&lt;b&gt;Frames for Sheet and Layout&lt;/b&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="A3L-LOC">
<wire x1="288.29" y1="3.81" x2="342.265" y2="3.81" width="0.1016" layer="94"/>
<wire x1="342.265" y1="3.81" x2="373.38" y2="3.81" width="0.1016" layer="94"/>
<wire x1="373.38" y1="3.81" x2="383.54" y2="3.81" width="0.1016" layer="94"/>
<wire x1="383.54" y1="3.81" x2="383.54" y2="8.89" width="0.1016" layer="94"/>
<wire x1="383.54" y1="8.89" x2="383.54" y2="13.97" width="0.1016" layer="94"/>
<wire x1="383.54" y1="13.97" x2="383.54" y2="19.05" width="0.1016" layer="94"/>
<wire x1="383.54" y1="19.05" x2="383.54" y2="24.13" width="0.1016" layer="94"/>
<wire x1="288.29" y1="3.81" x2="288.29" y2="24.13" width="0.1016" layer="94"/>
<wire x1="288.29" y1="24.13" x2="342.265" y2="24.13" width="0.1016" layer="94"/>
<wire x1="342.265" y1="24.13" x2="383.54" y2="24.13" width="0.1016" layer="94"/>
<wire x1="373.38" y1="3.81" x2="373.38" y2="8.89" width="0.1016" layer="94"/>
<wire x1="373.38" y1="8.89" x2="383.54" y2="8.89" width="0.1016" layer="94"/>
<wire x1="373.38" y1="8.89" x2="342.265" y2="8.89" width="0.1016" layer="94"/>
<wire x1="342.265" y1="8.89" x2="342.265" y2="3.81" width="0.1016" layer="94"/>
<wire x1="342.265" y1="8.89" x2="342.265" y2="13.97" width="0.1016" layer="94"/>
<wire x1="342.265" y1="13.97" x2="383.54" y2="13.97" width="0.1016" layer="94"/>
<wire x1="342.265" y1="13.97" x2="342.265" y2="19.05" width="0.1016" layer="94"/>
<wire x1="342.265" y1="19.05" x2="383.54" y2="19.05" width="0.1016" layer="94"/>
<wire x1="342.265" y1="19.05" x2="342.265" y2="24.13" width="0.1016" layer="94"/>
<text x="344.17" y="15.24" size="2.54" layer="94" font="vector">&gt;DRAWING_NAME</text>
<text x="344.17" y="10.16" size="2.286" layer="94" font="vector">&gt;LAST_DATE_TIME</text>
<text x="357.505" y="5.08" size="2.54" layer="94" font="vector">&gt;SHEET</text>
<text x="343.916" y="4.953" size="2.54" layer="94" font="vector">Sheet:</text>
<frame x1="0" y1="0" x2="387.35" y2="260.35" columns="8" rows="5" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="A3L-LOC" prefix="FRAME" uservalue="yes">
<description>&lt;b&gt;FRAME&lt;/b&gt;&lt;p&gt;
DIN A3, landscape with location and doc. field</description>
<gates>
<gate name="G$1" symbol="A3L-LOC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="uw_wiring_harness">
<packages>
</packages>
<symbols>
<symbol name="AMPSEAL_23_POS_BLACK">
<text x="0.9144" y="-16.3068" size="1.778" layer="101" font="vector" align="bottom-center">AMPSEAL 23 POS BLACK
770680-1
23 x 770854-3</text>
<text x="-7.9248" y="10.5664" size="3.81" layer="103">&gt;VALUE</text>
<rectangle x1="0.8382" y1="-8.3058" x2="1.7526" y2="-8.1534" layer="200"/>
<rectangle x1="0.381" y1="-8.1534" x2="0.6858" y2="-8.001" layer="200"/>
<rectangle x1="1.6002" y1="-8.1534" x2="1.905" y2="-8.001" layer="200"/>
<rectangle x1="0.8382" y1="-8.001" x2="1.2954" y2="-7.8486" layer="200"/>
<rectangle x1="1.905" y1="-8.001" x2="2.2098" y2="-7.8486" layer="200"/>
<rectangle x1="0.6858" y1="-7.8486" x2="1.4478" y2="-7.6962" layer="200"/>
<rectangle x1="2.0574" y1="-7.8486" x2="2.5146" y2="-7.6962" layer="200"/>
<rectangle x1="0.0762" y1="-7.6962" x2="0.2286" y2="-7.5438" layer="200"/>
<rectangle x1="0.5334" y1="-7.6962" x2="0.9906" y2="-7.5438" layer="200"/>
<rectangle x1="1.2954" y1="-7.6962" x2="1.4478" y2="-7.5438" layer="200"/>
<rectangle x1="1.905" y1="-7.6962" x2="2.0574" y2="-7.5438" layer="200"/>
<rectangle x1="2.3622" y1="-7.6962" x2="2.667" y2="-7.5438" layer="200"/>
<rectangle x1="0.0762" y1="-7.5438" x2="0.2286" y2="-7.3914" layer="200"/>
<rectangle x1="0.5334" y1="-7.5438" x2="0.8382" y2="-7.3914" layer="200"/>
<rectangle x1="1.2954" y1="-7.5438" x2="1.4478" y2="-7.3914" layer="200"/>
<rectangle x1="2.5146" y1="-7.5438" x2="2.8194" y2="-7.3914" layer="200"/>
<rectangle x1="6.0198" y1="-7.5438" x2="6.3246" y2="-7.3914" layer="200"/>
<rectangle x1="0.0762" y1="-7.3914" x2="0.2286" y2="-7.239" layer="200"/>
<rectangle x1="0.381" y1="-7.3914" x2="0.6858" y2="-7.239" layer="200"/>
<rectangle x1="1.143" y1="-7.3914" x2="1.4478" y2="-7.239" layer="200"/>
<rectangle x1="2.8194" y1="-7.3914" x2="3.1242" y2="-7.239" layer="200"/>
<rectangle x1="3.2766" y1="-7.3914" x2="3.5814" y2="-7.239" layer="200"/>
<rectangle x1="5.1054" y1="-7.3914" x2="6.6294" y2="-7.239" layer="200"/>
<rectangle x1="0.0762" y1="-7.239" x2="0.2286" y2="-7.0866" layer="200"/>
<rectangle x1="0.5334" y1="-7.239" x2="1.2954" y2="-7.0866" layer="200"/>
<rectangle x1="2.9718" y1="-7.239" x2="3.5814" y2="-7.0866" layer="200"/>
<rectangle x1="4.953" y1="-7.239" x2="5.8674" y2="-7.0866" layer="200"/>
<rectangle x1="6.0198" y1="-7.239" x2="6.7818" y2="-7.0866" layer="200"/>
<rectangle x1="0.0762" y1="-7.0866" x2="0.2286" y2="-6.9342" layer="200"/>
<rectangle x1="0.5334" y1="-7.0866" x2="1.143" y2="-6.9342" layer="200"/>
<rectangle x1="3.2766" y1="-7.0866" x2="3.5814" y2="-6.9342" layer="200"/>
<rectangle x1="4.3434" y1="-7.0866" x2="4.4958" y2="-6.9342" layer="200"/>
<rectangle x1="4.8006" y1="-7.0866" x2="4.953" y2="-6.9342" layer="200"/>
<rectangle x1="5.4102" y1="-7.0866" x2="5.5626" y2="-6.9342" layer="200"/>
<rectangle x1="6.0198" y1="-7.0866" x2="7.0866" y2="-6.9342" layer="200"/>
<rectangle x1="0.0762" y1="-6.9342" x2="0.2286" y2="-6.7818" layer="200"/>
<rectangle x1="3.429" y1="-6.9342" x2="4.3434" y2="-6.7818" layer="200"/>
<rectangle x1="4.4958" y1="-6.9342" x2="4.8006" y2="-6.7818" layer="200"/>
<rectangle x1="6.477" y1="-6.9342" x2="7.3914" y2="-6.7818" layer="200"/>
<rectangle x1="-0.2286" y1="-6.7818" x2="0.2286" y2="-6.6294" layer="200"/>
<rectangle x1="3.429" y1="-6.7818" x2="4.0386" y2="-6.6294" layer="200"/>
<rectangle x1="6.6294" y1="-6.7818" x2="7.5438" y2="-6.6294" layer="200"/>
<rectangle x1="-0.8382" y1="-6.6294" x2="-0.2286" y2="-6.477" layer="200"/>
<rectangle x1="-0.0762" y1="-6.6294" x2="0.6858" y2="-6.477" layer="200"/>
<rectangle x1="1.6002" y1="-6.6294" x2="2.0574" y2="-6.477" layer="200"/>
<rectangle x1="3.429" y1="-6.6294" x2="3.5814" y2="-6.477" layer="200"/>
<rectangle x1="3.7338" y1="-6.6294" x2="4.191" y2="-6.477" layer="200"/>
<rectangle x1="4.8006" y1="-6.6294" x2="6.3246" y2="-6.477" layer="200"/>
<rectangle x1="6.9342" y1="-6.6294" x2="7.8486" y2="-6.477" layer="200"/>
<rectangle x1="-1.2954" y1="-6.477" x2="-0.6858" y2="-6.3246" layer="200"/>
<rectangle x1="-0.0762" y1="-6.477" x2="0.0762" y2="-6.3246" layer="200"/>
<rectangle x1="0.2286" y1="-6.477" x2="0.381" y2="-6.3246" layer="200"/>
<rectangle x1="0.5334" y1="-6.477" x2="0.6858" y2="-6.3246" layer="200"/>
<rectangle x1="1.2954" y1="-6.477" x2="2.3622" y2="-6.3246" layer="200"/>
<rectangle x1="3.429" y1="-6.477" x2="3.7338" y2="-6.3246" layer="200"/>
<rectangle x1="4.0386" y1="-6.477" x2="4.953" y2="-6.3246" layer="200"/>
<rectangle x1="5.1054" y1="-6.477" x2="6.6294" y2="-6.3246" layer="200"/>
<rectangle x1="7.0866" y1="-6.477" x2="8.001" y2="-6.3246" layer="200"/>
<rectangle x1="-1.7526" y1="-6.3246" x2="-1.143" y2="-6.1722" layer="200"/>
<rectangle x1="-0.0762" y1="-6.3246" x2="0.0762" y2="-6.1722" layer="200"/>
<rectangle x1="0.381" y1="-6.3246" x2="0.6858" y2="-6.1722" layer="200"/>
<rectangle x1="1.2954" y1="-6.3246" x2="2.0574" y2="-6.1722" layer="200"/>
<rectangle x1="2.2098" y1="-6.3246" x2="2.5146" y2="-6.1722" layer="200"/>
<rectangle x1="3.429" y1="-6.3246" x2="3.5814" y2="-6.1722" layer="200"/>
<rectangle x1="3.8862" y1="-6.3246" x2="4.3434" y2="-6.1722" layer="200"/>
<rectangle x1="6.3246" y1="-6.3246" x2="6.7818" y2="-6.1722" layer="200"/>
<rectangle x1="7.239" y1="-6.3246" x2="8.1534" y2="-6.1722" layer="200"/>
<rectangle x1="-2.2098" y1="-6.1722" x2="-1.6002" y2="-6.0198" layer="200"/>
<rectangle x1="-1.4478" y1="-6.1722" x2="-0.8382" y2="-6.0198" layer="200"/>
<rectangle x1="-0.0762" y1="-6.1722" x2="0.0762" y2="-6.0198" layer="200"/>
<rectangle x1="0.381" y1="-6.1722" x2="0.8382" y2="-6.0198" layer="200"/>
<rectangle x1="1.4478" y1="-6.1722" x2="1.905" y2="-6.0198" layer="200"/>
<rectangle x1="2.5146" y1="-6.1722" x2="2.8194" y2="-6.0198" layer="200"/>
<rectangle x1="3.429" y1="-6.1722" x2="4.0386" y2="-6.0198" layer="200"/>
<rectangle x1="6.6294" y1="-6.1722" x2="6.9342" y2="-6.0198" layer="200"/>
<rectangle x1="7.239" y1="-6.1722" x2="7.5438" y2="-6.0198" layer="200"/>
<rectangle x1="7.6962" y1="-6.1722" x2="8.4582" y2="-6.0198" layer="200"/>
<rectangle x1="-2.667" y1="-6.0198" x2="-2.0574" y2="-5.8674" layer="200"/>
<rectangle x1="-1.4478" y1="-6.0198" x2="-1.2954" y2="-5.8674" layer="200"/>
<rectangle x1="-1.143" y1="-6.0198" x2="-0.6858" y2="-5.8674" layer="200"/>
<rectangle x1="-0.0762" y1="-6.0198" x2="0.2286" y2="-5.8674" layer="200"/>
<rectangle x1="0.381" y1="-6.0198" x2="0.8382" y2="-5.8674" layer="200"/>
<rectangle x1="1.4478" y1="-6.0198" x2="3.1242" y2="-5.8674" layer="200"/>
<rectangle x1="3.429" y1="-6.0198" x2="3.7338" y2="-5.8674" layer="200"/>
<rectangle x1="4.953" y1="-6.0198" x2="6.1722" y2="-5.8674" layer="200"/>
<rectangle x1="6.7818" y1="-6.0198" x2="7.0866" y2="-5.8674" layer="200"/>
<rectangle x1="7.3914" y1="-6.0198" x2="7.5438" y2="-5.8674" layer="200"/>
<rectangle x1="7.8486" y1="-6.0198" x2="8.6106" y2="-5.8674" layer="200"/>
<rectangle x1="-3.1242" y1="-5.8674" x2="-2.5146" y2="-5.715" layer="200"/>
<rectangle x1="-1.4478" y1="-5.8674" x2="-1.2954" y2="-5.715" layer="200"/>
<rectangle x1="-0.9906" y1="-5.8674" x2="-0.6858" y2="-5.715" layer="200"/>
<rectangle x1="-0.2286" y1="-5.8674" x2="-0.0762" y2="-5.715" layer="200"/>
<rectangle x1="0.0762" y1="-5.8674" x2="0.2286" y2="-5.715" layer="200"/>
<rectangle x1="0.381" y1="-5.8674" x2="0.5334" y2="-5.715" layer="200"/>
<rectangle x1="0.6858" y1="-5.8674" x2="0.8382" y2="-5.715" layer="200"/>
<rectangle x1="1.4478" y1="-5.8674" x2="1.7526" y2="-5.715" layer="200"/>
<rectangle x1="2.5146" y1="-5.8674" x2="3.2766" y2="-5.715" layer="200"/>
<rectangle x1="3.429" y1="-5.8674" x2="3.5814" y2="-5.715" layer="200"/>
<rectangle x1="4.6482" y1="-5.8674" x2="5.1054" y2="-5.715" layer="200"/>
<rectangle x1="6.0198" y1="-5.8674" x2="6.477" y2="-5.715" layer="200"/>
<rectangle x1="6.9342" y1="-5.8674" x2="7.239" y2="-5.715" layer="200"/>
<rectangle x1="7.3914" y1="-5.8674" x2="7.6962" y2="-5.715" layer="200"/>
<rectangle x1="8.001" y1="-5.8674" x2="8.763" y2="-5.715" layer="200"/>
<rectangle x1="-3.7338" y1="-5.715" x2="-3.1242" y2="-5.5626" layer="200"/>
<rectangle x1="-2.8194" y1="-5.715" x2="-2.3622" y2="-5.5626" layer="200"/>
<rectangle x1="-1.4478" y1="-5.715" x2="-1.2954" y2="-5.5626" layer="200"/>
<rectangle x1="-0.9906" y1="-5.715" x2="-0.5334" y2="-5.5626" layer="200"/>
<rectangle x1="-0.2286" y1="-5.715" x2="-0.0762" y2="-5.5626" layer="200"/>
<rectangle x1="0.2286" y1="-5.715" x2="0.381" y2="-5.5626" layer="200"/>
<rectangle x1="0.6858" y1="-5.715" x2="0.8382" y2="-5.5626" layer="200"/>
<rectangle x1="2.667" y1="-5.715" x2="2.8194" y2="-5.5626" layer="200"/>
<rectangle x1="2.9718" y1="-5.715" x2="4.6482" y2="-5.5626" layer="200"/>
<rectangle x1="6.3246" y1="-5.715" x2="6.6294" y2="-5.5626" layer="200"/>
<rectangle x1="7.0866" y1="-5.715" x2="7.239" y2="-5.5626" layer="200"/>
<rectangle x1="7.5438" y1="-5.715" x2="7.6962" y2="-5.5626" layer="200"/>
<rectangle x1="8.3058" y1="-5.715" x2="8.763" y2="-5.5626" layer="200"/>
<rectangle x1="-4.0386" y1="-5.5626" x2="-3.5814" y2="-5.4102" layer="200"/>
<rectangle x1="-2.5146" y1="-5.5626" x2="-2.2098" y2="-5.4102" layer="200"/>
<rectangle x1="-1.6002" y1="-5.5626" x2="-1.143" y2="-5.4102" layer="200"/>
<rectangle x1="-0.9906" y1="-5.5626" x2="-0.5334" y2="-5.4102" layer="200"/>
<rectangle x1="-0.2286" y1="-5.5626" x2="-0.0762" y2="-5.4102" layer="200"/>
<rectangle x1="0.2286" y1="-5.5626" x2="0.381" y2="-5.4102" layer="200"/>
<rectangle x1="0.6858" y1="-5.5626" x2="0.8382" y2="-5.4102" layer="200"/>
<rectangle x1="3.1242" y1="-5.5626" x2="3.7338" y2="-5.4102" layer="200"/>
<rectangle x1="4.4958" y1="-5.5626" x2="4.8006" y2="-5.4102" layer="200"/>
<rectangle x1="6.6294" y1="-5.5626" x2="6.9342" y2="-5.4102" layer="200"/>
<rectangle x1="7.0866" y1="-5.5626" x2="7.3914" y2="-5.4102" layer="200"/>
<rectangle x1="7.5438" y1="-5.5626" x2="7.8486" y2="-5.4102" layer="200"/>
<rectangle x1="8.6106" y1="-5.5626" x2="8.9154" y2="-5.4102" layer="200"/>
<rectangle x1="-4.6482" y1="-5.4102" x2="-3.8862" y2="-5.2578" layer="200"/>
<rectangle x1="-2.5146" y1="-5.4102" x2="-2.0574" y2="-5.2578" layer="200"/>
<rectangle x1="-1.6002" y1="-5.4102" x2="-1.4478" y2="-5.2578" layer="200"/>
<rectangle x1="-1.2954" y1="-5.4102" x2="-0.5334" y2="-5.2578" layer="200"/>
<rectangle x1="-0.2286" y1="-5.4102" x2="-0.0762" y2="-5.2578" layer="200"/>
<rectangle x1="0.2286" y1="-5.4102" x2="0.381" y2="-5.2578" layer="200"/>
<rectangle x1="0.5334" y1="-5.4102" x2="0.8382" y2="-5.2578" layer="200"/>
<rectangle x1="1.6002" y1="-5.4102" x2="2.0574" y2="-5.2578" layer="200"/>
<rectangle x1="2.3622" y1="-5.4102" x2="2.8194" y2="-5.2578" layer="200"/>
<rectangle x1="3.429" y1="-5.4102" x2="3.8862" y2="-5.2578" layer="200"/>
<rectangle x1="4.6482" y1="-5.4102" x2="5.2578" y2="-5.2578" layer="200"/>
<rectangle x1="6.7818" y1="-5.4102" x2="7.3914" y2="-5.2578" layer="200"/>
<rectangle x1="7.6962" y1="-5.4102" x2="7.8486" y2="-5.2578" layer="200"/>
<rectangle x1="8.763" y1="-5.4102" x2="9.0678" y2="-5.2578" layer="200"/>
<rectangle x1="-5.1054" y1="-5.2578" x2="-4.4958" y2="-5.1054" layer="200"/>
<rectangle x1="-4.3434" y1="-5.2578" x2="-3.5814" y2="-5.1054" layer="200"/>
<rectangle x1="-2.9718" y1="-5.2578" x2="-2.8194" y2="-5.1054" layer="200"/>
<rectangle x1="-2.5146" y1="-5.2578" x2="-1.905" y2="-5.1054" layer="200"/>
<rectangle x1="-1.7526" y1="-5.2578" x2="-1.6002" y2="-5.1054" layer="200"/>
<rectangle x1="-1.143" y1="-5.2578" x2="-0.9906" y2="-5.1054" layer="200"/>
<rectangle x1="-0.6858" y1="-5.2578" x2="-0.5334" y2="-5.1054" layer="200"/>
<rectangle x1="-0.2286" y1="-5.2578" x2="-0.0762" y2="-5.1054" layer="200"/>
<rectangle x1="0.2286" y1="-5.2578" x2="0.6858" y2="-5.1054" layer="200"/>
<rectangle x1="1.2954" y1="-5.2578" x2="1.6002" y2="-5.1054" layer="200"/>
<rectangle x1="2.667" y1="-5.2578" x2="2.9718" y2="-5.1054" layer="200"/>
<rectangle x1="3.5814" y1="-5.2578" x2="3.8862" y2="-5.1054" layer="200"/>
<rectangle x1="4.191" y1="-5.2578" x2="4.3434" y2="-5.1054" layer="200"/>
<rectangle x1="4.6482" y1="-5.2578" x2="5.5626" y2="-5.1054" layer="200"/>
<rectangle x1="6.7818" y1="-5.2578" x2="6.9342" y2="-5.1054" layer="200"/>
<rectangle x1="7.239" y1="-5.2578" x2="7.3914" y2="-5.1054" layer="200"/>
<rectangle x1="9.0678" y1="-5.2578" x2="9.2202" y2="-5.1054" layer="200"/>
<rectangle x1="-5.5626" y1="-5.1054" x2="-4.953" y2="-4.953" layer="200"/>
<rectangle x1="-4.0386" y1="-5.1054" x2="-3.5814" y2="-4.953" layer="200"/>
<rectangle x1="-2.9718" y1="-5.1054" x2="-2.8194" y2="-4.953" layer="200"/>
<rectangle x1="-2.5146" y1="-5.1054" x2="-1.905" y2="-4.953" layer="200"/>
<rectangle x1="-1.7526" y1="-5.1054" x2="-1.6002" y2="-4.953" layer="200"/>
<rectangle x1="-1.2954" y1="-5.1054" x2="-0.9906" y2="-4.953" layer="200"/>
<rectangle x1="-0.8382" y1="-5.1054" x2="-0.5334" y2="-4.953" layer="200"/>
<rectangle x1="-0.0762" y1="-5.1054" x2="0.0762" y2="-4.953" layer="200"/>
<rectangle x1="0.381" y1="-5.1054" x2="0.5334" y2="-4.953" layer="200"/>
<rectangle x1="0.6858" y1="-5.1054" x2="1.2954" y2="-4.953" layer="200"/>
<rectangle x1="1.7526" y1="-5.1054" x2="2.0574" y2="-4.953" layer="200"/>
<rectangle x1="2.3622" y1="-5.1054" x2="2.5146" y2="-4.953" layer="200"/>
<rectangle x1="2.9718" y1="-5.1054" x2="3.1242" y2="-4.953" layer="200"/>
<rectangle x1="3.7338" y1="-5.1054" x2="3.8862" y2="-4.953" layer="200"/>
<rectangle x1="4.191" y1="-5.1054" x2="4.4958" y2="-4.953" layer="200"/>
<rectangle x1="4.8006" y1="-5.1054" x2="4.953" y2="-4.953" layer="200"/>
<rectangle x1="5.1054" y1="-5.1054" x2="5.715" y2="-4.953" layer="200"/>
<rectangle x1="6.9342" y1="-5.1054" x2="7.0866" y2="-4.953" layer="200"/>
<rectangle x1="7.239" y1="-5.1054" x2="7.5438" y2="-4.953" layer="200"/>
<rectangle x1="9.2202" y1="-5.1054" x2="9.525" y2="-4.953" layer="200"/>
<rectangle x1="-9.6774" y1="-4.953" x2="-8.763" y2="-4.8006" layer="200"/>
<rectangle x1="-6.1722" y1="-4.953" x2="-5.2578" y2="-4.8006" layer="200"/>
<rectangle x1="-3.8862" y1="-4.953" x2="-3.429" y2="-4.8006" layer="200"/>
<rectangle x1="-2.5146" y1="-4.953" x2="-2.2098" y2="-4.8006" layer="200"/>
<rectangle x1="-2.0574" y1="-4.953" x2="-1.905" y2="-4.8006" layer="200"/>
<rectangle x1="-1.7526" y1="-4.953" x2="-1.6002" y2="-4.8006" layer="200"/>
<rectangle x1="-1.2954" y1="-4.953" x2="-0.9906" y2="-4.8006" layer="200"/>
<rectangle x1="-0.8382" y1="-4.953" x2="-0.5334" y2="-4.8006" layer="200"/>
<rectangle x1="-0.0762" y1="-4.953" x2="0.0762" y2="-4.8006" layer="200"/>
<rectangle x1="0.381" y1="-4.953" x2="1.6002" y2="-4.8006" layer="200"/>
<rectangle x1="2.2098" y1="-4.953" x2="2.8194" y2="-4.8006" layer="200"/>
<rectangle x1="3.1242" y1="-4.953" x2="3.429" y2="-4.8006" layer="200"/>
<rectangle x1="3.7338" y1="-4.953" x2="3.8862" y2="-4.8006" layer="200"/>
<rectangle x1="4.191" y1="-4.953" x2="4.4958" y2="-4.8006" layer="200"/>
<rectangle x1="4.8006" y1="-4.953" x2="4.953" y2="-4.8006" layer="200"/>
<rectangle x1="5.2578" y1="-4.953" x2="5.8674" y2="-4.8006" layer="200"/>
<rectangle x1="6.3246" y1="-4.953" x2="6.477" y2="-4.8006" layer="200"/>
<rectangle x1="6.9342" y1="-4.953" x2="7.0866" y2="-4.8006" layer="200"/>
<rectangle x1="7.239" y1="-4.953" x2="7.5438" y2="-4.8006" layer="200"/>
<rectangle x1="9.3726" y1="-4.953" x2="9.6774" y2="-4.8006" layer="200"/>
<rectangle x1="-9.9822" y1="-4.8006" x2="-9.3726" y2="-4.6482" layer="200"/>
<rectangle x1="-9.2202" y1="-4.8006" x2="-8.4582" y2="-4.6482" layer="200"/>
<rectangle x1="-6.6294" y1="-4.8006" x2="-6.0198" y2="-4.6482" layer="200"/>
<rectangle x1="-5.715" y1="-4.8006" x2="-4.953" y2="-4.6482" layer="200"/>
<rectangle x1="-4.3434" y1="-4.8006" x2="-4.191" y2="-4.6482" layer="200"/>
<rectangle x1="-3.8862" y1="-4.8006" x2="-3.429" y2="-4.6482" layer="200"/>
<rectangle x1="-3.1242" y1="-4.8006" x2="-2.9718" y2="-4.6482" layer="200"/>
<rectangle x1="-2.5146" y1="-4.8006" x2="-2.3622" y2="-4.6482" layer="200"/>
<rectangle x1="-2.2098" y1="-4.8006" x2="-1.905" y2="-4.6482" layer="200"/>
<rectangle x1="-1.6002" y1="-4.8006" x2="-1.4478" y2="-4.6482" layer="200"/>
<rectangle x1="-1.143" y1="-4.8006" x2="0.0762" y2="-4.6482" layer="200"/>
<rectangle x1="0.381" y1="-4.8006" x2="0.8382" y2="-4.6482" layer="200"/>
<rectangle x1="1.143" y1="-4.8006" x2="1.4478" y2="-4.6482" layer="200"/>
<rectangle x1="1.6002" y1="-4.8006" x2="1.7526" y2="-4.6482" layer="200"/>
<rectangle x1="2.3622" y1="-4.8006" x2="2.5146" y2="-4.6482" layer="200"/>
<rectangle x1="2.8194" y1="-4.8006" x2="2.9718" y2="-4.6482" layer="200"/>
<rectangle x1="3.2766" y1="-4.8006" x2="3.5814" y2="-4.6482" layer="200"/>
<rectangle x1="3.7338" y1="-4.8006" x2="3.8862" y2="-4.6482" layer="200"/>
<rectangle x1="4.3434" y1="-4.8006" x2="4.4958" y2="-4.6482" layer="200"/>
<rectangle x1="4.8006" y1="-4.8006" x2="4.953" y2="-4.6482" layer="200"/>
<rectangle x1="5.4102" y1="-4.8006" x2="6.0198" y2="-4.6482" layer="200"/>
<rectangle x1="6.477" y1="-4.8006" x2="6.6294" y2="-4.6482" layer="200"/>
<rectangle x1="6.9342" y1="-4.8006" x2="7.0866" y2="-4.6482" layer="200"/>
<rectangle x1="7.239" y1="-4.8006" x2="7.5438" y2="-4.6482" layer="200"/>
<rectangle x1="9.6774" y1="-4.8006" x2="9.8298" y2="-4.6482" layer="200"/>
<rectangle x1="-10.1346" y1="-4.6482" x2="-9.6774" y2="-4.4958" layer="200"/>
<rectangle x1="-9.2202" y1="-4.6482" x2="-8.9154" y2="-4.4958" layer="200"/>
<rectangle x1="-8.763" y1="-4.6482" x2="-8.1534" y2="-4.4958" layer="200"/>
<rectangle x1="-5.2578" y1="-4.6482" x2="-4.953" y2="-4.4958" layer="200"/>
<rectangle x1="-4.3434" y1="-4.6482" x2="-3.429" y2="-4.4958" layer="200"/>
<rectangle x1="-3.1242" y1="-4.6482" x2="-2.9718" y2="-4.4958" layer="200"/>
<rectangle x1="-2.667" y1="-4.6482" x2="-2.5146" y2="-4.4958" layer="200"/>
<rectangle x1="-2.2098" y1="-4.6482" x2="-2.0574" y2="-4.4958" layer="200"/>
<rectangle x1="-1.4478" y1="-4.6482" x2="-1.2954" y2="-4.4958" layer="200"/>
<rectangle x1="-0.9906" y1="-4.6482" x2="0.5334" y2="-4.4958" layer="200"/>
<rectangle x1="0.6858" y1="-4.6482" x2="0.9906" y2="-4.4958" layer="200"/>
<rectangle x1="2.3622" y1="-4.6482" x2="2.667" y2="-4.4958" layer="200"/>
<rectangle x1="2.9718" y1="-4.6482" x2="3.1242" y2="-4.4958" layer="200"/>
<rectangle x1="3.2766" y1="-4.6482" x2="3.5814" y2="-4.4958" layer="200"/>
<rectangle x1="3.7338" y1="-4.6482" x2="3.8862" y2="-4.4958" layer="200"/>
<rectangle x1="4.3434" y1="-4.6482" x2="4.4958" y2="-4.4958" layer="200"/>
<rectangle x1="4.8006" y1="-4.6482" x2="4.953" y2="-4.4958" layer="200"/>
<rectangle x1="5.5626" y1="-4.6482" x2="6.0198" y2="-4.4958" layer="200"/>
<rectangle x1="6.477" y1="-4.6482" x2="6.6294" y2="-4.4958" layer="200"/>
<rectangle x1="7.0866" y1="-4.6482" x2="7.5438" y2="-4.4958" layer="200"/>
<rectangle x1="9.6774" y1="-4.6482" x2="10.1346" y2="-4.4958" layer="200"/>
<rectangle x1="-10.287" y1="-4.4958" x2="-9.525" y2="-4.3434" layer="200"/>
<rectangle x1="-9.2202" y1="-4.4958" x2="-8.9154" y2="-4.3434" layer="200"/>
<rectangle x1="-8.4582" y1="-4.4958" x2="-8.001" y2="-4.3434" layer="200"/>
<rectangle x1="-7.3914" y1="-4.4958" x2="-6.6294" y2="-4.3434" layer="200"/>
<rectangle x1="-5.1054" y1="-4.4958" x2="-4.8006" y2="-4.3434" layer="200"/>
<rectangle x1="-4.4958" y1="-4.4958" x2="-4.3434" y2="-4.3434" layer="200"/>
<rectangle x1="-4.0386" y1="-4.4958" x2="-3.7338" y2="-4.3434" layer="200"/>
<rectangle x1="-3.5814" y1="-4.4958" x2="-3.429" y2="-4.3434" layer="200"/>
<rectangle x1="-3.1242" y1="-4.4958" x2="-2.9718" y2="-4.3434" layer="200"/>
<rectangle x1="-2.667" y1="-4.4958" x2="-2.5146" y2="-4.3434" layer="200"/>
<rectangle x1="-2.3622" y1="-4.4958" x2="-2.0574" y2="-4.3434" layer="200"/>
<rectangle x1="-1.4478" y1="-4.4958" x2="-1.2954" y2="-4.3434" layer="200"/>
<rectangle x1="-0.9906" y1="-4.4958" x2="-0.6858" y2="-4.3434" layer="200"/>
<rectangle x1="-0.381" y1="-4.4958" x2="-0.0762" y2="-4.3434" layer="200"/>
<rectangle x1="0.6858" y1="-4.4958" x2="0.9906" y2="-4.3434" layer="200"/>
<rectangle x1="2.667" y1="-4.4958" x2="2.9718" y2="-4.3434" layer="200"/>
<rectangle x1="3.429" y1="-4.4958" x2="3.8862" y2="-4.3434" layer="200"/>
<rectangle x1="4.3434" y1="-4.4958" x2="4.4958" y2="-4.3434" layer="200"/>
<rectangle x1="4.8006" y1="-4.4958" x2="4.953" y2="-4.3434" layer="200"/>
<rectangle x1="5.715" y1="-4.4958" x2="6.0198" y2="-4.3434" layer="200"/>
<rectangle x1="6.6294" y1="-4.4958" x2="6.7818" y2="-4.3434" layer="200"/>
<rectangle x1="6.9342" y1="-4.4958" x2="7.3914" y2="-4.3434" layer="200"/>
<rectangle x1="9.6774" y1="-4.4958" x2="9.9822" y2="-4.3434" layer="200"/>
<rectangle x1="-10.4394" y1="-4.3434" x2="-9.3726" y2="-4.191" layer="200"/>
<rectangle x1="-9.2202" y1="-4.3434" x2="-8.9154" y2="-4.191" layer="200"/>
<rectangle x1="-8.3058" y1="-4.3434" x2="-7.239" y2="-4.191" layer="200"/>
<rectangle x1="-7.0866" y1="-4.3434" x2="-6.3246" y2="-4.191" layer="200"/>
<rectangle x1="-5.715" y1="-4.3434" x2="-5.5626" y2="-4.191" layer="200"/>
<rectangle x1="-5.2578" y1="-4.3434" x2="-4.8006" y2="-4.191" layer="200"/>
<rectangle x1="-4.4958" y1="-4.3434" x2="-4.3434" y2="-4.191" layer="200"/>
<rectangle x1="-4.0386" y1="-4.3434" x2="-3.7338" y2="-4.191" layer="200"/>
<rectangle x1="-3.5814" y1="-4.3434" x2="-3.429" y2="-4.191" layer="200"/>
<rectangle x1="-2.9718" y1="-4.3434" x2="-2.8194" y2="-4.191" layer="200"/>
<rectangle x1="-2.667" y1="-4.3434" x2="-1.6002" y2="-4.191" layer="200"/>
<rectangle x1="-1.4478" y1="-4.3434" x2="-1.2954" y2="-4.191" layer="200"/>
<rectangle x1="-0.9906" y1="-4.3434" x2="-0.6858" y2="-4.191" layer="200"/>
<rectangle x1="-0.381" y1="-4.3434" x2="0.0762" y2="-4.191" layer="200"/>
<rectangle x1="0.6858" y1="-4.3434" x2="0.9906" y2="-4.191" layer="200"/>
<rectangle x1="1.6002" y1="-4.3434" x2="2.0574" y2="-4.191" layer="200"/>
<rectangle x1="2.8194" y1="-4.3434" x2="2.9718" y2="-4.191" layer="200"/>
<rectangle x1="3.429" y1="-4.3434" x2="3.8862" y2="-4.191" layer="200"/>
<rectangle x1="4.3434" y1="-4.3434" x2="4.4958" y2="-4.191" layer="200"/>
<rectangle x1="4.6482" y1="-4.3434" x2="4.953" y2="-4.191" layer="200"/>
<rectangle x1="5.715" y1="-4.3434" x2="6.0198" y2="-4.191" layer="200"/>
<rectangle x1="6.6294" y1="-4.3434" x2="6.7818" y2="-4.191" layer="200"/>
<rectangle x1="7.0866" y1="-4.3434" x2="7.5438" y2="-4.191" layer="200"/>
<rectangle x1="9.8298" y1="-4.3434" x2="9.9822" y2="-4.191" layer="200"/>
<rectangle x1="-10.5918" y1="-4.191" x2="-9.8298" y2="-4.0386" layer="200"/>
<rectangle x1="-9.6774" y1="-4.191" x2="-9.3726" y2="-4.0386" layer="200"/>
<rectangle x1="-9.2202" y1="-4.191" x2="-8.9154" y2="-4.0386" layer="200"/>
<rectangle x1="-8.4582" y1="-4.191" x2="-8.001" y2="-4.0386" layer="200"/>
<rectangle x1="-7.8486" y1="-4.191" x2="-7.6962" y2="-4.0386" layer="200"/>
<rectangle x1="-7.0866" y1="-4.191" x2="-6.7818" y2="-4.0386" layer="200"/>
<rectangle x1="-6.6294" y1="-4.191" x2="-6.3246" y2="-4.0386" layer="200"/>
<rectangle x1="-5.715" y1="-4.191" x2="-5.4102" y2="-4.0386" layer="200"/>
<rectangle x1="-5.2578" y1="-4.191" x2="-4.8006" y2="-4.0386" layer="200"/>
<rectangle x1="-4.4958" y1="-4.191" x2="-4.3434" y2="-4.0386" layer="200"/>
<rectangle x1="-4.0386" y1="-4.191" x2="-3.8862" y2="-4.0386" layer="200"/>
<rectangle x1="-3.5814" y1="-4.191" x2="-3.429" y2="-4.0386" layer="200"/>
<rectangle x1="-2.9718" y1="-4.191" x2="-2.8194" y2="-4.0386" layer="200"/>
<rectangle x1="-2.5146" y1="-4.191" x2="-2.2098" y2="-4.0386" layer="200"/>
<rectangle x1="-1.905" y1="-4.191" x2="-1.143" y2="-4.0386" layer="200"/>
<rectangle x1="-0.9906" y1="-4.191" x2="-0.6858" y2="-4.0386" layer="200"/>
<rectangle x1="-0.381" y1="-4.191" x2="0.2286" y2="-4.0386" layer="200"/>
<rectangle x1="0.6858" y1="-4.191" x2="0.8382" y2="-4.0386" layer="200"/>
<rectangle x1="1.905" y1="-4.191" x2="2.0574" y2="-4.0386" layer="200"/>
<rectangle x1="3.5814" y1="-4.191" x2="3.8862" y2="-4.0386" layer="200"/>
<rectangle x1="4.3434" y1="-4.191" x2="5.1054" y2="-4.0386" layer="200"/>
<rectangle x1="5.715" y1="-4.191" x2="6.0198" y2="-4.0386" layer="200"/>
<rectangle x1="6.9342" y1="-4.191" x2="7.5438" y2="-4.0386" layer="200"/>
<rectangle x1="9.9822" y1="-4.191" x2="10.287" y2="-4.0386" layer="200"/>
<rectangle x1="-10.5918" y1="-4.0386" x2="-10.1346" y2="-3.8862" layer="200"/>
<rectangle x1="-9.6774" y1="-4.0386" x2="-9.3726" y2="-3.8862" layer="200"/>
<rectangle x1="-9.2202" y1="-4.0386" x2="-8.001" y2="-3.8862" layer="200"/>
<rectangle x1="-7.0866" y1="-4.0386" x2="-6.7818" y2="-3.8862" layer="200"/>
<rectangle x1="-6.477" y1="-4.0386" x2="-6.1722" y2="-3.8862" layer="200"/>
<rectangle x1="-5.8674" y1="-4.0386" x2="-5.715" y2="-3.8862" layer="200"/>
<rectangle x1="-5.4102" y1="-4.0386" x2="-5.1054" y2="-3.8862" layer="200"/>
<rectangle x1="-4.953" y1="-4.0386" x2="-4.8006" y2="-3.8862" layer="200"/>
<rectangle x1="-4.4958" y1="-4.0386" x2="-4.3434" y2="-3.8862" layer="200"/>
<rectangle x1="-4.0386" y1="-4.0386" x2="-3.8862" y2="-3.8862" layer="200"/>
<rectangle x1="-3.7338" y1="-4.0386" x2="-3.429" y2="-3.8862" layer="200"/>
<rectangle x1="-2.9718" y1="-4.0386" x2="-2.8194" y2="-3.8862" layer="200"/>
<rectangle x1="-2.3622" y1="-4.0386" x2="-2.2098" y2="-3.8862" layer="200"/>
<rectangle x1="-1.7526" y1="-4.0386" x2="-1.4478" y2="-3.8862" layer="200"/>
<rectangle x1="-0.9906" y1="-4.0386" x2="-0.8382" y2="-3.8862" layer="200"/>
<rectangle x1="-0.6858" y1="-4.0386" x2="-0.5334" y2="-3.8862" layer="200"/>
<rectangle x1="-0.381" y1="-4.0386" x2="0.2286" y2="-3.8862" layer="200"/>
<rectangle x1="0.6858" y1="-4.0386" x2="0.8382" y2="-3.8862" layer="200"/>
<rectangle x1="1.905" y1="-4.0386" x2="2.0574" y2="-3.8862" layer="200"/>
<rectangle x1="3.5814" y1="-4.0386" x2="4.0386" y2="-3.8862" layer="200"/>
<rectangle x1="4.3434" y1="-4.0386" x2="5.2578" y2="-3.8862" layer="200"/>
<rectangle x1="5.715" y1="-4.0386" x2="6.1722" y2="-3.8862" layer="200"/>
<rectangle x1="6.477" y1="-4.0386" x2="6.6294" y2="-3.8862" layer="200"/>
<rectangle x1="7.0866" y1="-4.0386" x2="7.5438" y2="-3.8862" layer="200"/>
<rectangle x1="9.9822" y1="-4.0386" x2="10.4394" y2="-3.8862" layer="200"/>
<rectangle x1="-10.7442" y1="-3.8862" x2="-10.4394" y2="-3.7338" layer="200"/>
<rectangle x1="-10.287" y1="-3.8862" x2="-9.9822" y2="-3.7338" layer="200"/>
<rectangle x1="-9.8298" y1="-3.8862" x2="-9.525" y2="-3.7338" layer="200"/>
<rectangle x1="-9.2202" y1="-3.8862" x2="-8.763" y2="-3.7338" layer="200"/>
<rectangle x1="-8.3058" y1="-3.8862" x2="-7.6962" y2="-3.7338" layer="200"/>
<rectangle x1="-7.0866" y1="-3.8862" x2="-6.7818" y2="-3.7338" layer="200"/>
<rectangle x1="-6.6294" y1="-3.8862" x2="-6.477" y2="-3.7338" layer="200"/>
<rectangle x1="-6.3246" y1="-3.8862" x2="-6.1722" y2="-3.7338" layer="200"/>
<rectangle x1="-5.8674" y1="-3.8862" x2="-5.715" y2="-3.7338" layer="200"/>
<rectangle x1="-5.4102" y1="-3.8862" x2="-5.1054" y2="-3.7338" layer="200"/>
<rectangle x1="-4.953" y1="-3.8862" x2="-4.8006" y2="-3.7338" layer="200"/>
<rectangle x1="-4.3434" y1="-3.8862" x2="-4.191" y2="-3.7338" layer="200"/>
<rectangle x1="-4.0386" y1="-3.8862" x2="-2.667" y2="-3.7338" layer="200"/>
<rectangle x1="-2.5146" y1="-3.8862" x2="-2.0574" y2="-3.7338" layer="200"/>
<rectangle x1="-1.7526" y1="-3.8862" x2="-1.2954" y2="-3.7338" layer="200"/>
<rectangle x1="-0.9906" y1="-3.8862" x2="-0.8382" y2="-3.7338" layer="200"/>
<rectangle x1="-0.5334" y1="-3.8862" x2="-0.2286" y2="-3.7338" layer="200"/>
<rectangle x1="0.0762" y1="-3.8862" x2="0.2286" y2="-3.7338" layer="200"/>
<rectangle x1="0.6858" y1="-3.8862" x2="0.8382" y2="-3.7338" layer="200"/>
<rectangle x1="1.905" y1="-3.8862" x2="2.5146" y2="-3.7338" layer="200"/>
<rectangle x1="2.8194" y1="-3.8862" x2="3.1242" y2="-3.7338" layer="200"/>
<rectangle x1="3.429" y1="-3.8862" x2="4.191" y2="-3.7338" layer="200"/>
<rectangle x1="4.4958" y1="-3.8862" x2="5.2578" y2="-3.7338" layer="200"/>
<rectangle x1="5.4102" y1="-3.8862" x2="6.0198" y2="-3.7338" layer="200"/>
<rectangle x1="6.6294" y1="-3.8862" x2="6.7818" y2="-3.7338" layer="200"/>
<rectangle x1="6.9342" y1="-3.8862" x2="7.3914" y2="-3.7338" layer="200"/>
<rectangle x1="7.5438" y1="-3.8862" x2="7.6962" y2="-3.7338" layer="200"/>
<rectangle x1="10.1346" y1="-3.8862" x2="10.4394" y2="-3.7338" layer="200"/>
<rectangle x1="-10.7442" y1="-3.7338" x2="-10.4394" y2="-3.5814" layer="200"/>
<rectangle x1="-10.287" y1="-3.7338" x2="-9.525" y2="-3.5814" layer="200"/>
<rectangle x1="-8.3058" y1="-3.7338" x2="-8.1534" y2="-3.5814" layer="200"/>
<rectangle x1="-7.8486" y1="-3.7338" x2="-7.5438" y2="-3.5814" layer="200"/>
<rectangle x1="-7.0866" y1="-3.7338" x2="-6.0198" y2="-3.5814" layer="200"/>
<rectangle x1="-5.8674" y1="-3.7338" x2="-5.715" y2="-3.5814" layer="200"/>
<rectangle x1="-5.4102" y1="-3.7338" x2="-5.2578" y2="-3.5814" layer="200"/>
<rectangle x1="-4.953" y1="-3.7338" x2="-4.8006" y2="-3.5814" layer="200"/>
<rectangle x1="-4.3434" y1="-3.7338" x2="-4.191" y2="-3.5814" layer="200"/>
<rectangle x1="-3.8862" y1="-3.7338" x2="-3.429" y2="-3.5814" layer="200"/>
<rectangle x1="-3.1242" y1="-3.7338" x2="-2.667" y2="-3.5814" layer="200"/>
<rectangle x1="-2.3622" y1="-3.7338" x2="-2.0574" y2="-3.5814" layer="200"/>
<rectangle x1="-1.7526" y1="-3.7338" x2="-1.2954" y2="-3.5814" layer="200"/>
<rectangle x1="-0.9906" y1="-3.7338" x2="-0.8382" y2="-3.5814" layer="200"/>
<rectangle x1="-0.5334" y1="-3.7338" x2="-0.381" y2="-3.5814" layer="200"/>
<rectangle x1="-0.0762" y1="-3.7338" x2="0.0762" y2="-3.5814" layer="200"/>
<rectangle x1="0.6858" y1="-3.7338" x2="0.8382" y2="-3.5814" layer="200"/>
<rectangle x1="1.2954" y1="-3.7338" x2="2.9718" y2="-3.5814" layer="200"/>
<rectangle x1="3.429" y1="-3.7338" x2="3.8862" y2="-3.5814" layer="200"/>
<rectangle x1="4.191" y1="-3.7338" x2="4.8006" y2="-3.5814" layer="200"/>
<rectangle x1="4.953" y1="-3.7338" x2="6.0198" y2="-3.5814" layer="200"/>
<rectangle x1="6.6294" y1="-3.7338" x2="6.7818" y2="-3.5814" layer="200"/>
<rectangle x1="7.0866" y1="-3.7338" x2="7.3914" y2="-3.5814" layer="200"/>
<rectangle x1="7.5438" y1="-3.7338" x2="7.6962" y2="-3.5814" layer="200"/>
<rectangle x1="9.9822" y1="-3.7338" x2="10.1346" y2="-3.5814" layer="200"/>
<rectangle x1="-10.7442" y1="-3.5814" x2="-10.4394" y2="-3.429" layer="200"/>
<rectangle x1="-10.1346" y1="-3.5814" x2="-9.8298" y2="-3.429" layer="200"/>
<rectangle x1="-9.6774" y1="-3.5814" x2="-9.0678" y2="-3.429" layer="200"/>
<rectangle x1="-8.3058" y1="-3.5814" x2="-8.1534" y2="-3.429" layer="200"/>
<rectangle x1="-7.8486" y1="-3.5814" x2="-7.5438" y2="-3.429" layer="200"/>
<rectangle x1="-7.239" y1="-3.5814" x2="-7.0866" y2="-3.429" layer="200"/>
<rectangle x1="-6.6294" y1="-3.5814" x2="-6.477" y2="-3.429" layer="200"/>
<rectangle x1="-6.3246" y1="-3.5814" x2="-6.0198" y2="-3.429" layer="200"/>
<rectangle x1="-5.8674" y1="-3.5814" x2="-5.715" y2="-3.429" layer="200"/>
<rectangle x1="-5.4102" y1="-3.5814" x2="-5.2578" y2="-3.429" layer="200"/>
<rectangle x1="-5.1054" y1="-3.5814" x2="-4.8006" y2="-3.429" layer="200"/>
<rectangle x1="-4.3434" y1="-3.5814" x2="-4.191" y2="-3.429" layer="200"/>
<rectangle x1="-3.8862" y1="-3.5814" x2="-3.429" y2="-3.429" layer="200"/>
<rectangle x1="-3.1242" y1="-3.5814" x2="-2.8194" y2="-3.429" layer="200"/>
<rectangle x1="-2.3622" y1="-3.5814" x2="-2.2098" y2="-3.429" layer="200"/>
<rectangle x1="-1.905" y1="-3.5814" x2="-1.6002" y2="-3.429" layer="200"/>
<rectangle x1="-1.4478" y1="-3.5814" x2="-1.2954" y2="-3.429" layer="200"/>
<rectangle x1="-0.9906" y1="-3.5814" x2="-0.8382" y2="-3.429" layer="200"/>
<rectangle x1="-0.5334" y1="-3.5814" x2="-0.381" y2="-3.429" layer="200"/>
<rectangle x1="-0.2286" y1="-3.5814" x2="0.0762" y2="-3.429" layer="200"/>
<rectangle x1="0.6858" y1="-3.5814" x2="0.8382" y2="-3.429" layer="200"/>
<rectangle x1="0.9906" y1="-3.5814" x2="1.6002" y2="-3.429" layer="200"/>
<rectangle x1="2.667" y1="-3.5814" x2="3.1242" y2="-3.429" layer="200"/>
<rectangle x1="3.5814" y1="-3.5814" x2="3.8862" y2="-3.429" layer="200"/>
<rectangle x1="4.3434" y1="-3.5814" x2="4.8006" y2="-3.429" layer="200"/>
<rectangle x1="5.1054" y1="-3.5814" x2="6.1722" y2="-3.429" layer="200"/>
<rectangle x1="6.3246" y1="-3.5814" x2="6.477" y2="-3.429" layer="200"/>
<rectangle x1="6.6294" y1="-3.5814" x2="6.7818" y2="-3.429" layer="200"/>
<rectangle x1="7.0866" y1="-3.5814" x2="7.3914" y2="-3.429" layer="200"/>
<rectangle x1="7.5438" y1="-3.5814" x2="7.6962" y2="-3.429" layer="200"/>
<rectangle x1="10.1346" y1="-3.5814" x2="10.4394" y2="-3.429" layer="200"/>
<rectangle x1="-10.7442" y1="-3.429" x2="-10.4394" y2="-3.2766" layer="200"/>
<rectangle x1="-9.6774" y1="-3.429" x2="-9.525" y2="-3.2766" layer="200"/>
<rectangle x1="-9.2202" y1="-3.429" x2="-8.9154" y2="-3.2766" layer="200"/>
<rectangle x1="-8.3058" y1="-3.429" x2="-8.1534" y2="-3.2766" layer="200"/>
<rectangle x1="-7.8486" y1="-3.429" x2="-7.3914" y2="-3.2766" layer="200"/>
<rectangle x1="-7.239" y1="-3.429" x2="-7.0866" y2="-3.2766" layer="200"/>
<rectangle x1="-6.7818" y1="-3.429" x2="-6.477" y2="-3.2766" layer="200"/>
<rectangle x1="-6.3246" y1="-3.429" x2="-6.1722" y2="-3.2766" layer="200"/>
<rectangle x1="-5.715" y1="-3.429" x2="-5.5626" y2="-3.2766" layer="200"/>
<rectangle x1="-5.2578" y1="-3.429" x2="-4.191" y2="-3.2766" layer="200"/>
<rectangle x1="-4.0386" y1="-3.429" x2="-3.429" y2="-3.2766" layer="200"/>
<rectangle x1="-3.1242" y1="-3.429" x2="-2.667" y2="-3.2766" layer="200"/>
<rectangle x1="-2.3622" y1="-3.429" x2="-2.2098" y2="-3.2766" layer="200"/>
<rectangle x1="-1.905" y1="-3.429" x2="-1.6002" y2="-3.2766" layer="200"/>
<rectangle x1="-1.4478" y1="-3.429" x2="-1.2954" y2="-3.2766" layer="200"/>
<rectangle x1="-0.9906" y1="-3.429" x2="-0.6858" y2="-3.2766" layer="200"/>
<rectangle x1="-0.5334" y1="-3.429" x2="0.9906" y2="-3.2766" layer="200"/>
<rectangle x1="2.9718" y1="-3.429" x2="3.8862" y2="-3.2766" layer="200"/>
<rectangle x1="4.6482" y1="-3.429" x2="4.953" y2="-3.2766" layer="200"/>
<rectangle x1="5.2578" y1="-3.429" x2="6.1722" y2="-3.2766" layer="200"/>
<rectangle x1="6.3246" y1="-3.429" x2="6.477" y2="-3.2766" layer="200"/>
<rectangle x1="6.6294" y1="-3.429" x2="6.7818" y2="-3.2766" layer="200"/>
<rectangle x1="7.0866" y1="-3.429" x2="7.3914" y2="-3.2766" layer="200"/>
<rectangle x1="9.6774" y1="-3.429" x2="9.8298" y2="-3.2766" layer="200"/>
<rectangle x1="10.1346" y1="-3.429" x2="10.5918" y2="-3.2766" layer="200"/>
<rectangle x1="-10.7442" y1="-3.2766" x2="-10.4394" y2="-3.1242" layer="200"/>
<rectangle x1="-9.6774" y1="-3.2766" x2="-9.525" y2="-3.1242" layer="200"/>
<rectangle x1="-9.2202" y1="-3.2766" x2="-8.9154" y2="-3.1242" layer="200"/>
<rectangle x1="-8.4582" y1="-3.2766" x2="-8.3058" y2="-3.1242" layer="200"/>
<rectangle x1="-8.1534" y1="-3.2766" x2="-7.3914" y2="-3.1242" layer="200"/>
<rectangle x1="-7.239" y1="-3.2766" x2="-7.0866" y2="-3.1242" layer="200"/>
<rectangle x1="-6.7818" y1="-3.2766" x2="-6.6294" y2="-3.1242" layer="200"/>
<rectangle x1="-6.477" y1="-3.2766" x2="-6.1722" y2="-3.1242" layer="200"/>
<rectangle x1="-5.715" y1="-3.2766" x2="-5.5626" y2="-3.1242" layer="200"/>
<rectangle x1="-5.2578" y1="-3.2766" x2="-4.8006" y2="-3.1242" layer="200"/>
<rectangle x1="-4.6482" y1="-3.2766" x2="-4.0386" y2="-3.1242" layer="200"/>
<rectangle x1="-3.7338" y1="-3.2766" x2="-3.429" y2="-3.1242" layer="200"/>
<rectangle x1="-3.2766" y1="-3.2766" x2="-2.667" y2="-3.1242" layer="200"/>
<rectangle x1="-1.905" y1="-3.2766" x2="-1.7526" y2="-3.1242" layer="200"/>
<rectangle x1="-1.6002" y1="-3.2766" x2="-1.2954" y2="-3.1242" layer="200"/>
<rectangle x1="-0.8382" y1="-3.2766" x2="-0.6858" y2="-3.1242" layer="200"/>
<rectangle x1="-0.381" y1="-3.2766" x2="0.0762" y2="-3.1242" layer="200"/>
<rectangle x1="0.2286" y1="-3.2766" x2="0.6858" y2="-3.1242" layer="200"/>
<rectangle x1="1.6002" y1="-3.2766" x2="2.0574" y2="-3.1242" layer="200"/>
<rectangle x1="2.5146" y1="-3.2766" x2="2.667" y2="-3.1242" layer="200"/>
<rectangle x1="3.2766" y1="-3.2766" x2="3.8862" y2="-3.1242" layer="200"/>
<rectangle x1="4.953" y1="-3.2766" x2="6.1722" y2="-3.1242" layer="200"/>
<rectangle x1="6.3246" y1="-3.2766" x2="6.477" y2="-3.1242" layer="200"/>
<rectangle x1="6.6294" y1="-3.2766" x2="6.7818" y2="-3.1242" layer="200"/>
<rectangle x1="7.0866" y1="-3.2766" x2="7.3914" y2="-3.1242" layer="200"/>
<rectangle x1="9.8298" y1="-3.2766" x2="9.9822" y2="-3.1242" layer="200"/>
<rectangle x1="10.1346" y1="-3.2766" x2="10.8966" y2="-3.1242" layer="200"/>
<rectangle x1="-10.7442" y1="-3.1242" x2="-10.4394" y2="-2.9718" layer="200"/>
<rectangle x1="-9.6774" y1="-3.1242" x2="-9.525" y2="-2.9718" layer="200"/>
<rectangle x1="-9.0678" y1="-3.1242" x2="-8.763" y2="-2.9718" layer="200"/>
<rectangle x1="-8.4582" y1="-3.1242" x2="-8.3058" y2="-2.9718" layer="200"/>
<rectangle x1="-8.001" y1="-3.1242" x2="-7.8486" y2="-2.9718" layer="200"/>
<rectangle x1="-7.6962" y1="-3.1242" x2="-7.3914" y2="-2.9718" layer="200"/>
<rectangle x1="-7.0866" y1="-3.1242" x2="-6.9342" y2="-2.9718" layer="200"/>
<rectangle x1="-6.7818" y1="-3.1242" x2="-5.8674" y2="-2.9718" layer="200"/>
<rectangle x1="-5.715" y1="-3.1242" x2="-5.5626" y2="-2.9718" layer="200"/>
<rectangle x1="-5.2578" y1="-3.1242" x2="-4.8006" y2="-2.9718" layer="200"/>
<rectangle x1="-4.4958" y1="-3.1242" x2="-4.191" y2="-2.9718" layer="200"/>
<rectangle x1="-3.7338" y1="-3.1242" x2="-3.5814" y2="-2.9718" layer="200"/>
<rectangle x1="-3.2766" y1="-3.1242" x2="-2.9718" y2="-2.9718" layer="200"/>
<rectangle x1="-2.8194" y1="-3.1242" x2="-2.667" y2="-2.9718" layer="200"/>
<rectangle x1="-2.3622" y1="-3.1242" x2="-2.2098" y2="-2.9718" layer="200"/>
<rectangle x1="-1.905" y1="-3.1242" x2="-1.7526" y2="-2.9718" layer="200"/>
<rectangle x1="-1.6002" y1="-3.1242" x2="-1.4478" y2="-2.9718" layer="200"/>
<rectangle x1="-0.8382" y1="-3.1242" x2="-0.6858" y2="-2.9718" layer="200"/>
<rectangle x1="-0.381" y1="-3.1242" x2="0.0762" y2="-2.9718" layer="200"/>
<rectangle x1="0.381" y1="-3.1242" x2="0.6858" y2="-2.9718" layer="200"/>
<rectangle x1="1.2954" y1="-3.1242" x2="2.8194" y2="-2.9718" layer="200"/>
<rectangle x1="3.429" y1="-3.1242" x2="3.5814" y2="-2.9718" layer="200"/>
<rectangle x1="3.7338" y1="-3.1242" x2="3.8862" y2="-2.9718" layer="200"/>
<rectangle x1="5.1054" y1="-3.1242" x2="5.4102" y2="-2.9718" layer="200"/>
<rectangle x1="5.5626" y1="-3.1242" x2="6.1722" y2="-2.9718" layer="200"/>
<rectangle x1="6.3246" y1="-3.1242" x2="6.477" y2="-2.9718" layer="200"/>
<rectangle x1="6.6294" y1="-3.1242" x2="6.7818" y2="-2.9718" layer="200"/>
<rectangle x1="7.0866" y1="-3.1242" x2="7.3914" y2="-2.9718" layer="200"/>
<rectangle x1="10.1346" y1="-3.1242" x2="10.287" y2="-2.9718" layer="200"/>
<rectangle x1="10.4394" y1="-3.1242" x2="11.2014" y2="-2.9718" layer="200"/>
<rectangle x1="-10.7442" y1="-2.9718" x2="-10.4394" y2="-2.8194" layer="200"/>
<rectangle x1="-9.8298" y1="-2.9718" x2="-9.525" y2="-2.8194" layer="200"/>
<rectangle x1="-9.2202" y1="-2.9718" x2="-8.763" y2="-2.8194" layer="200"/>
<rectangle x1="-8.6106" y1="-2.9718" x2="-8.3058" y2="-2.8194" layer="200"/>
<rectangle x1="-8.1534" y1="-2.9718" x2="-7.8486" y2="-2.8194" layer="200"/>
<rectangle x1="-7.6962" y1="-2.9718" x2="-7.5438" y2="-2.8194" layer="200"/>
<rectangle x1="-7.0866" y1="-2.9718" x2="-6.9342" y2="-2.8194" layer="200"/>
<rectangle x1="-6.6294" y1="-2.9718" x2="-5.715" y2="-2.8194" layer="200"/>
<rectangle x1="-5.5626" y1="-2.9718" x2="-4.8006" y2="-2.8194" layer="200"/>
<rectangle x1="-4.4958" y1="-2.9718" x2="-4.0386" y2="-2.8194" layer="200"/>
<rectangle x1="-3.2766" y1="-2.9718" x2="-3.1242" y2="-2.8194" layer="200"/>
<rectangle x1="-2.8194" y1="-2.9718" x2="-2.667" y2="-2.8194" layer="200"/>
<rectangle x1="-2.3622" y1="-2.9718" x2="-2.0574" y2="-2.8194" layer="200"/>
<rectangle x1="-1.905" y1="-2.9718" x2="-0.6858" y2="-2.8194" layer="200"/>
<rectangle x1="-0.381" y1="-2.9718" x2="0.0762" y2="-2.8194" layer="200"/>
<rectangle x1="0.381" y1="-2.9718" x2="0.8382" y2="-2.8194" layer="200"/>
<rectangle x1="1.2954" y1="-2.9718" x2="2.9718" y2="-2.8194" layer="200"/>
<rectangle x1="3.7338" y1="-2.9718" x2="3.8862" y2="-2.8194" layer="200"/>
<rectangle x1="5.4102" y1="-2.9718" x2="6.1722" y2="-2.8194" layer="200"/>
<rectangle x1="6.3246" y1="-2.9718" x2="6.477" y2="-2.8194" layer="200"/>
<rectangle x1="6.6294" y1="-2.9718" x2="6.7818" y2="-2.8194" layer="200"/>
<rectangle x1="7.0866" y1="-2.9718" x2="7.3914" y2="-2.8194" layer="200"/>
<rectangle x1="10.1346" y1="-2.9718" x2="11.3538" y2="-2.8194" layer="200"/>
<rectangle x1="-10.7442" y1="-2.8194" x2="-10.4394" y2="-2.667" layer="200"/>
<rectangle x1="-9.8298" y1="-2.8194" x2="-9.6774" y2="-2.667" layer="200"/>
<rectangle x1="-9.3726" y1="-2.8194" x2="-8.763" y2="-2.667" layer="200"/>
<rectangle x1="-8.6106" y1="-2.8194" x2="-8.3058" y2="-2.667" layer="200"/>
<rectangle x1="-8.1534" y1="-2.8194" x2="-7.5438" y2="-2.667" layer="200"/>
<rectangle x1="-7.0866" y1="-2.8194" x2="-6.9342" y2="-2.667" layer="200"/>
<rectangle x1="-6.6294" y1="-2.8194" x2="-6.3246" y2="-2.667" layer="200"/>
<rectangle x1="-5.8674" y1="-2.8194" x2="-5.5626" y2="-2.667" layer="200"/>
<rectangle x1="-5.1054" y1="-2.8194" x2="-4.0386" y2="-2.667" layer="200"/>
<rectangle x1="-3.429" y1="-2.8194" x2="-3.1242" y2="-2.667" layer="200"/>
<rectangle x1="-2.9718" y1="-2.8194" x2="-2.667" y2="-2.667" layer="200"/>
<rectangle x1="-2.2098" y1="-2.8194" x2="-2.0574" y2="-2.667" layer="200"/>
<rectangle x1="-1.7526" y1="-2.8194" x2="-1.2954" y2="-2.667" layer="200"/>
<rectangle x1="-1.143" y1="-2.8194" x2="-0.0762" y2="-2.667" layer="200"/>
<rectangle x1="0.381" y1="-2.8194" x2="0.8382" y2="-2.667" layer="200"/>
<rectangle x1="1.2954" y1="-2.8194" x2="2.5146" y2="-2.667" layer="200"/>
<rectangle x1="2.667" y1="-2.8194" x2="3.2766" y2="-2.667" layer="200"/>
<rectangle x1="3.7338" y1="-2.8194" x2="3.8862" y2="-2.667" layer="200"/>
<rectangle x1="5.715" y1="-2.8194" x2="6.1722" y2="-2.667" layer="200"/>
<rectangle x1="6.3246" y1="-2.8194" x2="6.477" y2="-2.667" layer="200"/>
<rectangle x1="6.6294" y1="-2.8194" x2="6.7818" y2="-2.667" layer="200"/>
<rectangle x1="6.9342" y1="-2.8194" x2="7.3914" y2="-2.667" layer="200"/>
<rectangle x1="9.525" y1="-2.8194" x2="9.6774" y2="-2.667" layer="200"/>
<rectangle x1="10.1346" y1="-2.8194" x2="10.4394" y2="-2.667" layer="200"/>
<rectangle x1="10.5918" y1="-2.8194" x2="10.8966" y2="-2.667" layer="200"/>
<rectangle x1="11.049" y1="-2.8194" x2="11.5062" y2="-2.667" layer="200"/>
<rectangle x1="-10.7442" y1="-2.667" x2="-10.4394" y2="-2.5146" layer="200"/>
<rectangle x1="-9.8298" y1="-2.667" x2="-9.6774" y2="-2.5146" layer="200"/>
<rectangle x1="-9.3726" y1="-2.667" x2="-9.2202" y2="-2.5146" layer="200"/>
<rectangle x1="-9.0678" y1="-2.667" x2="-8.763" y2="-2.5146" layer="200"/>
<rectangle x1="-8.4582" y1="-2.667" x2="-8.3058" y2="-2.5146" layer="200"/>
<rectangle x1="-8.1534" y1="-2.667" x2="-7.3914" y2="-2.5146" layer="200"/>
<rectangle x1="-7.0866" y1="-2.667" x2="-6.9342" y2="-2.5146" layer="200"/>
<rectangle x1="-6.6294" y1="-2.667" x2="-6.3246" y2="-2.5146" layer="200"/>
<rectangle x1="-5.8674" y1="-2.667" x2="-5.5626" y2="-2.5146" layer="200"/>
<rectangle x1="-5.1054" y1="-2.667" x2="-4.953" y2="-2.5146" layer="200"/>
<rectangle x1="-4.6482" y1="-2.667" x2="-4.4958" y2="-2.5146" layer="200"/>
<rectangle x1="-4.191" y1="-2.667" x2="-4.0386" y2="-2.5146" layer="200"/>
<rectangle x1="-3.7338" y1="-2.667" x2="-3.5814" y2="-2.5146" layer="200"/>
<rectangle x1="-3.429" y1="-2.667" x2="-3.1242" y2="-2.5146" layer="200"/>
<rectangle x1="-2.9718" y1="-2.667" x2="-2.8194" y2="-2.5146" layer="200"/>
<rectangle x1="-2.2098" y1="-2.667" x2="-2.0574" y2="-2.5146" layer="200"/>
<rectangle x1="-1.7526" y1="-2.667" x2="-1.2954" y2="-2.5146" layer="200"/>
<rectangle x1="-0.9906" y1="-2.667" x2="-0.6858" y2="-2.5146" layer="200"/>
<rectangle x1="-0.2286" y1="-2.667" x2="-0.0762" y2="-2.5146" layer="200"/>
<rectangle x1="0.381" y1="-2.667" x2="0.5334" y2="-2.5146" layer="200"/>
<rectangle x1="0.6858" y1="-2.667" x2="0.8382" y2="-2.5146" layer="200"/>
<rectangle x1="1.2954" y1="-2.667" x2="1.6002" y2="-2.5146" layer="200"/>
<rectangle x1="2.3622" y1="-2.667" x2="2.667" y2="-2.5146" layer="200"/>
<rectangle x1="2.8194" y1="-2.667" x2="3.5814" y2="-2.5146" layer="200"/>
<rectangle x1="3.7338" y1="-2.667" x2="3.8862" y2="-2.5146" layer="200"/>
<rectangle x1="5.715" y1="-2.667" x2="6.1722" y2="-2.5146" layer="200"/>
<rectangle x1="6.3246" y1="-2.667" x2="6.477" y2="-2.5146" layer="200"/>
<rectangle x1="6.6294" y1="-2.667" x2="6.7818" y2="-2.5146" layer="200"/>
<rectangle x1="7.0866" y1="-2.667" x2="7.3914" y2="-2.5146" layer="200"/>
<rectangle x1="10.1346" y1="-2.667" x2="10.4394" y2="-2.5146" layer="200"/>
<rectangle x1="10.7442" y1="-2.667" x2="11.6586" y2="-2.5146" layer="200"/>
<rectangle x1="-10.5918" y1="-2.5146" x2="-10.1346" y2="-2.3622" layer="200"/>
<rectangle x1="-9.8298" y1="-2.5146" x2="-9.6774" y2="-2.3622" layer="200"/>
<rectangle x1="-9.3726" y1="-2.5146" x2="-9.2202" y2="-2.3622" layer="200"/>
<rectangle x1="-9.0678" y1="-2.5146" x2="-8.9154" y2="-2.3622" layer="200"/>
<rectangle x1="-8.001" y1="-2.5146" x2="-7.5438" y2="-2.3622" layer="200"/>
<rectangle x1="-7.3914" y1="-2.5146" x2="-6.6294" y2="-2.3622" layer="200"/>
<rectangle x1="-6.477" y1="-2.5146" x2="-6.1722" y2="-2.3622" layer="200"/>
<rectangle x1="-5.8674" y1="-2.5146" x2="-5.4102" y2="-2.3622" layer="200"/>
<rectangle x1="-5.2578" y1="-2.5146" x2="-5.1054" y2="-2.3622" layer="200"/>
<rectangle x1="-4.6482" y1="-2.5146" x2="-4.4958" y2="-2.3622" layer="200"/>
<rectangle x1="-4.3434" y1="-2.5146" x2="-4.0386" y2="-2.3622" layer="200"/>
<rectangle x1="-3.7338" y1="-2.5146" x2="-3.5814" y2="-2.3622" layer="200"/>
<rectangle x1="-3.2766" y1="-2.5146" x2="-2.0574" y2="-2.3622" layer="200"/>
<rectangle x1="-1.7526" y1="-2.5146" x2="-1.4478" y2="-2.3622" layer="200"/>
<rectangle x1="-0.9906" y1="-2.5146" x2="-0.5334" y2="-2.3622" layer="200"/>
<rectangle x1="-0.2286" y1="-2.5146" x2="-0.0762" y2="-2.3622" layer="200"/>
<rectangle x1="0.2286" y1="-2.5146" x2="0.5334" y2="-2.3622" layer="200"/>
<rectangle x1="0.6858" y1="-2.5146" x2="0.9906" y2="-2.3622" layer="200"/>
<rectangle x1="1.2954" y1="-2.5146" x2="2.0574" y2="-2.3622" layer="200"/>
<rectangle x1="2.5146" y1="-2.5146" x2="2.667" y2="-2.3622" layer="200"/>
<rectangle x1="3.1242" y1="-2.5146" x2="3.8862" y2="-2.3622" layer="200"/>
<rectangle x1="4.0386" y1="-2.5146" x2="4.191" y2="-2.3622" layer="200"/>
<rectangle x1="5.715" y1="-2.5146" x2="6.1722" y2="-2.3622" layer="200"/>
<rectangle x1="6.3246" y1="-2.5146" x2="6.477" y2="-2.3622" layer="200"/>
<rectangle x1="6.6294" y1="-2.5146" x2="6.7818" y2="-2.3622" layer="200"/>
<rectangle x1="7.0866" y1="-2.5146" x2="7.3914" y2="-2.3622" layer="200"/>
<rectangle x1="10.1346" y1="-2.5146" x2="10.4394" y2="-2.3622" layer="200"/>
<rectangle x1="10.8966" y1="-2.5146" x2="11.811" y2="-2.3622" layer="200"/>
<rectangle x1="-10.287" y1="-2.3622" x2="-10.1346" y2="-2.2098" layer="200"/>
<rectangle x1="-9.8298" y1="-2.3622" x2="-9.6774" y2="-2.2098" layer="200"/>
<rectangle x1="-9.525" y1="-2.3622" x2="-8.9154" y2="-2.2098" layer="200"/>
<rectangle x1="-8.763" y1="-2.3622" x2="-8.6106" y2="-2.2098" layer="200"/>
<rectangle x1="-7.8486" y1="-2.3622" x2="-7.5438" y2="-2.2098" layer="200"/>
<rectangle x1="-7.239" y1="-2.3622" x2="-6.9342" y2="-2.2098" layer="200"/>
<rectangle x1="-6.477" y1="-2.3622" x2="-6.0198" y2="-2.2098" layer="200"/>
<rectangle x1="-5.8674" y1="-2.3622" x2="-5.4102" y2="-2.2098" layer="200"/>
<rectangle x1="-5.2578" y1="-2.3622" x2="-5.1054" y2="-2.2098" layer="200"/>
<rectangle x1="-4.8006" y1="-2.3622" x2="-4.6482" y2="-2.2098" layer="200"/>
<rectangle x1="-4.3434" y1="-2.3622" x2="-4.191" y2="-2.2098" layer="200"/>
<rectangle x1="-3.5814" y1="-2.3622" x2="-3.429" y2="-2.2098" layer="200"/>
<rectangle x1="-3.1242" y1="-2.3622" x2="-2.667" y2="-2.2098" layer="200"/>
<rectangle x1="-2.5146" y1="-2.3622" x2="-1.905" y2="-2.2098" layer="200"/>
<rectangle x1="-1.6002" y1="-2.3622" x2="-1.4478" y2="-2.2098" layer="200"/>
<rectangle x1="-0.9906" y1="-2.3622" x2="-0.5334" y2="-2.2098" layer="200"/>
<rectangle x1="-0.381" y1="-2.3622" x2="-0.0762" y2="-2.2098" layer="200"/>
<rectangle x1="0.2286" y1="-2.3622" x2="0.381" y2="-2.2098" layer="200"/>
<rectangle x1="0.6858" y1="-2.3622" x2="0.8382" y2="-2.2098" layer="200"/>
<rectangle x1="1.4478" y1="-2.3622" x2="1.6002" y2="-2.2098" layer="200"/>
<rectangle x1="1.905" y1="-2.3622" x2="2.3622" y2="-2.2098" layer="200"/>
<rectangle x1="2.5146" y1="-2.3622" x2="2.667" y2="-2.2098" layer="200"/>
<rectangle x1="2.8194" y1="-2.3622" x2="3.1242" y2="-2.2098" layer="200"/>
<rectangle x1="3.2766" y1="-2.3622" x2="3.8862" y2="-2.2098" layer="200"/>
<rectangle x1="4.191" y1="-2.3622" x2="4.3434" y2="-2.2098" layer="200"/>
<rectangle x1="5.715" y1="-2.3622" x2="6.1722" y2="-2.2098" layer="200"/>
<rectangle x1="6.3246" y1="-2.3622" x2="6.477" y2="-2.2098" layer="200"/>
<rectangle x1="6.6294" y1="-2.3622" x2="6.7818" y2="-2.2098" layer="200"/>
<rectangle x1="7.0866" y1="-2.3622" x2="7.3914" y2="-2.2098" layer="200"/>
<rectangle x1="10.1346" y1="-2.3622" x2="10.4394" y2="-2.2098" layer="200"/>
<rectangle x1="11.049" y1="-2.3622" x2="11.9634" y2="-2.2098" layer="200"/>
<rectangle x1="-10.5918" y1="-2.2098" x2="-10.1346" y2="-2.0574" layer="200"/>
<rectangle x1="-9.8298" y1="-2.2098" x2="-9.525" y2="-2.0574" layer="200"/>
<rectangle x1="-9.3726" y1="-2.2098" x2="-8.4582" y2="-2.0574" layer="200"/>
<rectangle x1="-8.3058" y1="-2.2098" x2="-8.1534" y2="-2.0574" layer="200"/>
<rectangle x1="-8.001" y1="-2.2098" x2="-7.5438" y2="-2.0574" layer="200"/>
<rectangle x1="-7.239" y1="-2.2098" x2="-6.9342" y2="-2.0574" layer="200"/>
<rectangle x1="-6.6294" y1="-2.2098" x2="-6.477" y2="-2.0574" layer="200"/>
<rectangle x1="-6.0198" y1="-2.2098" x2="-5.715" y2="-2.0574" layer="200"/>
<rectangle x1="-5.5626" y1="-2.2098" x2="-5.4102" y2="-2.0574" layer="200"/>
<rectangle x1="-5.1054" y1="-2.2098" x2="-4.953" y2="-2.0574" layer="200"/>
<rectangle x1="-4.8006" y1="-2.2098" x2="-4.191" y2="-2.0574" layer="200"/>
<rectangle x1="-3.7338" y1="-2.2098" x2="-3.429" y2="-2.0574" layer="200"/>
<rectangle x1="-3.1242" y1="-2.2098" x2="-2.8194" y2="-2.0574" layer="200"/>
<rectangle x1="-2.5146" y1="-2.2098" x2="-2.2098" y2="-2.0574" layer="200"/>
<rectangle x1="-1.7526" y1="-2.2098" x2="-1.4478" y2="-2.0574" layer="200"/>
<rectangle x1="-1.2954" y1="-2.2098" x2="-0.5334" y2="-2.0574" layer="200"/>
<rectangle x1="-0.2286" y1="-2.2098" x2="-0.0762" y2="-2.0574" layer="200"/>
<rectangle x1="0.2286" y1="-2.2098" x2="0.381" y2="-2.0574" layer="200"/>
<rectangle x1="0.5334" y1="-2.2098" x2="0.8382" y2="-2.0574" layer="200"/>
<rectangle x1="1.905" y1="-2.2098" x2="2.0574" y2="-2.0574" layer="200"/>
<rectangle x1="2.2098" y1="-2.2098" x2="2.667" y2="-2.0574" layer="200"/>
<rectangle x1="3.1242" y1="-2.2098" x2="3.2766" y2="-2.0574" layer="200"/>
<rectangle x1="3.429" y1="-2.2098" x2="4.0386" y2="-2.0574" layer="200"/>
<rectangle x1="4.3434" y1="-2.2098" x2="4.4958" y2="-2.0574" layer="200"/>
<rectangle x1="5.715" y1="-2.2098" x2="6.1722" y2="-2.0574" layer="200"/>
<rectangle x1="6.3246" y1="-2.2098" x2="6.477" y2="-2.0574" layer="200"/>
<rectangle x1="6.6294" y1="-2.2098" x2="6.7818" y2="-2.0574" layer="200"/>
<rectangle x1="7.0866" y1="-2.2098" x2="7.3914" y2="-2.0574" layer="200"/>
<rectangle x1="10.1346" y1="-2.2098" x2="11.9634" y2="-2.0574" layer="200"/>
<rectangle x1="-10.7442" y1="-2.0574" x2="-10.287" y2="-1.905" layer="200"/>
<rectangle x1="-9.6774" y1="-2.0574" x2="-9.525" y2="-1.905" layer="200"/>
<rectangle x1="-9.2202" y1="-2.0574" x2="-8.9154" y2="-1.905" layer="200"/>
<rectangle x1="-8.6106" y1="-2.0574" x2="-8.001" y2="-1.905" layer="200"/>
<rectangle x1="-7.8486" y1="-2.0574" x2="-7.5438" y2="-1.905" layer="200"/>
<rectangle x1="-7.239" y1="-2.0574" x2="-6.7818" y2="-1.905" layer="200"/>
<rectangle x1="-6.6294" y1="-2.0574" x2="-6.477" y2="-1.905" layer="200"/>
<rectangle x1="-6.0198" y1="-2.0574" x2="-5.8674" y2="-1.905" layer="200"/>
<rectangle x1="-5.715" y1="-2.0574" x2="-5.4102" y2="-1.905" layer="200"/>
<rectangle x1="-5.1054" y1="-2.0574" x2="-4.953" y2="-1.905" layer="200"/>
<rectangle x1="-4.6482" y1="-2.0574" x2="-3.5814" y2="-1.905" layer="200"/>
<rectangle x1="-3.2766" y1="-2.0574" x2="-2.8194" y2="-1.905" layer="200"/>
<rectangle x1="-2.5146" y1="-2.0574" x2="-2.0574" y2="-1.905" layer="200"/>
<rectangle x1="-1.7526" y1="-2.0574" x2="-1.6002" y2="-1.905" layer="200"/>
<rectangle x1="-1.2954" y1="-2.0574" x2="-0.9906" y2="-1.905" layer="200"/>
<rectangle x1="-0.6858" y1="-2.0574" x2="-0.5334" y2="-1.905" layer="200"/>
<rectangle x1="-0.2286" y1="-2.0574" x2="-0.0762" y2="-1.905" layer="200"/>
<rectangle x1="0.2286" y1="-2.0574" x2="0.6858" y2="-1.905" layer="200"/>
<rectangle x1="1.905" y1="-2.0574" x2="2.0574" y2="-1.905" layer="200"/>
<rectangle x1="2.5146" y1="-2.0574" x2="2.9718" y2="-1.905" layer="200"/>
<rectangle x1="3.8862" y1="-2.0574" x2="4.191" y2="-1.905" layer="200"/>
<rectangle x1="4.4958" y1="-2.0574" x2="4.8006" y2="-1.905" layer="200"/>
<rectangle x1="5.715" y1="-2.0574" x2="6.1722" y2="-1.905" layer="200"/>
<rectangle x1="6.3246" y1="-2.0574" x2="6.477" y2="-1.905" layer="200"/>
<rectangle x1="6.6294" y1="-2.0574" x2="6.7818" y2="-1.905" layer="200"/>
<rectangle x1="7.0866" y1="-2.0574" x2="7.3914" y2="-1.905" layer="200"/>
<rectangle x1="7.6962" y1="-2.0574" x2="7.8486" y2="-1.905" layer="200"/>
<rectangle x1="10.1346" y1="-2.0574" x2="11.2014" y2="-1.905" layer="200"/>
<rectangle x1="11.6586" y1="-2.0574" x2="12.1158" y2="-1.905" layer="200"/>
<rectangle x1="-10.8966" y1="-1.905" x2="-10.5918" y2="-1.7526" layer="200"/>
<rectangle x1="-9.6774" y1="-1.905" x2="-9.525" y2="-1.7526" layer="200"/>
<rectangle x1="-9.2202" y1="-1.905" x2="-8.9154" y2="-1.7526" layer="200"/>
<rectangle x1="-8.6106" y1="-1.905" x2="-8.3058" y2="-1.7526" layer="200"/>
<rectangle x1="-7.8486" y1="-1.905" x2="-7.6962" y2="-1.7526" layer="200"/>
<rectangle x1="-7.5438" y1="-1.905" x2="-6.7818" y2="-1.7526" layer="200"/>
<rectangle x1="-6.6294" y1="-1.905" x2="-6.3246" y2="-1.7526" layer="200"/>
<rectangle x1="-5.715" y1="-1.905" x2="-5.5626" y2="-1.7526" layer="200"/>
<rectangle x1="-4.6482" y1="-1.905" x2="-4.191" y2="-1.7526" layer="200"/>
<rectangle x1="-3.8862" y1="-1.905" x2="-3.2766" y2="-1.7526" layer="200"/>
<rectangle x1="-2.9718" y1="-1.905" x2="-2.8194" y2="-1.7526" layer="200"/>
<rectangle x1="-2.5146" y1="-1.905" x2="-1.905" y2="-1.7526" layer="200"/>
<rectangle x1="-1.7526" y1="-1.905" x2="-1.6002" y2="-1.7526" layer="200"/>
<rectangle x1="-1.2954" y1="-1.905" x2="-0.9906" y2="-1.7526" layer="200"/>
<rectangle x1="-0.8382" y1="-1.905" x2="-0.5334" y2="-1.7526" layer="200"/>
<rectangle x1="-0.0762" y1="-1.905" x2="0.0762" y2="-1.7526" layer="200"/>
<rectangle x1="0.381" y1="-1.905" x2="0.6858" y2="-1.7526" layer="200"/>
<rectangle x1="1.905" y1="-1.905" x2="2.0574" y2="-1.7526" layer="200"/>
<rectangle x1="2.667" y1="-1.905" x2="2.9718" y2="-1.7526" layer="200"/>
<rectangle x1="3.2766" y1="-1.905" x2="3.429" y2="-1.7526" layer="200"/>
<rectangle x1="4.0386" y1="-1.905" x2="5.1054" y2="-1.7526" layer="200"/>
<rectangle x1="5.715" y1="-1.905" x2="6.1722" y2="-1.7526" layer="200"/>
<rectangle x1="6.3246" y1="-1.905" x2="6.477" y2="-1.7526" layer="200"/>
<rectangle x1="6.6294" y1="-1.905" x2="6.7818" y2="-1.7526" layer="200"/>
<rectangle x1="6.9342" y1="-1.905" x2="7.3914" y2="-1.7526" layer="200"/>
<rectangle x1="10.1346" y1="-1.905" x2="10.5918" y2="-1.7526" layer="200"/>
<rectangle x1="11.6586" y1="-1.905" x2="11.9634" y2="-1.7526" layer="200"/>
<rectangle x1="12.1158" y1="-1.905" x2="12.2682" y2="-1.7526" layer="200"/>
<rectangle x1="-10.8966" y1="-1.7526" x2="-10.7442" y2="-1.6002" layer="200"/>
<rectangle x1="-9.6774" y1="-1.7526" x2="-8.9154" y2="-1.6002" layer="200"/>
<rectangle x1="-8.6106" y1="-1.7526" x2="-8.1534" y2="-1.6002" layer="200"/>
<rectangle x1="-7.3914" y1="-1.7526" x2="-6.7818" y2="-1.6002" layer="200"/>
<rectangle x1="-6.477" y1="-1.7526" x2="-6.3246" y2="-1.6002" layer="200"/>
<rectangle x1="-6.0198" y1="-1.7526" x2="-5.4102" y2="-1.6002" layer="200"/>
<rectangle x1="-5.1054" y1="-1.7526" x2="-4.953" y2="-1.6002" layer="200"/>
<rectangle x1="-4.4958" y1="-1.7526" x2="-4.191" y2="-1.6002" layer="200"/>
<rectangle x1="-3.8862" y1="-1.7526" x2="-3.5814" y2="-1.6002" layer="200"/>
<rectangle x1="-3.1242" y1="-1.7526" x2="-2.9718" y2="-1.6002" layer="200"/>
<rectangle x1="-2.5146" y1="-1.7526" x2="-2.3622" y2="-1.6002" layer="200"/>
<rectangle x1="-2.2098" y1="-1.7526" x2="-1.905" y2="-1.6002" layer="200"/>
<rectangle x1="-1.7526" y1="-1.7526" x2="-1.6002" y2="-1.6002" layer="200"/>
<rectangle x1="-1.2954" y1="-1.7526" x2="-1.143" y2="-1.6002" layer="200"/>
<rectangle x1="-0.8382" y1="-1.7526" x2="-0.6858" y2="-1.6002" layer="200"/>
<rectangle x1="-0.0762" y1="-1.7526" x2="0.0762" y2="-1.6002" layer="200"/>
<rectangle x1="0.381" y1="-1.7526" x2="0.6858" y2="-1.6002" layer="200"/>
<rectangle x1="1.905" y1="-1.7526" x2="2.0574" y2="-1.6002" layer="200"/>
<rectangle x1="2.9718" y1="-1.7526" x2="3.1242" y2="-1.6002" layer="200"/>
<rectangle x1="3.2766" y1="-1.7526" x2="3.429" y2="-1.6002" layer="200"/>
<rectangle x1="4.3434" y1="-1.7526" x2="5.2578" y2="-1.6002" layer="200"/>
<rectangle x1="5.715" y1="-1.7526" x2="6.0198" y2="-1.6002" layer="200"/>
<rectangle x1="6.3246" y1="-1.7526" x2="6.477" y2="-1.6002" layer="200"/>
<rectangle x1="6.6294" y1="-1.7526" x2="6.7818" y2="-1.6002" layer="200"/>
<rectangle x1="6.9342" y1="-1.7526" x2="7.3914" y2="-1.6002" layer="200"/>
<rectangle x1="10.1346" y1="-1.7526" x2="10.287" y2="-1.6002" layer="200"/>
<rectangle x1="10.4394" y1="-1.7526" x2="10.5918" y2="-1.6002" layer="200"/>
<rectangle x1="11.6586" y1="-1.7526" x2="11.9634" y2="-1.6002" layer="200"/>
<rectangle x1="12.1158" y1="-1.7526" x2="12.2682" y2="-1.6002" layer="200"/>
<rectangle x1="-10.8966" y1="-1.6002" x2="-10.5918" y2="-1.4478" layer="200"/>
<rectangle x1="-9.0678" y1="-1.6002" x2="-8.1534" y2="-1.4478" layer="200"/>
<rectangle x1="-7.3914" y1="-1.6002" x2="-7.239" y2="-1.4478" layer="200"/>
<rectangle x1="-7.0866" y1="-1.6002" x2="-6.9342" y2="-1.4478" layer="200"/>
<rectangle x1="-6.477" y1="-1.6002" x2="-6.3246" y2="-1.4478" layer="200"/>
<rectangle x1="-5.8674" y1="-1.6002" x2="-5.5626" y2="-1.4478" layer="200"/>
<rectangle x1="-5.4102" y1="-1.6002" x2="-5.2578" y2="-1.4478" layer="200"/>
<rectangle x1="-5.1054" y1="-1.6002" x2="-4.953" y2="-1.4478" layer="200"/>
<rectangle x1="-4.8006" y1="-1.6002" x2="-4.191" y2="-1.4478" layer="200"/>
<rectangle x1="-3.8862" y1="-1.6002" x2="-3.429" y2="-1.4478" layer="200"/>
<rectangle x1="-3.1242" y1="-1.6002" x2="-2.9718" y2="-1.4478" layer="200"/>
<rectangle x1="-2.667" y1="-1.6002" x2="-2.3622" y2="-1.4478" layer="200"/>
<rectangle x1="-2.2098" y1="-1.6002" x2="-2.0574" y2="-1.4478" layer="200"/>
<rectangle x1="-1.6002" y1="-1.6002" x2="-1.4478" y2="-1.4478" layer="200"/>
<rectangle x1="-1.143" y1="-1.6002" x2="-0.6858" y2="-1.4478" layer="200"/>
<rectangle x1="-0.0762" y1="-1.6002" x2="0.0762" y2="-1.4478" layer="200"/>
<rectangle x1="0.381" y1="-1.6002" x2="0.6858" y2="-1.4478" layer="200"/>
<rectangle x1="1.905" y1="-1.6002" x2="2.0574" y2="-1.4478" layer="200"/>
<rectangle x1="3.2766" y1="-1.6002" x2="3.5814" y2="-1.4478" layer="200"/>
<rectangle x1="4.4958" y1="-1.6002" x2="5.5626" y2="-1.4478" layer="200"/>
<rectangle x1="5.715" y1="-1.6002" x2="6.1722" y2="-1.4478" layer="200"/>
<rectangle x1="6.3246" y1="-1.6002" x2="6.477" y2="-1.4478" layer="200"/>
<rectangle x1="6.6294" y1="-1.6002" x2="6.7818" y2="-1.4478" layer="200"/>
<rectangle x1="6.9342" y1="-1.6002" x2="7.3914" y2="-1.4478" layer="200"/>
<rectangle x1="10.1346" y1="-1.6002" x2="10.287" y2="-1.4478" layer="200"/>
<rectangle x1="11.6586" y1="-1.6002" x2="11.9634" y2="-1.4478" layer="200"/>
<rectangle x1="12.1158" y1="-1.6002" x2="12.2682" y2="-1.4478" layer="200"/>
<rectangle x1="-10.8966" y1="-1.4478" x2="-10.7442" y2="-1.2954" layer="200"/>
<rectangle x1="-10.4394" y1="-1.4478" x2="-9.8298" y2="-1.2954" layer="200"/>
<rectangle x1="-9.2202" y1="-1.4478" x2="-9.0678" y2="-1.2954" layer="200"/>
<rectangle x1="-8.9154" y1="-1.4478" x2="-8.4582" y2="-1.2954" layer="200"/>
<rectangle x1="-8.3058" y1="-1.4478" x2="-8.1534" y2="-1.2954" layer="200"/>
<rectangle x1="-7.8486" y1="-1.4478" x2="-7.6962" y2="-1.2954" layer="200"/>
<rectangle x1="-7.3914" y1="-1.4478" x2="-7.239" y2="-1.2954" layer="200"/>
<rectangle x1="-7.0866" y1="-1.4478" x2="-6.9342" y2="-1.2954" layer="200"/>
<rectangle x1="-6.3246" y1="-1.4478" x2="-6.1722" y2="-1.2954" layer="200"/>
<rectangle x1="-5.8674" y1="-1.4478" x2="-5.5626" y2="-1.2954" layer="200"/>
<rectangle x1="-5.2578" y1="-1.4478" x2="-4.953" y2="-1.2954" layer="200"/>
<rectangle x1="-4.4958" y1="-1.4478" x2="-3.429" y2="-1.2954" layer="200"/>
<rectangle x1="-3.1242" y1="-1.4478" x2="-2.9718" y2="-1.2954" layer="200"/>
<rectangle x1="-2.667" y1="-1.4478" x2="-2.5146" y2="-1.2954" layer="200"/>
<rectangle x1="-2.2098" y1="-1.4478" x2="-2.0574" y2="-1.2954" layer="200"/>
<rectangle x1="-1.6002" y1="-1.4478" x2="-1.4478" y2="-1.2954" layer="200"/>
<rectangle x1="-0.9906" y1="-1.4478" x2="-0.6858" y2="-1.2954" layer="200"/>
<rectangle x1="-0.0762" y1="-1.4478" x2="0.6858" y2="-1.2954" layer="200"/>
<rectangle x1="0.8382" y1="-1.4478" x2="1.2954" y2="-1.2954" layer="200"/>
<rectangle x1="1.7526" y1="-1.4478" x2="2.0574" y2="-1.2954" layer="200"/>
<rectangle x1="3.429" y1="-1.4478" x2="3.5814" y2="-1.2954" layer="200"/>
<rectangle x1="4.6482" y1="-1.4478" x2="6.1722" y2="-1.2954" layer="200"/>
<rectangle x1="6.3246" y1="-1.4478" x2="6.477" y2="-1.2954" layer="200"/>
<rectangle x1="6.6294" y1="-1.4478" x2="6.7818" y2="-1.2954" layer="200"/>
<rectangle x1="6.9342" y1="-1.4478" x2="7.3914" y2="-1.2954" layer="200"/>
<rectangle x1="10.1346" y1="-1.4478" x2="10.287" y2="-1.2954" layer="200"/>
<rectangle x1="11.6586" y1="-1.4478" x2="11.9634" y2="-1.2954" layer="200"/>
<rectangle x1="12.1158" y1="-1.4478" x2="12.2682" y2="-1.2954" layer="200"/>
<rectangle x1="-10.8966" y1="-1.2954" x2="-10.5918" y2="-1.143" layer="200"/>
<rectangle x1="-10.4394" y1="-1.2954" x2="-9.6774" y2="-1.143" layer="200"/>
<rectangle x1="-9.2202" y1="-1.2954" x2="-9.0678" y2="-1.143" layer="200"/>
<rectangle x1="-8.763" y1="-1.2954" x2="-8.6106" y2="-1.143" layer="200"/>
<rectangle x1="-8.3058" y1="-1.2954" x2="-8.1534" y2="-1.143" layer="200"/>
<rectangle x1="-7.8486" y1="-1.2954" x2="-7.6962" y2="-1.143" layer="200"/>
<rectangle x1="-7.3914" y1="-1.2954" x2="-6.1722" y2="-1.143" layer="200"/>
<rectangle x1="-6.0198" y1="-1.2954" x2="-5.5626" y2="-1.143" layer="200"/>
<rectangle x1="-5.2578" y1="-1.2954" x2="-4.953" y2="-1.143" layer="200"/>
<rectangle x1="-4.4958" y1="-1.2954" x2="-4.3434" y2="-1.143" layer="200"/>
<rectangle x1="-4.0386" y1="-1.2954" x2="-3.7338" y2="-1.143" layer="200"/>
<rectangle x1="-3.5814" y1="-1.2954" x2="-3.429" y2="-1.143" layer="200"/>
<rectangle x1="-3.1242" y1="-1.2954" x2="-2.9718" y2="-1.143" layer="200"/>
<rectangle x1="-2.667" y1="-1.2954" x2="-2.5146" y2="-1.143" layer="200"/>
<rectangle x1="-2.3622" y1="-1.2954" x2="-2.2098" y2="-1.143" layer="200"/>
<rectangle x1="-1.6002" y1="-1.2954" x2="-1.2954" y2="-1.143" layer="200"/>
<rectangle x1="-0.9906" y1="-1.2954" x2="-0.6858" y2="-1.143" layer="200"/>
<rectangle x1="-0.2286" y1="-1.2954" x2="0.2286" y2="-1.143" layer="200"/>
<rectangle x1="0.5334" y1="-1.2954" x2="1.4478" y2="-1.143" layer="200"/>
<rectangle x1="1.905" y1="-1.2954" x2="2.2098" y2="-1.143" layer="200"/>
<rectangle x1="3.429" y1="-1.2954" x2="3.5814" y2="-1.143" layer="200"/>
<rectangle x1="4.6482" y1="-1.2954" x2="4.8006" y2="-1.143" layer="200"/>
<rectangle x1="5.1054" y1="-1.2954" x2="6.1722" y2="-1.143" layer="200"/>
<rectangle x1="6.3246" y1="-1.2954" x2="6.477" y2="-1.143" layer="200"/>
<rectangle x1="6.6294" y1="-1.2954" x2="6.7818" y2="-1.143" layer="200"/>
<rectangle x1="6.9342" y1="-1.2954" x2="7.3914" y2="-1.143" layer="200"/>
<rectangle x1="9.6774" y1="-1.2954" x2="9.8298" y2="-1.143" layer="200"/>
<rectangle x1="10.1346" y1="-1.2954" x2="10.287" y2="-1.143" layer="200"/>
<rectangle x1="11.6586" y1="-1.2954" x2="11.9634" y2="-1.143" layer="200"/>
<rectangle x1="12.1158" y1="-1.2954" x2="12.2682" y2="-1.143" layer="200"/>
<rectangle x1="-10.7442" y1="-1.143" x2="-9.6774" y2="-0.9906" layer="200"/>
<rectangle x1="-9.2202" y1="-1.143" x2="-9.0678" y2="-0.9906" layer="200"/>
<rectangle x1="-8.763" y1="-1.143" x2="-8.6106" y2="-0.9906" layer="200"/>
<rectangle x1="-8.4582" y1="-1.143" x2="-8.3058" y2="-0.9906" layer="200"/>
<rectangle x1="-7.3914" y1="-1.143" x2="-6.9342" y2="-0.9906" layer="200"/>
<rectangle x1="-6.6294" y1="-1.143" x2="-5.4102" y2="-0.9906" layer="200"/>
<rectangle x1="-5.2578" y1="-1.143" x2="-4.8006" y2="-0.9906" layer="200"/>
<rectangle x1="-4.4958" y1="-1.143" x2="-4.3434" y2="-0.9906" layer="200"/>
<rectangle x1="-4.0386" y1="-1.143" x2="-3.8862" y2="-0.9906" layer="200"/>
<rectangle x1="-3.5814" y1="-1.143" x2="-3.429" y2="-0.9906" layer="200"/>
<rectangle x1="-3.1242" y1="-1.143" x2="-2.8194" y2="-0.9906" layer="200"/>
<rectangle x1="-2.667" y1="-1.143" x2="-2.2098" y2="-0.9906" layer="200"/>
<rectangle x1="-1.6002" y1="-1.143" x2="-1.4478" y2="-0.9906" layer="200"/>
<rectangle x1="-1.143" y1="-1.143" x2="0.2286" y2="-0.9906" layer="200"/>
<rectangle x1="0.5334" y1="-1.143" x2="0.9906" y2="-0.9906" layer="200"/>
<rectangle x1="1.2954" y1="-1.143" x2="1.4478" y2="-0.9906" layer="200"/>
<rectangle x1="1.6002" y1="-1.143" x2="1.7526" y2="-0.9906" layer="200"/>
<rectangle x1="2.0574" y1="-1.143" x2="2.3622" y2="-0.9906" layer="200"/>
<rectangle x1="3.429" y1="-1.143" x2="3.5814" y2="-0.9906" layer="200"/>
<rectangle x1="4.4958" y1="-1.143" x2="4.8006" y2="-0.9906" layer="200"/>
<rectangle x1="5.2578" y1="-1.143" x2="6.1722" y2="-0.9906" layer="200"/>
<rectangle x1="6.3246" y1="-1.143" x2="6.477" y2="-0.9906" layer="200"/>
<rectangle x1="6.6294" y1="-1.143" x2="6.7818" y2="-0.9906" layer="200"/>
<rectangle x1="6.9342" y1="-1.143" x2="7.3914" y2="-0.9906" layer="200"/>
<rectangle x1="9.8298" y1="-1.143" x2="10.287" y2="-0.9906" layer="200"/>
<rectangle x1="11.6586" y1="-1.143" x2="11.811" y2="-0.9906" layer="200"/>
<rectangle x1="12.1158" y1="-1.143" x2="12.2682" y2="-0.9906" layer="200"/>
<rectangle x1="-10.4394" y1="-0.9906" x2="-9.6774" y2="-0.8382" layer="200"/>
<rectangle x1="-9.2202" y1="-0.9906" x2="-9.0678" y2="-0.8382" layer="200"/>
<rectangle x1="-8.763" y1="-0.9906" x2="-8.3058" y2="-0.8382" layer="200"/>
<rectangle x1="-7.239" y1="-0.9906" x2="-7.0866" y2="-0.8382" layer="200"/>
<rectangle x1="-6.6294" y1="-0.9906" x2="-6.3246" y2="-0.8382" layer="200"/>
<rectangle x1="-5.8674" y1="-0.9906" x2="-4.8006" y2="-0.8382" layer="200"/>
<rectangle x1="-4.0386" y1="-0.9906" x2="-3.8862" y2="-0.8382" layer="200"/>
<rectangle x1="-3.7338" y1="-0.9906" x2="-3.429" y2="-0.8382" layer="200"/>
<rectangle x1="-2.9718" y1="-0.9906" x2="-2.8194" y2="-0.8382" layer="200"/>
<rectangle x1="-2.5146" y1="-0.9906" x2="-2.3622" y2="-0.8382" layer="200"/>
<rectangle x1="-1.6002" y1="-0.9906" x2="0.2286" y2="-0.8382" layer="200"/>
<rectangle x1="0.5334" y1="-0.9906" x2="0.8382" y2="-0.8382" layer="200"/>
<rectangle x1="1.2954" y1="-0.9906" x2="1.6002" y2="-0.8382" layer="200"/>
<rectangle x1="2.3622" y1="-0.9906" x2="2.667" y2="-0.8382" layer="200"/>
<rectangle x1="3.429" y1="-0.9906" x2="3.5814" y2="-0.8382" layer="200"/>
<rectangle x1="4.4958" y1="-0.9906" x2="5.5626" y2="-0.8382" layer="200"/>
<rectangle x1="5.715" y1="-0.9906" x2="6.1722" y2="-0.8382" layer="200"/>
<rectangle x1="6.3246" y1="-0.9906" x2="6.477" y2="-0.8382" layer="200"/>
<rectangle x1="6.6294" y1="-0.9906" x2="6.7818" y2="-0.8382" layer="200"/>
<rectangle x1="6.9342" y1="-0.9906" x2="7.3914" y2="-0.8382" layer="200"/>
<rectangle x1="10.1346" y1="-0.9906" x2="10.287" y2="-0.8382" layer="200"/>
<rectangle x1="11.3538" y1="-0.9906" x2="11.9634" y2="-0.8382" layer="200"/>
<rectangle x1="12.1158" y1="-0.9906" x2="12.2682" y2="-0.8382" layer="200"/>
<rectangle x1="-10.287" y1="-0.8382" x2="-9.6774" y2="-0.6858" layer="200"/>
<rectangle x1="-9.0678" y1="-0.8382" x2="-8.9154" y2="-0.6858" layer="200"/>
<rectangle x1="-8.763" y1="-0.8382" x2="-7.6962" y2="-0.6858" layer="200"/>
<rectangle x1="-7.3914" y1="-0.8382" x2="-6.9342" y2="-0.6858" layer="200"/>
<rectangle x1="-6.6294" y1="-0.8382" x2="-6.1722" y2="-0.6858" layer="200"/>
<rectangle x1="-5.8674" y1="-0.8382" x2="-5.715" y2="-0.6858" layer="200"/>
<rectangle x1="-5.4102" y1="-0.8382" x2="-5.1054" y2="-0.6858" layer="200"/>
<rectangle x1="-4.953" y1="-0.8382" x2="-4.8006" y2="-0.6858" layer="200"/>
<rectangle x1="-4.4958" y1="-0.8382" x2="-4.3434" y2="-0.6858" layer="200"/>
<rectangle x1="-4.191" y1="-0.8382" x2="-3.8862" y2="-0.6858" layer="200"/>
<rectangle x1="-3.7338" y1="-0.8382" x2="-3.5814" y2="-0.6858" layer="200"/>
<rectangle x1="-2.9718" y1="-0.8382" x2="-2.8194" y2="-0.6858" layer="200"/>
<rectangle x1="-2.5146" y1="-0.8382" x2="-2.2098" y2="-0.6858" layer="200"/>
<rectangle x1="-1.6002" y1="-0.8382" x2="-0.5334" y2="-0.6858" layer="200"/>
<rectangle x1="0.5334" y1="-0.8382" x2="0.6858" y2="-0.6858" layer="200"/>
<rectangle x1="1.143" y1="-0.8382" x2="1.4478" y2="-0.6858" layer="200"/>
<rectangle x1="1.6002" y1="-0.8382" x2="1.905" y2="-0.6858" layer="200"/>
<rectangle x1="2.5146" y1="-0.8382" x2="2.9718" y2="-0.6858" layer="200"/>
<rectangle x1="3.429" y1="-0.8382" x2="3.5814" y2="-0.6858" layer="200"/>
<rectangle x1="4.3434" y1="-0.8382" x2="4.4958" y2="-0.6858" layer="200"/>
<rectangle x1="4.8006" y1="-0.8382" x2="4.953" y2="-0.6858" layer="200"/>
<rectangle x1="5.1054" y1="-0.8382" x2="6.1722" y2="-0.6858" layer="200"/>
<rectangle x1="6.3246" y1="-0.8382" x2="6.477" y2="-0.6858" layer="200"/>
<rectangle x1="6.6294" y1="-0.8382" x2="6.7818" y2="-0.6858" layer="200"/>
<rectangle x1="6.9342" y1="-0.8382" x2="7.3914" y2="-0.6858" layer="200"/>
<rectangle x1="7.8486" y1="-0.8382" x2="8.001" y2="-0.6858" layer="200"/>
<rectangle x1="10.1346" y1="-0.8382" x2="10.287" y2="-0.6858" layer="200"/>
<rectangle x1="10.7442" y1="-0.8382" x2="11.3538" y2="-0.6858" layer="200"/>
<rectangle x1="11.5062" y1="-0.8382" x2="12.2682" y2="-0.6858" layer="200"/>
<rectangle x1="-9.9822" y1="-0.6858" x2="-9.6774" y2="-0.5334" layer="200"/>
<rectangle x1="-9.0678" y1="-0.6858" x2="-8.9154" y2="-0.5334" layer="200"/>
<rectangle x1="-8.6106" y1="-0.6858" x2="-8.3058" y2="-0.5334" layer="200"/>
<rectangle x1="-8.001" y1="-0.6858" x2="-7.3914" y2="-0.5334" layer="200"/>
<rectangle x1="-7.0866" y1="-0.6858" x2="-6.7818" y2="-0.5334" layer="200"/>
<rectangle x1="-6.6294" y1="-0.6858" x2="-6.477" y2="-0.5334" layer="200"/>
<rectangle x1="-6.3246" y1="-0.6858" x2="-6.1722" y2="-0.5334" layer="200"/>
<rectangle x1="-5.4102" y1="-0.6858" x2="-5.2578" y2="-0.5334" layer="200"/>
<rectangle x1="-4.953" y1="-0.6858" x2="-4.8006" y2="-0.5334" layer="200"/>
<rectangle x1="-4.4958" y1="-0.6858" x2="-4.191" y2="-0.5334" layer="200"/>
<rectangle x1="-4.0386" y1="-0.6858" x2="-3.5814" y2="-0.5334" layer="200"/>
<rectangle x1="-2.9718" y1="-0.6858" x2="-2.8194" y2="-0.5334" layer="200"/>
<rectangle x1="-2.5146" y1="-0.6858" x2="-0.8382" y2="-0.5334" layer="200"/>
<rectangle x1="0.5334" y1="-0.6858" x2="0.8382" y2="-0.5334" layer="200"/>
<rectangle x1="0.9906" y1="-0.6858" x2="1.2954" y2="-0.5334" layer="200"/>
<rectangle x1="1.4478" y1="-0.6858" x2="1.905" y2="-0.5334" layer="200"/>
<rectangle x1="2.8194" y1="-0.6858" x2="3.1242" y2="-0.5334" layer="200"/>
<rectangle x1="3.429" y1="-0.6858" x2="3.5814" y2="-0.5334" layer="200"/>
<rectangle x1="4.3434" y1="-0.6858" x2="4.4958" y2="-0.5334" layer="200"/>
<rectangle x1="4.8006" y1="-0.6858" x2="4.953" y2="-0.5334" layer="200"/>
<rectangle x1="5.4102" y1="-0.6858" x2="6.1722" y2="-0.5334" layer="200"/>
<rectangle x1="6.3246" y1="-0.6858" x2="6.477" y2="-0.5334" layer="200"/>
<rectangle x1="6.6294" y1="-0.6858" x2="6.7818" y2="-0.5334" layer="200"/>
<rectangle x1="6.9342" y1="-0.6858" x2="7.3914" y2="-0.5334" layer="200"/>
<rectangle x1="7.8486" y1="-0.6858" x2="8.001" y2="-0.5334" layer="200"/>
<rectangle x1="10.1346" y1="-0.6858" x2="10.287" y2="-0.5334" layer="200"/>
<rectangle x1="10.7442" y1="-0.6858" x2="10.8966" y2="-0.5334" layer="200"/>
<rectangle x1="11.5062" y1="-0.6858" x2="11.6586" y2="-0.5334" layer="200"/>
<rectangle x1="11.811" y1="-0.6858" x2="12.1158" y2="-0.5334" layer="200"/>
<rectangle x1="12.2682" y1="-0.6858" x2="12.4206" y2="-0.5334" layer="200"/>
<rectangle x1="-9.8298" y1="-0.5334" x2="-8.9154" y2="-0.381" layer="200"/>
<rectangle x1="-8.6106" y1="-0.5334" x2="-8.3058" y2="-0.381" layer="200"/>
<rectangle x1="-8.001" y1="-0.5334" x2="-7.6962" y2="-0.381" layer="200"/>
<rectangle x1="-7.239" y1="-0.5334" x2="-7.0866" y2="-0.381" layer="200"/>
<rectangle x1="-6.9342" y1="-0.5334" x2="-6.477" y2="-0.381" layer="200"/>
<rectangle x1="-6.3246" y1="-0.5334" x2="-6.1722" y2="-0.381" layer="200"/>
<rectangle x1="-5.8674" y1="-0.5334" x2="-5.715" y2="-0.381" layer="200"/>
<rectangle x1="-5.4102" y1="-0.5334" x2="-5.2578" y2="-0.381" layer="200"/>
<rectangle x1="-5.1054" y1="-0.5334" x2="-4.953" y2="-0.381" layer="200"/>
<rectangle x1="-4.3434" y1="-0.5334" x2="-4.191" y2="-0.381" layer="200"/>
<rectangle x1="-3.8862" y1="-0.5334" x2="-3.5814" y2="-0.381" layer="200"/>
<rectangle x1="-2.9718" y1="-0.5334" x2="-1.2954" y2="-0.381" layer="200"/>
<rectangle x1="0.5334" y1="-0.5334" x2="2.0574" y2="-0.381" layer="200"/>
<rectangle x1="3.1242" y1="-0.5334" x2="3.5814" y2="-0.381" layer="200"/>
<rectangle x1="4.3434" y1="-0.5334" x2="4.4958" y2="-0.381" layer="200"/>
<rectangle x1="4.8006" y1="-0.5334" x2="4.953" y2="-0.381" layer="200"/>
<rectangle x1="5.715" y1="-0.5334" x2="6.1722" y2="-0.381" layer="200"/>
<rectangle x1="6.3246" y1="-0.5334" x2="6.477" y2="-0.381" layer="200"/>
<rectangle x1="6.6294" y1="-0.5334" x2="6.7818" y2="-0.381" layer="200"/>
<rectangle x1="6.9342" y1="-0.5334" x2="7.3914" y2="-0.381" layer="200"/>
<rectangle x1="7.8486" y1="-0.5334" x2="8.001" y2="-0.381" layer="200"/>
<rectangle x1="10.1346" y1="-0.5334" x2="10.4394" y2="-0.381" layer="200"/>
<rectangle x1="10.7442" y1="-0.5334" x2="12.1158" y2="-0.381" layer="200"/>
<rectangle x1="12.2682" y1="-0.5334" x2="12.4206" y2="-0.381" layer="200"/>
<rectangle x1="-9.8298" y1="-0.381" x2="-8.3058" y2="-0.2286" layer="200"/>
<rectangle x1="-8.001" y1="-0.381" x2="-7.5438" y2="-0.2286" layer="200"/>
<rectangle x1="-7.239" y1="-0.381" x2="-7.0866" y2="-0.2286" layer="200"/>
<rectangle x1="-6.7818" y1="-0.381" x2="-6.6294" y2="-0.2286" layer="200"/>
<rectangle x1="-6.3246" y1="-0.381" x2="-6.1722" y2="-0.2286" layer="200"/>
<rectangle x1="-5.8674" y1="-0.381" x2="-5.715" y2="-0.2286" layer="200"/>
<rectangle x1="-5.4102" y1="-0.381" x2="-5.2578" y2="-0.2286" layer="200"/>
<rectangle x1="-5.1054" y1="-0.381" x2="-4.953" y2="-0.2286" layer="200"/>
<rectangle x1="-4.3434" y1="-0.381" x2="-4.191" y2="-0.2286" layer="200"/>
<rectangle x1="-3.8862" y1="-0.381" x2="-3.5814" y2="-0.2286" layer="200"/>
<rectangle x1="-3.2766" y1="-0.381" x2="-2.0574" y2="-0.2286" layer="200"/>
<rectangle x1="0.0762" y1="-0.381" x2="0.2286" y2="-0.2286" layer="200"/>
<rectangle x1="0.8382" y1="-0.381" x2="1.4478" y2="-0.2286" layer="200"/>
<rectangle x1="1.6002" y1="-0.381" x2="2.2098" y2="-0.2286" layer="200"/>
<rectangle x1="4.3434" y1="-0.381" x2="4.4958" y2="-0.2286" layer="200"/>
<rectangle x1="4.8006" y1="-0.381" x2="4.953" y2="-0.2286" layer="200"/>
<rectangle x1="5.715" y1="-0.381" x2="6.1722" y2="-0.2286" layer="200"/>
<rectangle x1="6.3246" y1="-0.381" x2="6.477" y2="-0.2286" layer="200"/>
<rectangle x1="6.6294" y1="-0.381" x2="6.7818" y2="-0.2286" layer="200"/>
<rectangle x1="6.9342" y1="-0.381" x2="7.3914" y2="-0.2286" layer="200"/>
<rectangle x1="10.1346" y1="-0.381" x2="12.1158" y2="-0.2286" layer="200"/>
<rectangle x1="12.2682" y1="-0.381" x2="12.4206" y2="-0.2286" layer="200"/>
<rectangle x1="-9.9822" y1="-0.2286" x2="-9.6774" y2="-0.0762" layer="200"/>
<rectangle x1="-9.3726" y1="-0.2286" x2="-8.9154" y2="-0.0762" layer="200"/>
<rectangle x1="-8.6106" y1="-0.2286" x2="-7.5438" y2="-0.0762" layer="200"/>
<rectangle x1="-7.239" y1="-0.2286" x2="-7.0866" y2="-0.0762" layer="200"/>
<rectangle x1="-6.7818" y1="-0.2286" x2="-6.6294" y2="-0.0762" layer="200"/>
<rectangle x1="-6.477" y1="-0.2286" x2="-6.1722" y2="-0.0762" layer="200"/>
<rectangle x1="-5.715" y1="-0.2286" x2="-5.5626" y2="-0.0762" layer="200"/>
<rectangle x1="-5.4102" y1="-0.2286" x2="-4.953" y2="-0.0762" layer="200"/>
<rectangle x1="-4.3434" y1="-0.2286" x2="-4.191" y2="-0.0762" layer="200"/>
<rectangle x1="-4.0386" y1="-0.2286" x2="-2.8194" y2="-0.0762" layer="200"/>
<rectangle x1="-2.667" y1="-0.2286" x2="-2.3622" y2="-0.0762" layer="200"/>
<rectangle x1="0.2286" y1="-0.2286" x2="1.6002" y2="-0.0762" layer="200"/>
<rectangle x1="1.905" y1="-0.2286" x2="2.5146" y2="-0.0762" layer="200"/>
<rectangle x1="4.3434" y1="-0.2286" x2="4.4958" y2="-0.0762" layer="200"/>
<rectangle x1="4.8006" y1="-0.2286" x2="4.953" y2="-0.0762" layer="200"/>
<rectangle x1="5.715" y1="-0.2286" x2="6.1722" y2="-0.0762" layer="200"/>
<rectangle x1="6.3246" y1="-0.2286" x2="6.477" y2="-0.0762" layer="200"/>
<rectangle x1="6.6294" y1="-0.2286" x2="6.7818" y2="-0.0762" layer="200"/>
<rectangle x1="6.9342" y1="-0.2286" x2="7.3914" y2="-0.0762" layer="200"/>
<rectangle x1="10.1346" y1="-0.2286" x2="12.1158" y2="-0.0762" layer="200"/>
<rectangle x1="12.2682" y1="-0.2286" x2="12.4206" y2="-0.0762" layer="200"/>
<rectangle x1="-10.5918" y1="-0.0762" x2="-9.9822" y2="0.0762" layer="200"/>
<rectangle x1="-9.8298" y1="-0.0762" x2="-9.525" y2="0.0762" layer="200"/>
<rectangle x1="-9.2202" y1="-0.0762" x2="-8.9154" y2="0.0762" layer="200"/>
<rectangle x1="-8.6106" y1="-0.0762" x2="-8.4582" y2="0.0762" layer="200"/>
<rectangle x1="-8.3058" y1="-0.0762" x2="-7.8486" y2="0.0762" layer="200"/>
<rectangle x1="-7.6962" y1="-0.0762" x2="-7.5438" y2="0.0762" layer="200"/>
<rectangle x1="-7.239" y1="-0.0762" x2="-7.0866" y2="0.0762" layer="200"/>
<rectangle x1="-6.7818" y1="-0.0762" x2="-6.6294" y2="0.0762" layer="200"/>
<rectangle x1="-6.477" y1="-0.0762" x2="-6.3246" y2="0.0762" layer="200"/>
<rectangle x1="-5.715" y1="-0.0762" x2="-5.5626" y2="0.0762" layer="200"/>
<rectangle x1="-5.2578" y1="-0.0762" x2="-4.953" y2="0.0762" layer="200"/>
<rectangle x1="-4.3434" y1="-0.0762" x2="-3.2766" y2="0.0762" layer="200"/>
<rectangle x1="-0.0762" y1="-0.0762" x2="1.2954" y2="0.0762" layer="200"/>
<rectangle x1="1.4478" y1="-0.0762" x2="1.905" y2="0.0762" layer="200"/>
<rectangle x1="2.2098" y1="-0.0762" x2="2.8194" y2="0.0762" layer="200"/>
<rectangle x1="2.9718" y1="-0.0762" x2="3.1242" y2="0.0762" layer="200"/>
<rectangle x1="3.2766" y1="-0.0762" x2="3.429" y2="0.0762" layer="200"/>
<rectangle x1="4.191" y1="-0.0762" x2="4.4958" y2="0.0762" layer="200"/>
<rectangle x1="4.6482" y1="-0.0762" x2="4.8006" y2="0.0762" layer="200"/>
<rectangle x1="5.715" y1="-0.0762" x2="6.1722" y2="0.0762" layer="200"/>
<rectangle x1="6.3246" y1="-0.0762" x2="6.477" y2="0.0762" layer="200"/>
<rectangle x1="6.6294" y1="-0.0762" x2="6.7818" y2="0.0762" layer="200"/>
<rectangle x1="6.9342" y1="-0.0762" x2="7.3914" y2="0.0762" layer="200"/>
<rectangle x1="10.1346" y1="-0.0762" x2="10.7442" y2="0.0762" layer="200"/>
<rectangle x1="10.8966" y1="-0.0762" x2="12.1158" y2="0.0762" layer="200"/>
<rectangle x1="12.2682" y1="-0.0762" x2="12.4206" y2="0.0762" layer="200"/>
<rectangle x1="-10.8966" y1="0.0762" x2="-10.4394" y2="0.2286" layer="200"/>
<rectangle x1="-9.8298" y1="0.0762" x2="-9.525" y2="0.2286" layer="200"/>
<rectangle x1="-9.2202" y1="0.0762" x2="-8.9154" y2="0.2286" layer="200"/>
<rectangle x1="-8.6106" y1="0.0762" x2="-8.4582" y2="0.2286" layer="200"/>
<rectangle x1="-8.1534" y1="0.0762" x2="-8.001" y2="0.2286" layer="200"/>
<rectangle x1="-7.6962" y1="0.0762" x2="-7.5438" y2="0.2286" layer="200"/>
<rectangle x1="-7.239" y1="0.0762" x2="-7.0866" y2="0.2286" layer="200"/>
<rectangle x1="-6.7818" y1="0.0762" x2="-6.3246" y2="0.2286" layer="200"/>
<rectangle x1="-5.715" y1="0.0762" x2="-5.5626" y2="0.2286" layer="200"/>
<rectangle x1="-5.2578" y1="0.0762" x2="-4.953" y2="0.2286" layer="200"/>
<rectangle x1="-4.8006" y1="0.0762" x2="-3.5814" y2="0.2286" layer="200"/>
<rectangle x1="-0.5334" y1="0.0762" x2="0.5334" y2="0.2286" layer="200"/>
<rectangle x1="2.5146" y1="0.0762" x2="2.9718" y2="0.2286" layer="200"/>
<rectangle x1="3.2766" y1="0.0762" x2="3.429" y2="0.2286" layer="200"/>
<rectangle x1="4.191" y1="0.0762" x2="4.4958" y2="0.2286" layer="200"/>
<rectangle x1="4.6482" y1="0.0762" x2="4.8006" y2="0.2286" layer="200"/>
<rectangle x1="5.715" y1="0.0762" x2="6.1722" y2="0.2286" layer="200"/>
<rectangle x1="6.3246" y1="0.0762" x2="6.477" y2="0.2286" layer="200"/>
<rectangle x1="6.6294" y1="0.0762" x2="6.7818" y2="0.2286" layer="200"/>
<rectangle x1="6.9342" y1="0.0762" x2="7.3914" y2="0.2286" layer="200"/>
<rectangle x1="10.1346" y1="0.0762" x2="10.7442" y2="0.2286" layer="200"/>
<rectangle x1="10.8966" y1="0.0762" x2="12.1158" y2="0.2286" layer="200"/>
<rectangle x1="12.2682" y1="0.0762" x2="12.4206" y2="0.2286" layer="200"/>
<rectangle x1="-11.049" y1="0.2286" x2="-10.7442" y2="0.381" layer="200"/>
<rectangle x1="-9.9822" y1="0.2286" x2="-8.763" y2="0.381" layer="200"/>
<rectangle x1="-8.6106" y1="0.2286" x2="-8.4582" y2="0.381" layer="200"/>
<rectangle x1="-8.1534" y1="0.2286" x2="-8.001" y2="0.381" layer="200"/>
<rectangle x1="-7.8486" y1="0.2286" x2="-7.5438" y2="0.381" layer="200"/>
<rectangle x1="-7.0866" y1="0.2286" x2="-6.9342" y2="0.381" layer="200"/>
<rectangle x1="-6.7818" y1="0.2286" x2="-6.3246" y2="0.381" layer="200"/>
<rectangle x1="-5.715" y1="0.2286" x2="-4.0386" y2="0.381" layer="200"/>
<rectangle x1="-1.905" y1="0.2286" x2="-1.7526" y2="0.381" layer="200"/>
<rectangle x1="-0.9906" y1="0.2286" x2="0.0762" y2="0.381" layer="200"/>
<rectangle x1="0.2286" y1="0.2286" x2="0.6858" y2="0.381" layer="200"/>
<rectangle x1="2.667" y1="0.2286" x2="2.9718" y2="0.381" layer="200"/>
<rectangle x1="3.1242" y1="0.2286" x2="3.2766" y2="0.381" layer="200"/>
<rectangle x1="4.0386" y1="0.2286" x2="4.3434" y2="0.381" layer="200"/>
<rectangle x1="4.6482" y1="0.2286" x2="4.8006" y2="0.381" layer="200"/>
<rectangle x1="5.5626" y1="0.2286" x2="6.0198" y2="0.381" layer="200"/>
<rectangle x1="6.3246" y1="0.2286" x2="6.477" y2="0.381" layer="200"/>
<rectangle x1="6.6294" y1="0.2286" x2="6.7818" y2="0.381" layer="200"/>
<rectangle x1="6.9342" y1="0.2286" x2="7.3914" y2="0.381" layer="200"/>
<rectangle x1="10.1346" y1="0.2286" x2="10.4394" y2="0.381" layer="200"/>
<rectangle x1="10.5918" y1="0.2286" x2="10.7442" y2="0.381" layer="200"/>
<rectangle x1="10.8966" y1="0.2286" x2="12.1158" y2="0.381" layer="200"/>
<rectangle x1="12.2682" y1="0.2286" x2="12.4206" y2="0.381" layer="200"/>
<rectangle x1="-11.049" y1="0.381" x2="-10.7442" y2="0.5334" layer="200"/>
<rectangle x1="-10.5918" y1="0.381" x2="-10.4394" y2="0.5334" layer="200"/>
<rectangle x1="-9.9822" y1="0.381" x2="-9.8298" y2="0.5334" layer="200"/>
<rectangle x1="-9.525" y1="0.381" x2="-9.2202" y2="0.5334" layer="200"/>
<rectangle x1="-9.0678" y1="0.381" x2="-8.9154" y2="0.5334" layer="200"/>
<rectangle x1="-8.6106" y1="0.381" x2="-8.4582" y2="0.5334" layer="200"/>
<rectangle x1="-8.1534" y1="0.381" x2="-7.6962" y2="0.5334" layer="200"/>
<rectangle x1="-7.0866" y1="0.381" x2="-6.9342" y2="0.5334" layer="200"/>
<rectangle x1="-6.6294" y1="0.381" x2="-6.3246" y2="0.5334" layer="200"/>
<rectangle x1="-6.0198" y1="0.381" x2="-4.8006" y2="0.5334" layer="200"/>
<rectangle x1="-1.6002" y1="0.381" x2="-0.5334" y2="0.5334" layer="200"/>
<rectangle x1="-0.2286" y1="0.381" x2="0.9906" y2="0.5334" layer="200"/>
<rectangle x1="2.5146" y1="0.381" x2="3.429" y2="0.5334" layer="200"/>
<rectangle x1="3.7338" y1="0.381" x2="4.191" y2="0.5334" layer="200"/>
<rectangle x1="4.4958" y1="0.381" x2="4.6482" y2="0.5334" layer="200"/>
<rectangle x1="5.5626" y1="0.381" x2="6.0198" y2="0.5334" layer="200"/>
<rectangle x1="6.3246" y1="0.381" x2="6.477" y2="0.5334" layer="200"/>
<rectangle x1="6.6294" y1="0.381" x2="6.7818" y2="0.5334" layer="200"/>
<rectangle x1="6.9342" y1="0.381" x2="7.3914" y2="0.5334" layer="200"/>
<rectangle x1="7.6962" y1="0.381" x2="7.8486" y2="0.5334" layer="200"/>
<rectangle x1="10.1346" y1="0.381" x2="10.4394" y2="0.5334" layer="200"/>
<rectangle x1="10.5918" y1="0.381" x2="12.1158" y2="0.5334" layer="200"/>
<rectangle x1="12.2682" y1="0.381" x2="12.4206" y2="0.5334" layer="200"/>
<rectangle x1="-11.049" y1="0.5334" x2="-10.5918" y2="0.6858" layer="200"/>
<rectangle x1="-10.4394" y1="0.5334" x2="-10.287" y2="0.6858" layer="200"/>
<rectangle x1="-9.9822" y1="0.5334" x2="-9.8298" y2="0.6858" layer="200"/>
<rectangle x1="-9.525" y1="0.5334" x2="-9.3726" y2="0.6858" layer="200"/>
<rectangle x1="-9.0678" y1="0.5334" x2="-8.9154" y2="0.6858" layer="200"/>
<rectangle x1="-8.6106" y1="0.5334" x2="-8.3058" y2="0.6858" layer="200"/>
<rectangle x1="-8.1534" y1="0.5334" x2="-7.6962" y2="0.6858" layer="200"/>
<rectangle x1="-6.6294" y1="0.5334" x2="-5.4102" y2="0.6858" layer="200"/>
<rectangle x1="-3.5814" y1="0.5334" x2="-3.2766" y2="0.6858" layer="200"/>
<rectangle x1="-3.1242" y1="0.5334" x2="-2.8194" y2="0.6858" layer="200"/>
<rectangle x1="-2.0574" y1="0.5334" x2="-0.9906" y2="0.6858" layer="200"/>
<rectangle x1="-0.6858" y1="0.5334" x2="0.381" y2="0.6858" layer="200"/>
<rectangle x1="0.9906" y1="0.5334" x2="1.2954" y2="0.6858" layer="200"/>
<rectangle x1="2.3622" y1="0.5334" x2="2.667" y2="0.6858" layer="200"/>
<rectangle x1="2.8194" y1="0.5334" x2="2.9718" y2="0.6858" layer="200"/>
<rectangle x1="3.1242" y1="0.5334" x2="3.5814" y2="0.6858" layer="200"/>
<rectangle x1="3.7338" y1="0.5334" x2="4.0386" y2="0.6858" layer="200"/>
<rectangle x1="4.3434" y1="0.5334" x2="4.6482" y2="0.6858" layer="200"/>
<rectangle x1="5.5626" y1="0.5334" x2="6.0198" y2="0.6858" layer="200"/>
<rectangle x1="6.3246" y1="0.5334" x2="6.477" y2="0.6858" layer="200"/>
<rectangle x1="6.6294" y1="0.5334" x2="6.7818" y2="0.6858" layer="200"/>
<rectangle x1="7.0866" y1="0.5334" x2="7.3914" y2="0.6858" layer="200"/>
<rectangle x1="10.1346" y1="0.5334" x2="10.4394" y2="0.6858" layer="200"/>
<rectangle x1="10.5918" y1="0.5334" x2="10.8966" y2="0.6858" layer="200"/>
<rectangle x1="11.049" y1="0.5334" x2="12.1158" y2="0.6858" layer="200"/>
<rectangle x1="12.2682" y1="0.5334" x2="12.4206" y2="0.6858" layer="200"/>
<rectangle x1="-11.049" y1="0.6858" x2="-10.4394" y2="0.8382" layer="200"/>
<rectangle x1="-9.9822" y1="0.6858" x2="-9.8298" y2="0.8382" layer="200"/>
<rectangle x1="-9.525" y1="0.6858" x2="-9.3726" y2="0.8382" layer="200"/>
<rectangle x1="-9.2202" y1="0.6858" x2="-9.0678" y2="0.8382" layer="200"/>
<rectangle x1="-8.4582" y1="0.6858" x2="-8.3058" y2="0.8382" layer="200"/>
<rectangle x1="-8.001" y1="0.6858" x2="-7.6962" y2="0.8382" layer="200"/>
<rectangle x1="-7.0866" y1="0.6858" x2="-5.8674" y2="0.8382" layer="200"/>
<rectangle x1="-2.5146" y1="0.6858" x2="-1.4478" y2="0.8382" layer="200"/>
<rectangle x1="-1.2954" y1="0.6858" x2="-0.2286" y2="0.8382" layer="200"/>
<rectangle x1="1.143" y1="0.6858" x2="1.6002" y2="0.8382" layer="200"/>
<rectangle x1="2.9718" y1="0.6858" x2="3.1242" y2="0.8382" layer="200"/>
<rectangle x1="3.429" y1="0.6858" x2="3.7338" y2="0.8382" layer="200"/>
<rectangle x1="4.0386" y1="0.6858" x2="4.4958" y2="0.8382" layer="200"/>
<rectangle x1="5.5626" y1="0.6858" x2="6.0198" y2="0.8382" layer="200"/>
<rectangle x1="6.3246" y1="0.6858" x2="6.477" y2="0.8382" layer="200"/>
<rectangle x1="6.6294" y1="0.6858" x2="6.7818" y2="0.8382" layer="200"/>
<rectangle x1="6.9342" y1="0.6858" x2="7.3914" y2="0.8382" layer="200"/>
<rectangle x1="10.1346" y1="0.6858" x2="10.4394" y2="0.8382" layer="200"/>
<rectangle x1="10.5918" y1="0.6858" x2="11.3538" y2="0.8382" layer="200"/>
<rectangle x1="11.5062" y1="0.6858" x2="12.1158" y2="0.8382" layer="200"/>
<rectangle x1="12.2682" y1="0.6858" x2="12.4206" y2="0.8382" layer="200"/>
<rectangle x1="-11.049" y1="0.8382" x2="-10.7442" y2="0.9906" layer="200"/>
<rectangle x1="-9.9822" y1="0.8382" x2="-9.6774" y2="0.9906" layer="200"/>
<rectangle x1="-9.525" y1="0.8382" x2="-9.0678" y2="0.9906" layer="200"/>
<rectangle x1="-8.4582" y1="0.8382" x2="-8.3058" y2="0.9906" layer="200"/>
<rectangle x1="-8.001" y1="0.8382" x2="-7.6962" y2="0.9906" layer="200"/>
<rectangle x1="-7.5438" y1="0.8382" x2="-7.3914" y2="0.9906" layer="200"/>
<rectangle x1="-7.239" y1="0.8382" x2="-6.3246" y2="0.9906" layer="200"/>
<rectangle x1="-3.2766" y1="0.8382" x2="-2.2098" y2="0.9906" layer="200"/>
<rectangle x1="-1.905" y1="0.8382" x2="-0.8382" y2="0.9906" layer="200"/>
<rectangle x1="1.4478" y1="0.8382" x2="1.7526" y2="0.9906" layer="200"/>
<rectangle x1="3.7338" y1="0.8382" x2="4.3434" y2="0.9906" layer="200"/>
<rectangle x1="5.5626" y1="0.8382" x2="5.8674" y2="0.9906" layer="200"/>
<rectangle x1="6.1722" y1="0.8382" x2="6.3246" y2="0.9906" layer="200"/>
<rectangle x1="6.477" y1="0.8382" x2="6.6294" y2="0.9906" layer="200"/>
<rectangle x1="6.9342" y1="0.8382" x2="7.239" y2="0.9906" layer="200"/>
<rectangle x1="10.287" y1="0.8382" x2="10.4394" y2="0.9906" layer="200"/>
<rectangle x1="10.5918" y1="0.8382" x2="11.049" y2="0.9906" layer="200"/>
<rectangle x1="11.6586" y1="0.8382" x2="12.1158" y2="0.9906" layer="200"/>
<rectangle x1="12.2682" y1="0.8382" x2="12.4206" y2="0.9906" layer="200"/>
<rectangle x1="-10.8966" y1="0.9906" x2="-10.4394" y2="1.143" layer="200"/>
<rectangle x1="-9.8298" y1="0.9906" x2="-9.6774" y2="1.143" layer="200"/>
<rectangle x1="-9.3726" y1="0.9906" x2="-9.0678" y2="1.143" layer="200"/>
<rectangle x1="-8.4582" y1="0.9906" x2="-8.3058" y2="1.143" layer="200"/>
<rectangle x1="-8.1534" y1="0.9906" x2="-6.7818" y2="1.143" layer="200"/>
<rectangle x1="-4.6482" y1="0.9906" x2="-4.4958" y2="1.143" layer="200"/>
<rectangle x1="-3.7338" y1="0.9906" x2="-2.667" y2="1.143" layer="200"/>
<rectangle x1="-2.3622" y1="0.9906" x2="-1.2954" y2="1.143" layer="200"/>
<rectangle x1="1.7526" y1="0.9906" x2="2.0574" y2="1.143" layer="200"/>
<rectangle x1="3.8862" y1="0.9906" x2="4.191" y2="1.143" layer="200"/>
<rectangle x1="5.4102" y1="0.9906" x2="5.8674" y2="1.143" layer="200"/>
<rectangle x1="6.1722" y1="0.9906" x2="6.3246" y2="1.143" layer="200"/>
<rectangle x1="6.9342" y1="0.9906" x2="7.239" y2="1.143" layer="200"/>
<rectangle x1="10.287" y1="0.9906" x2="10.4394" y2="1.143" layer="200"/>
<rectangle x1="10.5918" y1="0.9906" x2="11.049" y2="1.143" layer="200"/>
<rectangle x1="11.6586" y1="0.9906" x2="12.1158" y2="1.143" layer="200"/>
<rectangle x1="12.2682" y1="0.9906" x2="12.4206" y2="1.143" layer="200"/>
<rectangle x1="-10.7442" y1="1.143" x2="-10.287" y2="1.2954" layer="200"/>
<rectangle x1="-9.8298" y1="1.143" x2="-9.6774" y2="1.2954" layer="200"/>
<rectangle x1="-9.3726" y1="1.143" x2="-9.0678" y2="1.2954" layer="200"/>
<rectangle x1="-8.4582" y1="1.143" x2="-7.5438" y2="1.2954" layer="200"/>
<rectangle x1="-4.6482" y1="1.143" x2="-4.3434" y2="1.2954" layer="200"/>
<rectangle x1="-4.191" y1="1.143" x2="-1.905" y2="1.2954" layer="200"/>
<rectangle x1="1.905" y1="1.143" x2="2.3622" y2="1.2954" layer="200"/>
<rectangle x1="3.7338" y1="1.143" x2="4.0386" y2="1.2954" layer="200"/>
<rectangle x1="5.2578" y1="1.143" x2="5.715" y2="1.2954" layer="200"/>
<rectangle x1="6.0198" y1="1.143" x2="6.1722" y2="1.2954" layer="200"/>
<rectangle x1="6.7818" y1="1.143" x2="7.239" y2="1.2954" layer="200"/>
<rectangle x1="10.287" y1="1.143" x2="11.049" y2="1.2954" layer="200"/>
<rectangle x1="11.5062" y1="1.143" x2="12.1158" y2="1.2954" layer="200"/>
<rectangle x1="12.2682" y1="1.143" x2="12.4206" y2="1.2954" layer="200"/>
<rectangle x1="-10.8966" y1="1.2954" x2="-10.5918" y2="1.4478" layer="200"/>
<rectangle x1="-9.8298" y1="1.2954" x2="-9.6774" y2="1.4478" layer="200"/>
<rectangle x1="-9.3726" y1="1.2954" x2="-8.9154" y2="1.4478" layer="200"/>
<rectangle x1="-8.763" y1="1.2954" x2="-7.6962" y2="1.4478" layer="200"/>
<rectangle x1="-4.8006" y1="1.2954" x2="-3.8862" y2="1.4478" layer="200"/>
<rectangle x1="-3.5814" y1="1.2954" x2="-2.5146" y2="1.4478" layer="200"/>
<rectangle x1="2.3622" y1="1.2954" x2="2.667" y2="1.4478" layer="200"/>
<rectangle x1="3.429" y1="1.2954" x2="3.8862" y2="1.4478" layer="200"/>
<rectangle x1="5.1054" y1="1.2954" x2="5.715" y2="1.4478" layer="200"/>
<rectangle x1="6.0198" y1="1.2954" x2="6.1722" y2="1.4478" layer="200"/>
<rectangle x1="6.7818" y1="1.2954" x2="7.0866" y2="1.4478" layer="200"/>
<rectangle x1="7.239" y1="1.2954" x2="7.5438" y2="1.4478" layer="200"/>
<rectangle x1="10.5918" y1="1.2954" x2="10.7442" y2="1.4478" layer="200"/>
<rectangle x1="10.8966" y1="1.2954" x2="11.811" y2="1.4478" layer="200"/>
<rectangle x1="12.2682" y1="1.2954" x2="12.4206" y2="1.4478" layer="200"/>
<rectangle x1="-10.8966" y1="1.4478" x2="-10.7442" y2="1.6002" layer="200"/>
<rectangle x1="-9.8298" y1="1.4478" x2="-8.1534" y2="1.6002" layer="200"/>
<rectangle x1="-5.2578" y1="1.4478" x2="-4.3434" y2="1.6002" layer="200"/>
<rectangle x1="-4.191" y1="1.4478" x2="-2.9718" y2="1.6002" layer="200"/>
<rectangle x1="2.5146" y1="1.4478" x2="3.5814" y2="1.6002" layer="200"/>
<rectangle x1="4.8006" y1="1.4478" x2="5.5626" y2="1.6002" layer="200"/>
<rectangle x1="5.8674" y1="1.4478" x2="6.0198" y2="1.6002" layer="200"/>
<rectangle x1="6.7818" y1="1.4478" x2="7.0866" y2="1.6002" layer="200"/>
<rectangle x1="7.239" y1="1.4478" x2="7.5438" y2="1.6002" layer="200"/>
<rectangle x1="10.5918" y1="1.4478" x2="11.3538" y2="1.6002" layer="200"/>
<rectangle x1="11.6586" y1="1.4478" x2="11.811" y2="1.6002" layer="200"/>
<rectangle x1="12.2682" y1="1.4478" x2="12.4206" y2="1.6002" layer="200"/>
<rectangle x1="-10.8966" y1="1.6002" x2="-10.7442" y2="1.7526" layer="200"/>
<rectangle x1="-9.3726" y1="1.6002" x2="-8.763" y2="1.7526" layer="200"/>
<rectangle x1="-6.0198" y1="1.6002" x2="-5.715" y2="1.7526" layer="200"/>
<rectangle x1="-5.5626" y1="1.6002" x2="-3.5814" y2="1.7526" layer="200"/>
<rectangle x1="2.8194" y1="1.6002" x2="2.9718" y2="1.7526" layer="200"/>
<rectangle x1="4.191" y1="1.6002" x2="5.4102" y2="1.7526" layer="200"/>
<rectangle x1="5.715" y1="1.6002" x2="6.0198" y2="1.7526" layer="200"/>
<rectangle x1="6.6294" y1="1.6002" x2="6.9342" y2="1.7526" layer="200"/>
<rectangle x1="7.0866" y1="1.6002" x2="7.3914" y2="1.7526" layer="200"/>
<rectangle x1="10.1346" y1="1.6002" x2="10.287" y2="1.7526" layer="200"/>
<rectangle x1="10.4394" y1="1.6002" x2="10.5918" y2="1.7526" layer="200"/>
<rectangle x1="11.6586" y1="1.6002" x2="11.811" y2="1.7526" layer="200"/>
<rectangle x1="12.2682" y1="1.6002" x2="12.4206" y2="1.7526" layer="200"/>
<rectangle x1="-10.8966" y1="1.7526" x2="-10.7442" y2="1.905" layer="200"/>
<rectangle x1="-10.287" y1="1.7526" x2="-9.8298" y2="1.905" layer="200"/>
<rectangle x1="-9.3726" y1="1.7526" x2="-9.2202" y2="1.905" layer="200"/>
<rectangle x1="-6.0198" y1="1.7526" x2="-5.5626" y2="1.905" layer="200"/>
<rectangle x1="-5.2578" y1="1.7526" x2="-4.0386" y2="1.905" layer="200"/>
<rectangle x1="3.5814" y1="1.7526" x2="5.2578" y2="1.905" layer="200"/>
<rectangle x1="5.5626" y1="1.7526" x2="5.8674" y2="1.905" layer="200"/>
<rectangle x1="6.477" y1="1.7526" x2="6.9342" y2="1.905" layer="200"/>
<rectangle x1="7.0866" y1="1.7526" x2="7.239" y2="1.905" layer="200"/>
<rectangle x1="10.1346" y1="1.7526" x2="10.287" y2="1.905" layer="200"/>
<rectangle x1="12.2682" y1="1.7526" x2="12.4206" y2="1.905" layer="200"/>
<rectangle x1="-10.8966" y1="1.905" x2="-10.7442" y2="2.0574" layer="200"/>
<rectangle x1="-10.4394" y1="1.905" x2="-9.6774" y2="2.0574" layer="200"/>
<rectangle x1="-8.9154" y1="1.905" x2="-8.6106" y2="2.0574" layer="200"/>
<rectangle x1="-7.239" y1="1.905" x2="-6.477" y2="2.0574" layer="200"/>
<rectangle x1="-6.0198" y1="1.905" x2="-4.6482" y2="2.0574" layer="200"/>
<rectangle x1="2.9718" y1="1.905" x2="4.8006" y2="2.0574" layer="200"/>
<rectangle x1="5.4102" y1="1.905" x2="6.0198" y2="2.0574" layer="200"/>
<rectangle x1="6.3246" y1="1.905" x2="6.7818" y2="2.0574" layer="200"/>
<rectangle x1="6.9342" y1="1.905" x2="7.239" y2="2.0574" layer="200"/>
<rectangle x1="10.1346" y1="1.905" x2="10.287" y2="2.0574" layer="200"/>
<rectangle x1="12.2682" y1="1.905" x2="12.4206" y2="2.0574" layer="200"/>
<rectangle x1="-10.8966" y1="2.0574" x2="-10.7442" y2="2.2098" layer="200"/>
<rectangle x1="-10.4394" y1="2.0574" x2="-9.9822" y2="2.2098" layer="200"/>
<rectangle x1="-9.8298" y1="2.0574" x2="-9.6774" y2="2.2098" layer="200"/>
<rectangle x1="-8.6106" y1="2.0574" x2="-5.2578" y2="2.2098" layer="200"/>
<rectangle x1="2.5146" y1="2.0574" x2="4.4958" y2="2.2098" layer="200"/>
<rectangle x1="4.953" y1="2.0574" x2="5.1054" y2="2.2098" layer="200"/>
<rectangle x1="5.2578" y1="2.0574" x2="5.8674" y2="2.2098" layer="200"/>
<rectangle x1="6.3246" y1="2.0574" x2="6.6294" y2="2.2098" layer="200"/>
<rectangle x1="6.7818" y1="2.0574" x2="7.0866" y2="2.2098" layer="200"/>
<rectangle x1="10.1346" y1="2.0574" x2="10.287" y2="2.2098" layer="200"/>
<rectangle x1="12.2682" y1="2.0574" x2="12.4206" y2="2.2098" layer="200"/>
<rectangle x1="-10.8966" y1="2.2098" x2="-10.7442" y2="2.3622" layer="200"/>
<rectangle x1="-10.5918" y1="2.2098" x2="-10.287" y2="2.3622" layer="200"/>
<rectangle x1="-9.8298" y1="2.2098" x2="-9.6774" y2="2.3622" layer="200"/>
<rectangle x1="-9.3726" y1="2.2098" x2="-9.2202" y2="2.3622" layer="200"/>
<rectangle x1="-8.001" y1="2.2098" x2="-7.239" y2="2.3622" layer="200"/>
<rectangle x1="-6.477" y1="2.2098" x2="-5.715" y2="2.3622" layer="200"/>
<rectangle x1="1.905" y1="2.2098" x2="4.0386" y2="2.3622" layer="200"/>
<rectangle x1="4.4958" y1="2.2098" x2="5.715" y2="2.3622" layer="200"/>
<rectangle x1="6.1722" y1="2.2098" x2="6.6294" y2="2.3622" layer="200"/>
<rectangle x1="6.7818" y1="2.2098" x2="7.0866" y2="2.3622" layer="200"/>
<rectangle x1="10.1346" y1="2.2098" x2="10.287" y2="2.3622" layer="200"/>
<rectangle x1="12.2682" y1="2.2098" x2="12.4206" y2="2.3622" layer="200"/>
<rectangle x1="-10.8966" y1="2.3622" x2="-10.7442" y2="2.5146" layer="200"/>
<rectangle x1="-10.5918" y1="2.3622" x2="-10.287" y2="2.5146" layer="200"/>
<rectangle x1="-9.8298" y1="2.3622" x2="-9.6774" y2="2.5146" layer="200"/>
<rectangle x1="-9.3726" y1="2.3622" x2="-9.2202" y2="2.5146" layer="200"/>
<rectangle x1="-8.001" y1="2.3622" x2="-7.6962" y2="2.5146" layer="200"/>
<rectangle x1="-7.239" y1="2.3622" x2="-6.6294" y2="2.5146" layer="200"/>
<rectangle x1="-6.0198" y1="2.3622" x2="-5.715" y2="2.5146" layer="200"/>
<rectangle x1="1.2954" y1="2.3622" x2="3.7338" y2="2.5146" layer="200"/>
<rectangle x1="4.191" y1="2.3622" x2="4.8006" y2="2.5146" layer="200"/>
<rectangle x1="4.953" y1="2.3622" x2="5.5626" y2="2.5146" layer="200"/>
<rectangle x1="6.0198" y1="2.3622" x2="6.477" y2="2.5146" layer="200"/>
<rectangle x1="6.6294" y1="2.3622" x2="6.9342" y2="2.5146" layer="200"/>
<rectangle x1="10.1346" y1="2.3622" x2="10.287" y2="2.5146" layer="200"/>
<rectangle x1="11.6586" y1="2.3622" x2="11.811" y2="2.5146" layer="200"/>
<rectangle x1="12.2682" y1="2.3622" x2="12.4206" y2="2.5146" layer="200"/>
<rectangle x1="-10.8966" y1="2.5146" x2="-10.7442" y2="2.667" layer="200"/>
<rectangle x1="-10.4394" y1="2.5146" x2="-10.1346" y2="2.667" layer="200"/>
<rectangle x1="-9.9822" y1="2.5146" x2="-9.8298" y2="2.667" layer="200"/>
<rectangle x1="-9.525" y1="2.5146" x2="-9.3726" y2="2.667" layer="200"/>
<rectangle x1="-8.001" y1="2.5146" x2="-6.3246" y2="2.667" layer="200"/>
<rectangle x1="-5.8674" y1="2.5146" x2="-5.4102" y2="2.667" layer="200"/>
<rectangle x1="0.8382" y1="2.5146" x2="2.9718" y2="2.667" layer="200"/>
<rectangle x1="3.429" y1="2.5146" x2="3.5814" y2="2.667" layer="200"/>
<rectangle x1="3.7338" y1="2.5146" x2="4.4958" y2="2.667" layer="200"/>
<rectangle x1="4.6482" y1="2.5146" x2="4.953" y2="2.667" layer="200"/>
<rectangle x1="5.2578" y1="2.5146" x2="5.4102" y2="2.667" layer="200"/>
<rectangle x1="5.715" y1="2.5146" x2="6.3246" y2="2.667" layer="200"/>
<rectangle x1="6.477" y1="2.5146" x2="6.7818" y2="2.667" layer="200"/>
<rectangle x1="9.9822" y1="2.5146" x2="10.1346" y2="2.667" layer="200"/>
<rectangle x1="11.3538" y1="2.5146" x2="12.1158" y2="2.667" layer="200"/>
<rectangle x1="12.2682" y1="2.5146" x2="12.4206" y2="2.667" layer="200"/>
<rectangle x1="-10.7442" y1="2.667" x2="-10.5918" y2="2.8194" layer="200"/>
<rectangle x1="-10.4394" y1="2.667" x2="-9.8298" y2="2.8194" layer="200"/>
<rectangle x1="-9.525" y1="2.667" x2="-9.2202" y2="2.8194" layer="200"/>
<rectangle x1="-8.001" y1="2.667" x2="-7.239" y2="2.8194" layer="200"/>
<rectangle x1="-6.477" y1="2.667" x2="-6.0198" y2="2.8194" layer="200"/>
<rectangle x1="-5.5626" y1="2.667" x2="-5.1054" y2="2.8194" layer="200"/>
<rectangle x1="0.2286" y1="2.667" x2="2.3622" y2="2.8194" layer="200"/>
<rectangle x1="2.9718" y1="2.667" x2="4.6482" y2="2.8194" layer="200"/>
<rectangle x1="5.5626" y1="2.667" x2="6.1722" y2="2.8194" layer="200"/>
<rectangle x1="6.3246" y1="2.667" x2="6.6294" y2="2.8194" layer="200"/>
<rectangle x1="9.9822" y1="2.667" x2="10.1346" y2="2.8194" layer="200"/>
<rectangle x1="10.287" y1="2.667" x2="10.5918" y2="2.8194" layer="200"/>
<rectangle x1="10.7442" y1="2.667" x2="11.6586" y2="2.8194" layer="200"/>
<rectangle x1="12.1158" y1="2.667" x2="12.4206" y2="2.8194" layer="200"/>
<rectangle x1="-10.7442" y1="2.8194" x2="-10.4394" y2="2.9718" layer="200"/>
<rectangle x1="-9.8298" y1="2.8194" x2="-8.9154" y2="2.9718" layer="200"/>
<rectangle x1="-7.8486" y1="2.8194" x2="-7.5438" y2="2.9718" layer="200"/>
<rectangle x1="-6.1722" y1="2.8194" x2="-5.715" y2="2.9718" layer="200"/>
<rectangle x1="-5.2578" y1="2.8194" x2="-4.8006" y2="2.9718" layer="200"/>
<rectangle x1="-0.5334" y1="2.8194" x2="1.4478" y2="2.9718" layer="200"/>
<rectangle x1="2.667" y1="2.8194" x2="3.2766" y2="2.9718" layer="200"/>
<rectangle x1="3.5814" y1="2.8194" x2="4.0386" y2="2.9718" layer="200"/>
<rectangle x1="4.953" y1="2.8194" x2="5.8674" y2="2.9718" layer="200"/>
<rectangle x1="6.1722" y1="2.8194" x2="6.477" y2="2.9718" layer="200"/>
<rectangle x1="10.287" y1="2.8194" x2="11.5062" y2="2.9718" layer="200"/>
<rectangle x1="11.9634" y1="2.8194" x2="12.2682" y2="2.9718" layer="200"/>
<rectangle x1="-10.5918" y1="2.9718" x2="-9.8298" y2="3.1242" layer="200"/>
<rectangle x1="-9.0678" y1="2.9718" x2="-8.6106" y2="3.1242" layer="200"/>
<rectangle x1="-8.001" y1="2.9718" x2="-7.3914" y2="3.1242" layer="200"/>
<rectangle x1="-5.8674" y1="2.9718" x2="-5.4102" y2="3.1242" layer="200"/>
<rectangle x1="-4.953" y1="2.9718" x2="-4.6482" y2="3.1242" layer="200"/>
<rectangle x1="-1.143" y1="2.9718" x2="0.8382" y2="3.1242" layer="200"/>
<rectangle x1="1.7526" y1="2.9718" x2="2.0574" y2="3.1242" layer="200"/>
<rectangle x1="2.2098" y1="2.9718" x2="2.8194" y2="3.1242" layer="200"/>
<rectangle x1="3.2766" y1="2.9718" x2="3.5814" y2="3.1242" layer="200"/>
<rectangle x1="4.4958" y1="2.9718" x2="4.953" y2="3.1242" layer="200"/>
<rectangle x1="5.2578" y1="2.9718" x2="5.715" y2="3.1242" layer="200"/>
<rectangle x1="5.8674" y1="2.9718" x2="6.3246" y2="3.1242" layer="200"/>
<rectangle x1="10.287" y1="2.9718" x2="10.7442" y2="3.1242" layer="200"/>
<rectangle x1="11.049" y1="2.9718" x2="11.9634" y2="3.1242" layer="200"/>
<rectangle x1="-10.287" y1="3.1242" x2="-9.8298" y2="3.2766" layer="200"/>
<rectangle x1="-8.763" y1="3.1242" x2="-8.4582" y2="3.2766" layer="200"/>
<rectangle x1="-7.5438" y1="3.1242" x2="-7.0866" y2="3.2766" layer="200"/>
<rectangle x1="-5.5626" y1="3.1242" x2="-5.1054" y2="3.2766" layer="200"/>
<rectangle x1="-4.8006" y1="3.1242" x2="-4.3434" y2="3.2766" layer="200"/>
<rectangle x1="-1.6002" y1="3.1242" x2="0.2286" y2="3.2766" layer="200"/>
<rectangle x1="1.2954" y1="3.1242" x2="1.6002" y2="3.2766" layer="200"/>
<rectangle x1="1.905" y1="3.1242" x2="2.3622" y2="3.2766" layer="200"/>
<rectangle x1="2.667" y1="3.1242" x2="2.9718" y2="3.2766" layer="200"/>
<rectangle x1="4.0386" y1="3.1242" x2="5.5626" y2="3.2766" layer="200"/>
<rectangle x1="5.715" y1="3.1242" x2="6.1722" y2="3.2766" layer="200"/>
<rectangle x1="10.1346" y1="3.1242" x2="10.5918" y2="3.2766" layer="200"/>
<rectangle x1="11.2014" y1="3.1242" x2="11.6586" y2="3.2766" layer="200"/>
<rectangle x1="-9.9822" y1="3.2766" x2="-9.525" y2="3.429" layer="200"/>
<rectangle x1="-8.4582" y1="3.2766" x2="-8.001" y2="3.429" layer="200"/>
<rectangle x1="-7.239" y1="3.2766" x2="-6.7818" y2="3.429" layer="200"/>
<rectangle x1="-5.2578" y1="3.2766" x2="-4.8006" y2="3.429" layer="200"/>
<rectangle x1="-4.4958" y1="3.2766" x2="-4.0386" y2="3.429" layer="200"/>
<rectangle x1="-2.2098" y1="3.2766" x2="-0.381" y2="3.429" layer="200"/>
<rectangle x1="0.9906" y1="3.2766" x2="1.143" y2="3.429" layer="200"/>
<rectangle x1="1.6002" y1="3.2766" x2="2.2098" y2="3.429" layer="200"/>
<rectangle x1="3.2766" y1="3.2766" x2="4.953" y2="3.429" layer="200"/>
<rectangle x1="5.4102" y1="3.2766" x2="5.8674" y2="3.429" layer="200"/>
<rectangle x1="10.1346" y1="3.2766" x2="10.4394" y2="3.429" layer="200"/>
<rectangle x1="10.8966" y1="3.2766" x2="11.6586" y2="3.429" layer="200"/>
<rectangle x1="-9.6774" y1="3.429" x2="-9.2202" y2="3.5814" layer="200"/>
<rectangle x1="-8.1534" y1="3.429" x2="-7.8486" y2="3.5814" layer="200"/>
<rectangle x1="-6.9342" y1="3.429" x2="-6.477" y2="3.5814" layer="200"/>
<rectangle x1="-5.1054" y1="3.429" x2="-4.4958" y2="3.5814" layer="200"/>
<rectangle x1="-4.191" y1="3.429" x2="-3.7338" y2="3.5814" layer="200"/>
<rectangle x1="-2.8194" y1="3.429" x2="-0.8382" y2="3.5814" layer="200"/>
<rectangle x1="0.381" y1="3.429" x2="1.7526" y2="3.5814" layer="200"/>
<rectangle x1="2.8194" y1="3.429" x2="4.4958" y2="3.5814" layer="200"/>
<rectangle x1="4.953" y1="3.429" x2="5.715" y2="3.5814" layer="200"/>
<rectangle x1="9.9822" y1="3.429" x2="10.4394" y2="3.5814" layer="200"/>
<rectangle x1="11.3538" y1="3.429" x2="11.6586" y2="3.5814" layer="200"/>
<rectangle x1="-9.3726" y1="3.5814" x2="-8.9154" y2="3.7338" layer="200"/>
<rectangle x1="-7.8486" y1="3.5814" x2="-7.3914" y2="3.7338" layer="200"/>
<rectangle x1="-6.7818" y1="3.5814" x2="-6.3246" y2="3.7338" layer="200"/>
<rectangle x1="-4.8006" y1="3.5814" x2="-4.3434" y2="3.7338" layer="200"/>
<rectangle x1="-4.0386" y1="3.5814" x2="-1.4478" y2="3.7338" layer="200"/>
<rectangle x1="-0.2286" y1="3.5814" x2="1.2954" y2="3.7338" layer="200"/>
<rectangle x1="2.5146" y1="3.5814" x2="4.191" y2="3.7338" layer="200"/>
<rectangle x1="4.4958" y1="3.5814" x2="5.2578" y2="3.7338" layer="200"/>
<rectangle x1="9.9822" y1="3.5814" x2="10.287" y2="3.7338" layer="200"/>
<rectangle x1="11.5062" y1="3.5814" x2="11.9634" y2="3.7338" layer="200"/>
<rectangle x1="-9.0678" y1="3.7338" x2="-8.6106" y2="3.8862" layer="200"/>
<rectangle x1="-7.6962" y1="3.7338" x2="-7.239" y2="3.8862" layer="200"/>
<rectangle x1="-6.7818" y1="3.7338" x2="-6.3246" y2="3.8862" layer="200"/>
<rectangle x1="-4.4958" y1="3.7338" x2="-3.8862" y2="3.8862" layer="200"/>
<rectangle x1="-3.7338" y1="3.7338" x2="-1.7526" y2="3.8862" layer="200"/>
<rectangle x1="-0.8382" y1="3.7338" x2="-0.381" y2="3.8862" layer="200"/>
<rectangle x1="1.2954" y1="3.7338" x2="2.0574" y2="3.8862" layer="200"/>
<rectangle x1="2.2098" y1="3.7338" x2="3.2766" y2="3.8862" layer="200"/>
<rectangle x1="3.7338" y1="3.7338" x2="4.6482" y2="3.8862" layer="200"/>
<rectangle x1="9.6774" y1="3.7338" x2="10.1346" y2="3.8862" layer="200"/>
<rectangle x1="10.8966" y1="3.7338" x2="11.049" y2="3.8862" layer="200"/>
<rectangle x1="11.6586" y1="3.7338" x2="12.1158" y2="3.8862" layer="200"/>
<rectangle x1="-8.763" y1="3.8862" x2="-8.4582" y2="4.0386" layer="200"/>
<rectangle x1="-7.3914" y1="3.8862" x2="-6.477" y2="4.0386" layer="200"/>
<rectangle x1="-4.4958" y1="3.8862" x2="-2.5146" y2="4.0386" layer="200"/>
<rectangle x1="-1.2954" y1="3.8862" x2="-0.8382" y2="4.0386" layer="200"/>
<rectangle x1="0.9906" y1="3.8862" x2="2.667" y2="4.0386" layer="200"/>
<rectangle x1="2.8194" y1="3.8862" x2="2.9718" y2="4.0386" layer="200"/>
<rectangle x1="3.1242" y1="3.8862" x2="4.0386" y2="4.0386" layer="200"/>
<rectangle x1="9.6774" y1="3.8862" x2="10.1346" y2="4.0386" layer="200"/>
<rectangle x1="11.9634" y1="3.8862" x2="12.1158" y2="4.0386" layer="200"/>
<rectangle x1="-8.6106" y1="4.0386" x2="-8.1534" y2="4.191" layer="200"/>
<rectangle x1="-6.9342" y1="4.0386" x2="-6.6294" y2="4.191" layer="200"/>
<rectangle x1="-5.1054" y1="4.0386" x2="-3.2766" y2="4.191" layer="200"/>
<rectangle x1="-2.5146" y1="4.0386" x2="-2.0574" y2="4.191" layer="200"/>
<rectangle x1="0.5334" y1="4.0386" x2="2.0574" y2="4.191" layer="200"/>
<rectangle x1="2.2098" y1="4.0386" x2="3.429" y2="4.191" layer="200"/>
<rectangle x1="9.525" y1="4.0386" x2="9.9822" y2="4.191" layer="200"/>
<rectangle x1="10.287" y1="4.0386" x2="10.4394" y2="4.191" layer="200"/>
<rectangle x1="11.9634" y1="4.0386" x2="12.1158" y2="4.191" layer="200"/>
<rectangle x1="-8.6106" y1="4.191" x2="-7.8486" y2="4.3434" layer="200"/>
<rectangle x1="-7.0866" y1="4.191" x2="-6.477" y2="4.3434" layer="200"/>
<rectangle x1="-5.8674" y1="4.191" x2="-5.715" y2="4.3434" layer="200"/>
<rectangle x1="-5.5626" y1="4.191" x2="-3.7338" y2="4.3434" layer="200"/>
<rectangle x1="-2.9718" y1="4.191" x2="-2.3622" y2="4.3434" layer="200"/>
<rectangle x1="-1.905" y1="4.191" x2="-1.7526" y2="4.3434" layer="200"/>
<rectangle x1="-0.2286" y1="4.191" x2="-0.0762" y2="4.3434" layer="200"/>
<rectangle x1="0.0762" y1="4.191" x2="0.8382" y2="4.3434" layer="200"/>
<rectangle x1="1.143" y1="4.191" x2="1.6002" y2="4.3434" layer="200"/>
<rectangle x1="1.7526" y1="4.191" x2="2.8194" y2="4.3434" layer="200"/>
<rectangle x1="9.2202" y1="4.191" x2="9.8298" y2="4.3434" layer="200"/>
<rectangle x1="10.1346" y1="4.191" x2="10.4394" y2="4.3434" layer="200"/>
<rectangle x1="11.811" y1="4.191" x2="12.1158" y2="4.3434" layer="200"/>
<rectangle x1="-8.6106" y1="4.3434" x2="-4.3434" y2="4.4958" layer="200"/>
<rectangle x1="-3.1242" y1="4.3434" x2="-2.8194" y2="4.4958" layer="200"/>
<rectangle x1="-2.667" y1="4.3434" x2="-2.5146" y2="4.4958" layer="200"/>
<rectangle x1="-2.3622" y1="4.3434" x2="-1.7526" y2="4.4958" layer="200"/>
<rectangle x1="-0.5334" y1="4.3434" x2="0.2286" y2="4.4958" layer="200"/>
<rectangle x1="0.5334" y1="4.3434" x2="0.6858" y2="4.4958" layer="200"/>
<rectangle x1="1.2954" y1="4.3434" x2="2.2098" y2="4.4958" layer="200"/>
<rectangle x1="9.2202" y1="4.3434" x2="9.6774" y2="4.4958" layer="200"/>
<rectangle x1="9.9822" y1="4.3434" x2="10.287" y2="4.4958" layer="200"/>
<rectangle x1="11.811" y1="4.3434" x2="11.9634" y2="4.4958" layer="200"/>
<rectangle x1="-8.6106" y1="4.4958" x2="-7.239" y2="4.6482" layer="200"/>
<rectangle x1="-6.9342" y1="4.4958" x2="-5.1054" y2="4.6482" layer="200"/>
<rectangle x1="-3.429" y1="4.4958" x2="-3.2766" y2="4.6482" layer="200"/>
<rectangle x1="-2.9718" y1="4.4958" x2="-2.2098" y2="4.6482" layer="200"/>
<rectangle x1="-1.143" y1="4.4958" x2="-0.381" y2="4.6482" layer="200"/>
<rectangle x1="0.381" y1="4.4958" x2="0.5334" y2="4.6482" layer="200"/>
<rectangle x1="1.4478" y1="4.4958" x2="1.7526" y2="4.6482" layer="200"/>
<rectangle x1="8.6106" y1="4.4958" x2="9.3726" y2="4.6482" layer="200"/>
<rectangle x1="9.8298" y1="4.4958" x2="10.287" y2="4.6482" layer="200"/>
<rectangle x1="11.6586" y1="4.4958" x2="11.9634" y2="4.6482" layer="200"/>
<rectangle x1="-8.6106" y1="4.6482" x2="-7.8486" y2="4.8006" layer="200"/>
<rectangle x1="-7.5438" y1="4.6482" x2="-7.239" y2="4.8006" layer="200"/>
<rectangle x1="-6.7818" y1="4.6482" x2="-5.715" y2="4.8006" layer="200"/>
<rectangle x1="-4.0386" y1="4.6482" x2="-2.8194" y2="4.8006" layer="200"/>
<rectangle x1="-2.3622" y1="4.6482" x2="-1.7526" y2="4.8006" layer="200"/>
<rectangle x1="-1.6002" y1="4.6482" x2="-0.9906" y2="4.8006" layer="200"/>
<rectangle x1="0.2286" y1="4.6482" x2="0.381" y2="4.8006" layer="200"/>
<rectangle x1="1.6002" y1="4.6482" x2="1.905" y2="4.8006" layer="200"/>
<rectangle x1="8.3058" y1="4.6482" x2="9.2202" y2="4.8006" layer="200"/>
<rectangle x1="9.6774" y1="4.6482" x2="9.9822" y2="4.8006" layer="200"/>
<rectangle x1="11.5062" y1="4.6482" x2="11.811" y2="4.8006" layer="200"/>
<rectangle x1="-8.6106" y1="4.8006" x2="-7.8486" y2="4.953" layer="200"/>
<rectangle x1="-7.5438" y1="4.8006" x2="-7.239" y2="4.953" layer="200"/>
<rectangle x1="-4.6482" y1="4.8006" x2="-4.0386" y2="4.953" layer="200"/>
<rectangle x1="-3.8862" y1="4.8006" x2="-3.5814" y2="4.953" layer="200"/>
<rectangle x1="-2.667" y1="4.8006" x2="-1.4478" y2="4.953" layer="200"/>
<rectangle x1="0.0762" y1="4.8006" x2="0.2286" y2="4.953" layer="200"/>
<rectangle x1="1.6002" y1="4.8006" x2="2.2098" y2="4.953" layer="200"/>
<rectangle x1="8.1534" y1="4.8006" x2="8.763" y2="4.953" layer="200"/>
<rectangle x1="9.3726" y1="4.8006" x2="9.8298" y2="4.953" layer="200"/>
<rectangle x1="11.5062" y1="4.8006" x2="11.6586" y2="4.953" layer="200"/>
<rectangle x1="-8.4582" y1="4.953" x2="-7.6962" y2="5.1054" layer="200"/>
<rectangle x1="-7.3914" y1="4.953" x2="-7.0866" y2="5.1054" layer="200"/>
<rectangle x1="-4.8006" y1="4.953" x2="-4.6482" y2="5.1054" layer="200"/>
<rectangle x1="-3.1242" y1="4.953" x2="-2.9718" y2="5.1054" layer="200"/>
<rectangle x1="-2.8194" y1="4.953" x2="-2.2098" y2="5.1054" layer="200"/>
<rectangle x1="-0.2286" y1="4.953" x2="0.0762" y2="5.1054" layer="200"/>
<rectangle x1="1.6002" y1="4.953" x2="1.905" y2="5.1054" layer="200"/>
<rectangle x1="2.0574" y1="4.953" x2="2.5146" y2="5.1054" layer="200"/>
<rectangle x1="4.6482" y1="4.953" x2="4.8006" y2="5.1054" layer="200"/>
<rectangle x1="7.8486" y1="4.953" x2="8.1534" y2="5.1054" layer="200"/>
<rectangle x1="9.0678" y1="4.953" x2="9.525" y2="5.1054" layer="200"/>
<rectangle x1="11.3538" y1="4.953" x2="11.6586" y2="5.1054" layer="200"/>
<rectangle x1="-8.4582" y1="5.1054" x2="-7.6962" y2="5.2578" layer="200"/>
<rectangle x1="-7.3914" y1="5.1054" x2="-7.0866" y2="5.2578" layer="200"/>
<rectangle x1="-6.6294" y1="5.1054" x2="-4.6482" y2="5.2578" layer="200"/>
<rectangle x1="-3.5814" y1="5.1054" x2="-2.2098" y2="5.2578" layer="200"/>
<rectangle x1="-0.6858" y1="5.1054" x2="0.0762" y2="5.2578" layer="200"/>
<rectangle x1="1.6002" y1="5.1054" x2="2.0574" y2="5.2578" layer="200"/>
<rectangle x1="2.2098" y1="5.1054" x2="2.667" y2="5.2578" layer="200"/>
<rectangle x1="7.239" y1="5.1054" x2="8.001" y2="5.2578" layer="200"/>
<rectangle x1="8.763" y1="5.1054" x2="9.3726" y2="5.2578" layer="200"/>
<rectangle x1="11.2014" y1="5.1054" x2="11.5062" y2="5.2578" layer="200"/>
<rectangle x1="-8.4582" y1="5.2578" x2="-7.5438" y2="5.4102" layer="200"/>
<rectangle x1="-7.239" y1="5.2578" x2="-6.9342" y2="5.4102" layer="200"/>
<rectangle x1="-4.191" y1="5.2578" x2="-4.0386" y2="5.4102" layer="200"/>
<rectangle x1="-3.7338" y1="5.2578" x2="-2.5146" y2="5.4102" layer="200"/>
<rectangle x1="-1.4478" y1="5.2578" x2="0.381" y2="5.4102" layer="200"/>
<rectangle x1="1.6002" y1="5.2578" x2="2.9718" y2="5.4102" layer="200"/>
<rectangle x1="6.6294" y1="5.2578" x2="7.5438" y2="5.4102" layer="200"/>
<rectangle x1="8.001" y1="5.2578" x2="8.763" y2="5.4102" layer="200"/>
<rectangle x1="11.049" y1="5.2578" x2="11.3538" y2="5.4102" layer="200"/>
<rectangle x1="-8.3058" y1="5.4102" x2="-7.5438" y2="5.5626" layer="200"/>
<rectangle x1="-7.0866" y1="5.4102" x2="-6.6294" y2="5.5626" layer="200"/>
<rectangle x1="-4.8006" y1="5.4102" x2="-4.6482" y2="5.5626" layer="200"/>
<rectangle x1="-4.3434" y1="5.4102" x2="-3.429" y2="5.5626" layer="200"/>
<rectangle x1="-2.9718" y1="5.4102" x2="-2.667" y2="5.5626" layer="200"/>
<rectangle x1="-1.7526" y1="5.4102" x2="-0.381" y2="5.5626" layer="200"/>
<rectangle x1="0.0762" y1="5.4102" x2="0.6858" y2="5.5626" layer="200"/>
<rectangle x1="2.0574" y1="5.4102" x2="3.8862" y2="5.5626" layer="200"/>
<rectangle x1="6.0198" y1="5.4102" x2="6.9342" y2="5.5626" layer="200"/>
<rectangle x1="7.3914" y1="5.4102" x2="8.3058" y2="5.5626" layer="200"/>
<rectangle x1="10.8966" y1="5.4102" x2="11.2014" y2="5.5626" layer="200"/>
<rectangle x1="-8.3058" y1="5.5626" x2="-8.001" y2="5.715" layer="200"/>
<rectangle x1="-7.8486" y1="5.5626" x2="-7.3914" y2="5.715" layer="200"/>
<rectangle x1="-6.9342" y1="5.5626" x2="-6.3246" y2="5.715" layer="200"/>
<rectangle x1="-5.715" y1="5.5626" x2="-2.8194" y2="5.715" layer="200"/>
<rectangle x1="-2.5146" y1="5.5626" x2="-0.9906" y2="5.715" layer="200"/>
<rectangle x1="0.2286" y1="5.5626" x2="0.9906" y2="5.715" layer="200"/>
<rectangle x1="2.2098" y1="5.5626" x2="4.191" y2="5.715" layer="200"/>
<rectangle x1="5.4102" y1="5.5626" x2="6.3246" y2="5.715" layer="200"/>
<rectangle x1="6.7818" y1="5.5626" x2="7.5438" y2="5.715" layer="200"/>
<rectangle x1="10.5918" y1="5.5626" x2="11.049" y2="5.715" layer="200"/>
<rectangle x1="-8.1534" y1="5.715" x2="-7.8486" y2="5.8674" layer="200"/>
<rectangle x1="-7.6962" y1="5.715" x2="-7.0866" y2="5.8674" layer="200"/>
<rectangle x1="-6.6294" y1="5.715" x2="-1.6002" y2="5.8674" layer="200"/>
<rectangle x1="0.6858" y1="5.715" x2="1.143" y2="5.8674" layer="200"/>
<rectangle x1="2.3622" y1="5.715" x2="2.5146" y2="5.8674" layer="200"/>
<rectangle x1="2.8194" y1="5.715" x2="3.1242" y2="5.8674" layer="200"/>
<rectangle x1="3.8862" y1="5.715" x2="4.4958" y2="5.8674" layer="200"/>
<rectangle x1="4.953" y1="5.715" x2="5.5626" y2="5.8674" layer="200"/>
<rectangle x1="6.0198" y1="5.715" x2="6.9342" y2="5.8674" layer="200"/>
<rectangle x1="10.4394" y1="5.715" x2="10.8966" y2="5.8674" layer="200"/>
<rectangle x1="-8.1534" y1="5.8674" x2="-7.8486" y2="6.0198" layer="200"/>
<rectangle x1="-7.6962" y1="5.8674" x2="-6.7818" y2="6.0198" layer="200"/>
<rectangle x1="-6.0198" y1="5.8674" x2="-3.7338" y2="6.0198" layer="200"/>
<rectangle x1="-3.2766" y1="5.8674" x2="-2.2098" y2="6.0198" layer="200"/>
<rectangle x1="0.8382" y1="5.8674" x2="1.4478" y2="6.0198" layer="200"/>
<rectangle x1="2.3622" y1="5.8674" x2="2.5146" y2="6.0198" layer="200"/>
<rectangle x1="4.0386" y1="5.8674" x2="5.1054" y2="6.0198" layer="200"/>
<rectangle x1="5.5626" y1="5.8674" x2="6.3246" y2="6.0198" layer="200"/>
<rectangle x1="9.8298" y1="5.8674" x2="10.5918" y2="6.0198" layer="200"/>
<rectangle x1="-8.001" y1="6.0198" x2="-7.6962" y2="6.1722" layer="200"/>
<rectangle x1="-7.3914" y1="6.0198" x2="-4.191" y2="6.1722" layer="200"/>
<rectangle x1="-3.2766" y1="6.0198" x2="-2.8194" y2="6.1722" layer="200"/>
<rectangle x1="1.143" y1="6.0198" x2="1.7526" y2="6.1722" layer="200"/>
<rectangle x1="2.3622" y1="6.0198" x2="2.667" y2="6.1722" layer="200"/>
<rectangle x1="4.3434" y1="6.0198" x2="5.8674" y2="6.1722" layer="200"/>
<rectangle x1="9.2202" y1="6.0198" x2="10.287" y2="6.1722" layer="200"/>
<rectangle x1="-7.8486" y1="6.1722" x2="-7.3914" y2="6.3246" layer="200"/>
<rectangle x1="-6.9342" y1="6.1722" x2="-6.1722" y2="6.3246" layer="200"/>
<rectangle x1="-6.0198" y1="6.1722" x2="-4.8006" y2="6.3246" layer="200"/>
<rectangle x1="1.4478" y1="6.1722" x2="2.0574" y2="6.3246" layer="200"/>
<rectangle x1="2.3622" y1="6.1722" x2="2.8194" y2="6.3246" layer="200"/>
<rectangle x1="4.6482" y1="6.1722" x2="5.2578" y2="6.3246" layer="200"/>
<rectangle x1="8.6106" y1="6.1722" x2="9.525" y2="6.3246" layer="200"/>
<rectangle x1="-7.6962" y1="6.3246" x2="-6.9342" y2="6.477" layer="200"/>
<rectangle x1="-6.6294" y1="6.3246" x2="-5.4102" y2="6.477" layer="200"/>
<rectangle x1="1.6002" y1="6.3246" x2="2.9718" y2="6.477" layer="200"/>
<rectangle x1="4.6482" y1="6.3246" x2="4.953" y2="6.477" layer="200"/>
<rectangle x1="7.8486" y1="6.3246" x2="9.0678" y2="6.477" layer="200"/>
<rectangle x1="-7.3914" y1="6.477" x2="-5.8674" y2="6.6294" layer="200"/>
<rectangle x1="0.381" y1="6.477" x2="0.9906" y2="6.6294" layer="200"/>
<rectangle x1="1.143" y1="6.477" x2="1.2954" y2="6.6294" layer="200"/>
<rectangle x1="1.905" y1="6.477" x2="2.5146" y2="6.6294" layer="200"/>
<rectangle x1="2.8194" y1="6.477" x2="3.1242" y2="6.6294" layer="200"/>
<rectangle x1="4.4958" y1="6.477" x2="5.4102" y2="6.6294" layer="200"/>
<rectangle x1="7.239" y1="6.477" x2="8.3058" y2="6.6294" layer="200"/>
<rectangle x1="-7.0866" y1="6.6294" x2="-6.477" y2="6.7818" layer="200"/>
<rectangle x1="-0.381" y1="6.6294" x2="1.143" y2="6.7818" layer="200"/>
<rectangle x1="2.0574" y1="6.6294" x2="2.3622" y2="6.7818" layer="200"/>
<rectangle x1="2.9718" y1="6.6294" x2="3.1242" y2="6.7818" layer="200"/>
<rectangle x1="4.4958" y1="6.6294" x2="5.715" y2="6.7818" layer="200"/>
<rectangle x1="6.6294" y1="6.6294" x2="7.6962" y2="6.7818" layer="200"/>
<rectangle x1="-6.9342" y1="6.7818" x2="-6.477" y2="6.9342" layer="200"/>
<rectangle x1="-1.905" y1="6.7818" x2="-1.6002" y2="6.9342" layer="200"/>
<rectangle x1="-0.9906" y1="6.7818" x2="1.2954" y2="6.9342" layer="200"/>
<rectangle x1="2.9718" y1="6.7818" x2="3.1242" y2="6.9342" layer="200"/>
<rectangle x1="4.4958" y1="6.7818" x2="4.6482" y2="6.9342" layer="200"/>
<rectangle x1="5.4102" y1="6.7818" x2="7.0866" y2="6.9342" layer="200"/>
<rectangle x1="-6.477" y1="6.9342" x2="-6.1722" y2="7.0866" layer="200"/>
<rectangle x1="-1.905" y1="6.9342" x2="-1.2954" y2="7.0866" layer="200"/>
<rectangle x1="-0.9906" y1="6.9342" x2="-0.5334" y2="7.0866" layer="200"/>
<rectangle x1="-0.0762" y1="6.9342" x2="0.381" y2="7.0866" layer="200"/>
<rectangle x1="0.9906" y1="6.9342" x2="1.6002" y2="7.0866" layer="200"/>
<rectangle x1="2.9718" y1="6.9342" x2="3.1242" y2="7.0866" layer="200"/>
<rectangle x1="4.3434" y1="6.9342" x2="4.6482" y2="7.0866" layer="200"/>
<rectangle x1="5.5626" y1="6.9342" x2="6.477" y2="7.0866" layer="200"/>
<rectangle x1="-6.3246" y1="7.0866" x2="-6.0198" y2="7.239" layer="200"/>
<rectangle x1="-1.905" y1="7.0866" x2="-1.7526" y2="7.239" layer="200"/>
<rectangle x1="-1.6002" y1="7.0866" x2="-0.9906" y2="7.239" layer="200"/>
<rectangle x1="-0.8382" y1="7.0866" x2="-0.381" y2="7.239" layer="200"/>
<rectangle x1="-0.2286" y1="7.0866" x2="0.0762" y2="7.239" layer="200"/>
<rectangle x1="0.5334" y1="7.0866" x2="1.905" y2="7.239" layer="200"/>
<rectangle x1="2.9718" y1="7.0866" x2="3.1242" y2="7.239" layer="200"/>
<rectangle x1="4.3434" y1="7.0866" x2="4.4958" y2="7.239" layer="200"/>
<rectangle x1="-6.1722" y1="7.239" x2="-5.715" y2="7.3914" layer="200"/>
<rectangle x1="-1.905" y1="7.239" x2="-1.7526" y2="7.3914" layer="200"/>
<rectangle x1="-1.6002" y1="7.239" x2="-0.381" y2="7.3914" layer="200"/>
<rectangle x1="-0.2286" y1="7.239" x2="0.6858" y2="7.3914" layer="200"/>
<rectangle x1="1.6002" y1="7.239" x2="2.2098" y2="7.3914" layer="200"/>
<rectangle x1="2.8194" y1="7.239" x2="3.1242" y2="7.3914" layer="200"/>
<rectangle x1="4.3434" y1="7.239" x2="4.4958" y2="7.3914" layer="200"/>
<rectangle x1="-5.8674" y1="7.3914" x2="-5.4102" y2="7.5438" layer="200"/>
<rectangle x1="-2.2098" y1="7.3914" x2="-1.7526" y2="7.5438" layer="200"/>
<rectangle x1="-1.6002" y1="7.3914" x2="-1.2954" y2="7.5438" layer="200"/>
<rectangle x1="-0.9906" y1="7.3914" x2="-0.5334" y2="7.5438" layer="200"/>
<rectangle x1="-0.2286" y1="7.3914" x2="0.2286" y2="7.5438" layer="200"/>
<rectangle x1="1.905" y1="7.3914" x2="2.5146" y2="7.5438" layer="200"/>
<rectangle x1="2.8194" y1="7.3914" x2="2.9718" y2="7.5438" layer="200"/>
<rectangle x1="4.3434" y1="7.3914" x2="4.4958" y2="7.5438" layer="200"/>
<rectangle x1="-5.5626" y1="7.5438" x2="-5.1054" y2="7.6962" layer="200"/>
<rectangle x1="-2.8194" y1="7.5438" x2="-1.7526" y2="7.6962" layer="200"/>
<rectangle x1="-1.6002" y1="7.5438" x2="-1.2954" y2="7.6962" layer="200"/>
<rectangle x1="-0.2286" y1="7.5438" x2="-0.0762" y2="7.6962" layer="200"/>
<rectangle x1="2.0574" y1="7.5438" x2="2.9718" y2="7.6962" layer="200"/>
<rectangle x1="3.1242" y1="7.5438" x2="3.429" y2="7.6962" layer="200"/>
<rectangle x1="4.3434" y1="7.5438" x2="4.4958" y2="7.6962" layer="200"/>
<rectangle x1="-5.2578" y1="7.6962" x2="-1.7526" y2="7.8486" layer="200"/>
<rectangle x1="-1.6002" y1="7.6962" x2="-1.2954" y2="7.8486" layer="200"/>
<rectangle x1="-0.2286" y1="7.6962" x2="-0.0762" y2="7.8486" layer="200"/>
<rectangle x1="2.0574" y1="7.6962" x2="2.667" y2="7.8486" layer="200"/>
<rectangle x1="2.9718" y1="7.6962" x2="3.429" y2="7.8486" layer="200"/>
<rectangle x1="4.3434" y1="7.6962" x2="4.4958" y2="7.8486" layer="200"/>
<rectangle x1="-4.4958" y1="7.8486" x2="-1.7526" y2="8.001" layer="200"/>
<rectangle x1="-1.6002" y1="7.8486" x2="-1.2954" y2="8.001" layer="200"/>
<rectangle x1="1.4478" y1="7.8486" x2="2.2098" y2="8.001" layer="200"/>
<rectangle x1="2.8194" y1="7.8486" x2="3.2766" y2="8.001" layer="200"/>
<rectangle x1="4.191" y1="7.8486" x2="4.3434" y2="8.001" layer="200"/>
<rectangle x1="-2.8194" y1="8.001" x2="-1.905" y2="8.1534" layer="200"/>
<rectangle x1="-1.6002" y1="8.001" x2="-1.2954" y2="8.1534" layer="200"/>
<rectangle x1="-0.381" y1="8.001" x2="-0.2286" y2="8.1534" layer="200"/>
<rectangle x1="0.8382" y1="8.001" x2="1.6002" y2="8.1534" layer="200"/>
<rectangle x1="2.3622" y1="8.001" x2="3.1242" y2="8.1534" layer="200"/>
<rectangle x1="4.0386" y1="8.001" x2="4.3434" y2="8.1534" layer="200"/>
<rectangle x1="-2.5146" y1="8.1534" x2="-1.905" y2="8.3058" layer="200"/>
<rectangle x1="-1.6002" y1="8.1534" x2="-1.2954" y2="8.3058" layer="200"/>
<rectangle x1="-0.381" y1="8.1534" x2="-0.2286" y2="8.3058" layer="200"/>
<rectangle x1="0.0762" y1="8.1534" x2="0.8382" y2="8.3058" layer="200"/>
<rectangle x1="1.7526" y1="8.1534" x2="2.9718" y2="8.3058" layer="200"/>
<rectangle x1="4.0386" y1="8.1534" x2="4.191" y2="8.3058" layer="200"/>
<rectangle x1="-2.2098" y1="8.3058" x2="-1.7526" y2="8.4582" layer="200"/>
<rectangle x1="-1.6002" y1="8.3058" x2="-1.2954" y2="8.4582" layer="200"/>
<rectangle x1="-0.381" y1="8.3058" x2="0.0762" y2="8.4582" layer="200"/>
<rectangle x1="1.143" y1="8.3058" x2="2.5146" y2="8.4582" layer="200"/>
<rectangle x1="3.8862" y1="8.3058" x2="4.0386" y2="8.4582" layer="200"/>
<rectangle x1="-1.905" y1="8.4582" x2="-1.7526" y2="8.6106" layer="200"/>
<rectangle x1="-1.4478" y1="8.4582" x2="-1.143" y2="8.6106" layer="200"/>
<rectangle x1="-0.9906" y1="8.4582" x2="-0.5334" y2="8.6106" layer="200"/>
<rectangle x1="0.6858" y1="8.4582" x2="1.905" y2="8.6106" layer="200"/>
<rectangle x1="3.7338" y1="8.4582" x2="3.8862" y2="8.6106" layer="200"/>
<rectangle x1="-1.905" y1="8.6106" x2="-1.6002" y2="8.763" layer="200"/>
<rectangle x1="-1.2954" y1="8.6106" x2="-0.9906" y2="8.763" layer="200"/>
<rectangle x1="-0.2286" y1="8.6106" x2="1.143" y2="8.763" layer="200"/>
<rectangle x1="3.1242" y1="8.6106" x2="3.7338" y2="8.763" layer="200"/>
<rectangle x1="-1.7526" y1="8.763" x2="-1.4478" y2="8.9154" layer="200"/>
<rectangle x1="-0.8382" y1="8.763" x2="0.5334" y2="8.9154" layer="200"/>
<rectangle x1="2.8194" y1="8.763" x2="3.2766" y2="8.9154" layer="200"/>
<rectangle x1="-1.7526" y1="8.9154" x2="-0.2286" y2="9.0678" layer="200"/>
<rectangle x1="2.0574" y1="8.9154" x2="2.8194" y2="9.0678" layer="200"/>
<rectangle x1="-1.6002" y1="9.0678" x2="-0.6858" y2="9.2202" layer="200"/>
<rectangle x1="1.6002" y1="9.0678" x2="2.2098" y2="9.2202" layer="200"/>
<rectangle x1="-1.2954" y1="9.2202" x2="-0.9906" y2="9.3726" layer="200"/>
<rectangle x1="1.143" y1="9.2202" x2="1.7526" y2="9.3726" layer="200"/>
<rectangle x1="-0.9906" y1="9.3726" x2="-0.6858" y2="9.525" layer="200"/>
<rectangle x1="0.0762" y1="9.3726" x2="1.143" y2="9.525" layer="200"/>
<rectangle x1="-0.8382" y1="9.525" x2="-0.381" y2="9.6774" layer="200"/>
<rectangle x1="-0.2286" y1="9.525" x2="0.0762" y2="9.6774" layer="200"/>
<rectangle x1="0.2286" y1="9.525" x2="0.381" y2="9.6774" layer="200"/>
<rectangle x1="-0.381" y1="9.6774" x2="-0.0762" y2="9.8298" layer="200"/>
</symbol>
<symbol name="PIN">
<wire x1="0" y1="0" x2="-5.08" y2="0" width="0.254" layer="103"/>
<text x="-4.826" y="0.254" size="2.032" layer="103" font="vector">&gt;VALUE</text>
<wire x1="-5.08" y1="0" x2="-6.35" y2="1.27" width="0.254" layer="103" curve="90"/>
<wire x1="-5.08" y1="0" x2="-6.35" y2="-1.27" width="0.254" layer="103" curve="-90"/>
</symbol>
<symbol name="MPM_LED">
<rectangle x1="-3.9116" y1="-3.2004" x2="3.302" y2="-3.0988" layer="200"/>
<rectangle x1="-3.9116" y1="-3.0988" x2="-3.81" y2="-2.9972" layer="200"/>
<rectangle x1="3.2004" y1="-3.0988" x2="3.302" y2="-2.9972" layer="200"/>
<rectangle x1="-3.9116" y1="-2.9972" x2="-3.81" y2="-2.8956" layer="200"/>
<rectangle x1="-3.7084" y1="-2.9972" x2="2.9972" y2="-2.8956" layer="200"/>
<rectangle x1="3.2004" y1="-2.9972" x2="3.302" y2="-2.8956" layer="200"/>
<rectangle x1="-3.9116" y1="-2.8956" x2="-3.81" y2="-2.794" layer="200"/>
<rectangle x1="-3.7084" y1="-2.8956" x2="-3.6068" y2="-2.794" layer="200"/>
<rectangle x1="2.8956" y1="-2.8956" x2="2.9972" y2="-2.794" layer="200"/>
<rectangle x1="3.2004" y1="-2.8956" x2="3.302" y2="-2.794" layer="200"/>
<rectangle x1="-3.9116" y1="-2.794" x2="-3.81" y2="-2.6924" layer="200"/>
<rectangle x1="-3.7084" y1="-2.794" x2="-3.6068" y2="-2.6924" layer="200"/>
<rectangle x1="2.8956" y1="-2.794" x2="2.9972" y2="-2.6924" layer="200"/>
<rectangle x1="3.2004" y1="-2.794" x2="3.302" y2="-2.6924" layer="200"/>
<rectangle x1="-3.9116" y1="-2.6924" x2="-3.81" y2="-2.5908" layer="200"/>
<rectangle x1="-3.7084" y1="-2.6924" x2="-3.6068" y2="-2.5908" layer="200"/>
<rectangle x1="2.8956" y1="-2.6924" x2="2.9972" y2="-2.5908" layer="200"/>
<rectangle x1="3.2004" y1="-2.6924" x2="3.302" y2="-2.5908" layer="200"/>
<rectangle x1="-3.9116" y1="-2.5908" x2="-3.81" y2="-2.4892" layer="200"/>
<rectangle x1="-3.7084" y1="-2.5908" x2="-3.6068" y2="-2.4892" layer="200"/>
<rectangle x1="2.8956" y1="-2.5908" x2="2.9972" y2="-2.4892" layer="200"/>
<rectangle x1="3.2004" y1="-2.5908" x2="3.302" y2="-2.4892" layer="200"/>
<rectangle x1="-3.9116" y1="-2.4892" x2="-3.81" y2="-2.3876" layer="200"/>
<rectangle x1="-3.7084" y1="-2.4892" x2="-3.6068" y2="-2.3876" layer="200"/>
<rectangle x1="-0.9652" y1="-2.4892" x2="0.6604" y2="-2.3876" layer="200"/>
<rectangle x1="2.8956" y1="-2.4892" x2="2.9972" y2="-2.3876" layer="200"/>
<rectangle x1="3.2004" y1="-2.4892" x2="3.302" y2="-2.3876" layer="200"/>
<rectangle x1="-3.9116" y1="-2.3876" x2="-3.81" y2="-2.286" layer="200"/>
<rectangle x1="-3.7084" y1="-2.3876" x2="-3.6068" y2="-2.286" layer="200"/>
<rectangle x1="-1.8796" y1="-2.3876" x2="-1.27" y2="-2.286" layer="200"/>
<rectangle x1="-0.9652" y1="-2.3876" x2="-0.8636" y2="-2.286" layer="200"/>
<rectangle x1="0.5588" y1="-2.3876" x2="0.6604" y2="-2.286" layer="200"/>
<rectangle x1="2.8956" y1="-2.3876" x2="2.9972" y2="-2.286" layer="200"/>
<rectangle x1="3.2004" y1="-2.3876" x2="3.302" y2="-2.286" layer="200"/>
<rectangle x1="-8.0772" y1="-2.286" x2="-3.81" y2="-2.1844" layer="200"/>
<rectangle x1="-3.7084" y1="-2.286" x2="-3.6068" y2="-2.1844" layer="200"/>
<rectangle x1="-1.5748" y1="-2.286" x2="-1.4732" y2="-2.1844" layer="200"/>
<rectangle x1="-0.9652" y1="-2.286" x2="-0.8636" y2="-2.1844" layer="200"/>
<rectangle x1="0.5588" y1="-2.286" x2="0.6604" y2="-2.1844" layer="200"/>
<rectangle x1="2.8956" y1="-2.286" x2="2.9972" y2="-2.1844" layer="200"/>
<rectangle x1="3.2004" y1="-2.286" x2="3.302" y2="-2.1844" layer="200"/>
<rectangle x1="-8.0772" y1="-2.1844" x2="-7.9756" y2="-2.0828" layer="200"/>
<rectangle x1="-3.9116" y1="-2.1844" x2="-3.81" y2="-2.0828" layer="200"/>
<rectangle x1="-3.7084" y1="-2.1844" x2="-3.6068" y2="-2.0828" layer="200"/>
<rectangle x1="-1.5748" y1="-2.1844" x2="-1.4732" y2="-2.0828" layer="200"/>
<rectangle x1="-0.9652" y1="-2.1844" x2="-0.8636" y2="-2.0828" layer="200"/>
<rectangle x1="0.5588" y1="-2.1844" x2="0.6604" y2="-2.0828" layer="200"/>
<rectangle x1="2.8956" y1="-2.1844" x2="2.9972" y2="-2.0828" layer="200"/>
<rectangle x1="3.2004" y1="-2.1844" x2="3.302" y2="-2.0828" layer="200"/>
<rectangle x1="-8.0772" y1="-2.0828" x2="-7.9756" y2="-1.9812" layer="200"/>
<rectangle x1="-3.9116" y1="-2.0828" x2="-3.81" y2="-1.9812" layer="200"/>
<rectangle x1="-3.7084" y1="-2.0828" x2="-3.6068" y2="-1.9812" layer="200"/>
<rectangle x1="-1.5748" y1="-2.0828" x2="-1.4732" y2="-1.9812" layer="200"/>
<rectangle x1="-0.9652" y1="-2.0828" x2="-0.8636" y2="-1.9812" layer="200"/>
<rectangle x1="-0.5588" y1="-2.0828" x2="0.254" y2="-1.9812" layer="200"/>
<rectangle x1="0.5588" y1="-2.0828" x2="0.6604" y2="-1.9812" layer="200"/>
<rectangle x1="2.8956" y1="-2.0828" x2="2.9972" y2="-1.9812" layer="200"/>
<rectangle x1="3.2004" y1="-2.0828" x2="3.302" y2="-1.9812" layer="200"/>
<rectangle x1="-9.1948" y1="-1.9812" x2="-7.9756" y2="-1.8796" layer="200"/>
<rectangle x1="-3.9116" y1="-1.9812" x2="-3.81" y2="-1.8796" layer="200"/>
<rectangle x1="-3.7084" y1="-1.9812" x2="-3.6068" y2="-1.8796" layer="200"/>
<rectangle x1="-1.5748" y1="-1.9812" x2="-1.4732" y2="-1.8796" layer="200"/>
<rectangle x1="-0.9652" y1="-1.9812" x2="-0.8636" y2="-1.8796" layer="200"/>
<rectangle x1="-0.5588" y1="-1.9812" x2="-0.4572" y2="-1.8796" layer="200"/>
<rectangle x1="0.1524" y1="-1.9812" x2="0.254" y2="-1.8796" layer="200"/>
<rectangle x1="0.5588" y1="-1.9812" x2="0.6604" y2="-1.8796" layer="200"/>
<rectangle x1="2.8956" y1="-1.9812" x2="2.9972" y2="-1.8796" layer="200"/>
<rectangle x1="3.2004" y1="-1.9812" x2="3.302" y2="-1.8796" layer="200"/>
<rectangle x1="-9.1948" y1="-1.8796" x2="-9.0932" y2="-1.778" layer="200"/>
<rectangle x1="-8.0772" y1="-1.8796" x2="-7.9756" y2="-1.778" layer="200"/>
<rectangle x1="-3.9116" y1="-1.8796" x2="-3.81" y2="-1.778" layer="200"/>
<rectangle x1="-3.7084" y1="-1.8796" x2="-3.6068" y2="-1.778" layer="200"/>
<rectangle x1="-1.5748" y1="-1.8796" x2="-1.4732" y2="-1.778" layer="200"/>
<rectangle x1="-0.9652" y1="-1.8796" x2="-0.8636" y2="-1.778" layer="200"/>
<rectangle x1="-0.5588" y1="-1.8796" x2="-0.4572" y2="-1.778" layer="200"/>
<rectangle x1="0.1524" y1="-1.8796" x2="0.254" y2="-1.778" layer="200"/>
<rectangle x1="0.5588" y1="-1.8796" x2="0.6604" y2="-1.778" layer="200"/>
<rectangle x1="2.8956" y1="-1.8796" x2="2.9972" y2="-1.778" layer="200"/>
<rectangle x1="3.2004" y1="-1.8796" x2="3.302" y2="-1.778" layer="200"/>
<rectangle x1="-9.1948" y1="-1.778" x2="-9.0932" y2="-1.6764" layer="200"/>
<rectangle x1="-8.0772" y1="-1.778" x2="-7.9756" y2="-1.6764" layer="200"/>
<rectangle x1="-3.9116" y1="-1.778" x2="-3.81" y2="-1.6764" layer="200"/>
<rectangle x1="-3.7084" y1="-1.778" x2="-3.6068" y2="-1.6764" layer="200"/>
<rectangle x1="-1.5748" y1="-1.778" x2="-1.4732" y2="-1.6764" layer="200"/>
<rectangle x1="-0.9652" y1="-1.778" x2="-0.4572" y2="-1.6764" layer="200"/>
<rectangle x1="0.1524" y1="-1.778" x2="0.6604" y2="-1.6764" layer="200"/>
<rectangle x1="2.8956" y1="-1.778" x2="2.9972" y2="-1.6764" layer="200"/>
<rectangle x1="3.2004" y1="-1.778" x2="3.302" y2="-1.6764" layer="200"/>
<rectangle x1="-9.1948" y1="-1.6764" x2="-9.0932" y2="-1.5748" layer="200"/>
<rectangle x1="-8.0772" y1="-1.6764" x2="-7.9756" y2="-1.5748" layer="200"/>
<rectangle x1="-3.9116" y1="-1.6764" x2="-3.81" y2="-1.5748" layer="200"/>
<rectangle x1="-3.7084" y1="-1.6764" x2="-3.6068" y2="-1.5748" layer="200"/>
<rectangle x1="-1.778" y1="-1.6764" x2="-1.4732" y2="-1.5748" layer="200"/>
<rectangle x1="2.8956" y1="-1.6764" x2="2.9972" y2="-1.5748" layer="200"/>
<rectangle x1="3.2004" y1="-1.6764" x2="3.302" y2="-1.5748" layer="200"/>
<rectangle x1="-9.1948" y1="-1.5748" x2="-9.0932" y2="-1.4732" layer="200"/>
<rectangle x1="-8.0772" y1="-1.5748" x2="-7.9756" y2="-1.4732" layer="200"/>
<rectangle x1="-3.9116" y1="-1.5748" x2="-3.81" y2="-1.4732" layer="200"/>
<rectangle x1="-3.7084" y1="-1.5748" x2="-3.6068" y2="-1.4732" layer="200"/>
<rectangle x1="2.8956" y1="-1.5748" x2="2.9972" y2="-1.4732" layer="200"/>
<rectangle x1="3.2004" y1="-1.5748" x2="3.302" y2="-1.4732" layer="200"/>
<rectangle x1="-9.1948" y1="-1.4732" x2="-9.0932" y2="-1.3716" layer="200"/>
<rectangle x1="-8.0772" y1="-1.4732" x2="-7.9756" y2="-1.3716" layer="200"/>
<rectangle x1="-3.9116" y1="-1.4732" x2="-3.81" y2="-1.3716" layer="200"/>
<rectangle x1="-3.7084" y1="-1.4732" x2="-3.6068" y2="-1.3716" layer="200"/>
<rectangle x1="2.8956" y1="-1.4732" x2="2.9972" y2="-1.3716" layer="200"/>
<rectangle x1="3.2004" y1="-1.4732" x2="3.302" y2="-1.3716" layer="200"/>
<rectangle x1="-9.1948" y1="-1.3716" x2="-9.0932" y2="-1.27" layer="200"/>
<rectangle x1="-8.0772" y1="-1.3716" x2="-7.9756" y2="-1.27" layer="200"/>
<rectangle x1="-3.9116" y1="-1.3716" x2="-3.81" y2="-1.27" layer="200"/>
<rectangle x1="-3.7084" y1="-1.3716" x2="-3.6068" y2="-1.27" layer="200"/>
<rectangle x1="2.8956" y1="-1.3716" x2="2.9972" y2="-1.27" layer="200"/>
<rectangle x1="3.2004" y1="-1.3716" x2="3.302" y2="-1.27" layer="200"/>
<rectangle x1="-9.1948" y1="-1.27" x2="-9.0932" y2="-1.1684" layer="200"/>
<rectangle x1="-8.0772" y1="-1.27" x2="-7.9756" y2="-1.1684" layer="200"/>
<rectangle x1="-3.9116" y1="-1.27" x2="-3.81" y2="-1.1684" layer="200"/>
<rectangle x1="-3.7084" y1="-1.27" x2="-3.6068" y2="-1.1684" layer="200"/>
<rectangle x1="-1.0668" y1="-1.27" x2="1.27" y2="-1.1684" layer="200"/>
<rectangle x1="2.8956" y1="-1.27" x2="2.9972" y2="-1.1684" layer="200"/>
<rectangle x1="3.2004" y1="-1.27" x2="3.302" y2="-1.1684" layer="200"/>
<rectangle x1="-9.1948" y1="-1.1684" x2="-9.0932" y2="-1.0668" layer="200"/>
<rectangle x1="-8.0772" y1="-1.1684" x2="-7.9756" y2="-1.0668" layer="200"/>
<rectangle x1="-3.9116" y1="-1.1684" x2="-3.81" y2="-1.0668" layer="200"/>
<rectangle x1="-3.7084" y1="-1.1684" x2="-3.6068" y2="-1.0668" layer="200"/>
<rectangle x1="-1.0668" y1="-1.1684" x2="-0.9652" y2="-1.0668" layer="200"/>
<rectangle x1="1.1684" y1="-1.1684" x2="1.27" y2="-1.0668" layer="200"/>
<rectangle x1="2.8956" y1="-1.1684" x2="2.9972" y2="-1.0668" layer="200"/>
<rectangle x1="3.2004" y1="-1.1684" x2="3.302" y2="-1.0668" layer="200"/>
<rectangle x1="-9.1948" y1="-1.0668" x2="-9.0932" y2="-0.9652" layer="200"/>
<rectangle x1="-8.0772" y1="-1.0668" x2="-7.9756" y2="-0.9652" layer="200"/>
<rectangle x1="-3.9116" y1="-1.0668" x2="-3.81" y2="-0.9652" layer="200"/>
<rectangle x1="-3.7084" y1="-1.0668" x2="-3.6068" y2="-0.9652" layer="200"/>
<rectangle x1="-1.0668" y1="-1.0668" x2="-0.9652" y2="-0.9652" layer="200"/>
<rectangle x1="1.1684" y1="-1.0668" x2="1.27" y2="-0.9652" layer="200"/>
<rectangle x1="2.8956" y1="-1.0668" x2="2.9972" y2="-0.9652" layer="200"/>
<rectangle x1="3.2004" y1="-1.0668" x2="3.302" y2="-0.9652" layer="200"/>
<rectangle x1="-9.1948" y1="-0.9652" x2="-7.9756" y2="-0.8636" layer="200"/>
<rectangle x1="-3.9116" y1="-0.9652" x2="-3.81" y2="-0.8636" layer="200"/>
<rectangle x1="-3.7084" y1="-0.9652" x2="-3.6068" y2="-0.8636" layer="200"/>
<rectangle x1="-1.0668" y1="-0.9652" x2="-0.9652" y2="-0.8636" layer="200"/>
<rectangle x1="1.1684" y1="-0.9652" x2="1.27" y2="-0.8636" layer="200"/>
<rectangle x1="2.8956" y1="-0.9652" x2="2.9972" y2="-0.8636" layer="200"/>
<rectangle x1="3.2004" y1="-0.9652" x2="3.302" y2="-0.8636" layer="200"/>
<rectangle x1="-9.1948" y1="-0.8636" x2="-9.0932" y2="-0.762" layer="200"/>
<rectangle x1="-8.0772" y1="-0.8636" x2="-7.9756" y2="-0.762" layer="200"/>
<rectangle x1="-3.9116" y1="-0.8636" x2="-3.81" y2="-0.762" layer="200"/>
<rectangle x1="-3.7084" y1="-0.8636" x2="-3.6068" y2="-0.762" layer="200"/>
<rectangle x1="-1.0668" y1="-0.8636" x2="-0.9652" y2="-0.762" layer="200"/>
<rectangle x1="1.1684" y1="-0.8636" x2="1.27" y2="-0.762" layer="200"/>
<rectangle x1="2.8956" y1="-0.8636" x2="2.9972" y2="-0.762" layer="200"/>
<rectangle x1="3.2004" y1="-0.8636" x2="3.302" y2="-0.762" layer="200"/>
<rectangle x1="-9.1948" y1="-0.762" x2="-9.0932" y2="-0.6604" layer="200"/>
<rectangle x1="-8.0772" y1="-0.762" x2="-7.9756" y2="-0.6604" layer="200"/>
<rectangle x1="-3.9116" y1="-0.762" x2="-3.81" y2="-0.6604" layer="200"/>
<rectangle x1="-3.7084" y1="-0.762" x2="-3.6068" y2="-0.6604" layer="200"/>
<rectangle x1="-1.0668" y1="-0.762" x2="-0.9652" y2="-0.6604" layer="200"/>
<rectangle x1="1.1684" y1="-0.762" x2="1.27" y2="-0.6604" layer="200"/>
<rectangle x1="2.286" y1="-0.762" x2="2.5908" y2="-0.6604" layer="200"/>
<rectangle x1="2.8956" y1="-0.762" x2="2.9972" y2="-0.6604" layer="200"/>
<rectangle x1="3.2004" y1="-0.762" x2="3.302" y2="-0.6604" layer="200"/>
<rectangle x1="-9.1948" y1="-0.6604" x2="-9.0932" y2="-0.5588" layer="200"/>
<rectangle x1="-8.0772" y1="-0.6604" x2="-7.9756" y2="-0.5588" layer="200"/>
<rectangle x1="-3.9116" y1="-0.6604" x2="-3.81" y2="-0.5588" layer="200"/>
<rectangle x1="-3.7084" y1="-0.6604" x2="-3.6068" y2="-0.5588" layer="200"/>
<rectangle x1="-1.5748" y1="-0.6604" x2="-0.9652" y2="-0.5588" layer="200"/>
<rectangle x1="1.1684" y1="-0.6604" x2="1.27" y2="-0.5588" layer="200"/>
<rectangle x1="2.286" y1="-0.6604" x2="2.3876" y2="-0.5588" layer="200"/>
<rectangle x1="2.4892" y1="-0.6604" x2="2.5908" y2="-0.5588" layer="200"/>
<rectangle x1="2.8956" y1="-0.6604" x2="2.9972" y2="-0.5588" layer="200"/>
<rectangle x1="3.2004" y1="-0.6604" x2="3.302" y2="-0.5588" layer="200"/>
<rectangle x1="-9.1948" y1="-0.5588" x2="-9.0932" y2="-0.4572" layer="200"/>
<rectangle x1="-8.0772" y1="-0.5588" x2="-7.9756" y2="-0.4572" layer="200"/>
<rectangle x1="-3.9116" y1="-0.5588" x2="-3.81" y2="-0.4572" layer="200"/>
<rectangle x1="-3.7084" y1="-0.5588" x2="-3.6068" y2="-0.4572" layer="200"/>
<rectangle x1="-2.9972" y1="-0.5588" x2="-2.1844" y2="-0.4572" layer="200"/>
<rectangle x1="-1.5748" y1="-0.5588" x2="-1.4732" y2="-0.4572" layer="200"/>
<rectangle x1="1.1684" y1="-0.5588" x2="1.27" y2="-0.4572" layer="200"/>
<rectangle x1="2.286" y1="-0.5588" x2="2.3876" y2="-0.4572" layer="200"/>
<rectangle x1="2.4892" y1="-0.5588" x2="2.5908" y2="-0.4572" layer="200"/>
<rectangle x1="2.8956" y1="-0.5588" x2="2.9972" y2="-0.4572" layer="200"/>
<rectangle x1="3.2004" y1="-0.5588" x2="3.302" y2="-0.4572" layer="200"/>
<rectangle x1="-9.1948" y1="-0.4572" x2="-9.0932" y2="-0.3556" layer="200"/>
<rectangle x1="-8.0772" y1="-0.4572" x2="-7.9756" y2="-0.3556" layer="200"/>
<rectangle x1="-3.9116" y1="-0.4572" x2="-3.81" y2="-0.3556" layer="200"/>
<rectangle x1="-3.7084" y1="-0.4572" x2="-3.6068" y2="-0.3556" layer="200"/>
<rectangle x1="-2.9972" y1="-0.4572" x2="-2.8956" y2="-0.3556" layer="200"/>
<rectangle x1="-2.286" y1="-0.4572" x2="-2.1844" y2="-0.3556" layer="200"/>
<rectangle x1="-1.5748" y1="-0.4572" x2="-1.4732" y2="-0.3556" layer="200"/>
<rectangle x1="1.1684" y1="-0.4572" x2="1.27" y2="-0.3556" layer="200"/>
<rectangle x1="2.286" y1="-0.4572" x2="2.3876" y2="-0.3556" layer="200"/>
<rectangle x1="2.4892" y1="-0.4572" x2="2.5908" y2="-0.3556" layer="200"/>
<rectangle x1="2.8956" y1="-0.4572" x2="2.9972" y2="-0.3556" layer="200"/>
<rectangle x1="3.2004" y1="-0.4572" x2="3.302" y2="-0.3556" layer="200"/>
<rectangle x1="-8.0772" y1="-0.3556" x2="-7.9756" y2="-0.254" layer="200"/>
<rectangle x1="-3.9116" y1="-0.3556" x2="-3.81" y2="-0.254" layer="200"/>
<rectangle x1="-3.7084" y1="-0.3556" x2="-3.6068" y2="-0.254" layer="200"/>
<rectangle x1="-2.9972" y1="-0.3556" x2="-2.8956" y2="-0.254" layer="200"/>
<rectangle x1="-2.286" y1="-0.3556" x2="-2.1844" y2="-0.254" layer="200"/>
<rectangle x1="-1.5748" y1="-0.3556" x2="-1.4732" y2="-0.254" layer="200"/>
<rectangle x1="1.1684" y1="-0.3556" x2="1.27" y2="-0.254" layer="200"/>
<rectangle x1="2.286" y1="-0.3556" x2="2.3876" y2="-0.254" layer="200"/>
<rectangle x1="2.4892" y1="-0.3556" x2="2.5908" y2="-0.254" layer="200"/>
<rectangle x1="2.8956" y1="-0.3556" x2="2.9972" y2="-0.254" layer="200"/>
<rectangle x1="3.2004" y1="-0.3556" x2="3.302" y2="-0.254" layer="200"/>
<rectangle x1="-9.1948" y1="-0.254" x2="-9.0932" y2="-0.1524" layer="200"/>
<rectangle x1="-8.0772" y1="-0.254" x2="-7.9756" y2="-0.1524" layer="200"/>
<rectangle x1="-3.9116" y1="-0.254" x2="-3.81" y2="-0.1524" layer="200"/>
<rectangle x1="-3.7084" y1="-0.254" x2="-3.6068" y2="-0.1524" layer="200"/>
<rectangle x1="-2.9972" y1="-0.254" x2="-2.8956" y2="-0.1524" layer="200"/>
<rectangle x1="-2.286" y1="-0.254" x2="-2.1844" y2="-0.1524" layer="200"/>
<rectangle x1="-1.5748" y1="-0.254" x2="-1.4732" y2="-0.1524" layer="200"/>
<rectangle x1="1.1684" y1="-0.254" x2="1.27" y2="-0.1524" layer="200"/>
<rectangle x1="2.286" y1="-0.254" x2="2.3876" y2="-0.1524" layer="200"/>
<rectangle x1="2.4892" y1="-0.254" x2="2.5908" y2="-0.1524" layer="200"/>
<rectangle x1="2.8956" y1="-0.254" x2="2.9972" y2="-0.1524" layer="200"/>
<rectangle x1="3.2004" y1="-0.254" x2="3.302" y2="-0.1524" layer="200"/>
<rectangle x1="-9.1948" y1="-0.1524" x2="-9.0932" y2="-0.0508" layer="200"/>
<rectangle x1="-8.0772" y1="-0.1524" x2="-7.9756" y2="-0.0508" layer="200"/>
<rectangle x1="-3.9116" y1="-0.1524" x2="-3.81" y2="-0.0508" layer="200"/>
<rectangle x1="-3.7084" y1="-0.1524" x2="-3.6068" y2="-0.0508" layer="200"/>
<rectangle x1="-2.9972" y1="-0.1524" x2="-2.8956" y2="-0.0508" layer="200"/>
<rectangle x1="-2.5908" y1="-0.1524" x2="-2.1844" y2="-0.0508" layer="200"/>
<rectangle x1="-1.5748" y1="-0.1524" x2="-1.4732" y2="-0.0508" layer="200"/>
<rectangle x1="1.1684" y1="-0.1524" x2="1.27" y2="-0.0508" layer="200"/>
<rectangle x1="2.286" y1="-0.1524" x2="2.3876" y2="-0.0508" layer="200"/>
<rectangle x1="2.4892" y1="-0.1524" x2="2.5908" y2="-0.0508" layer="200"/>
<rectangle x1="2.8956" y1="-0.1524" x2="2.9972" y2="-0.0508" layer="200"/>
<rectangle x1="3.2004" y1="-0.1524" x2="3.302" y2="-0.0508" layer="200"/>
<rectangle x1="-8.0772" y1="-0.0508" x2="-7.9756" y2="0.0508" layer="200"/>
<rectangle x1="-3.9116" y1="-0.0508" x2="-3.81" y2="0.0508" layer="200"/>
<rectangle x1="-3.7084" y1="-0.0508" x2="-3.6068" y2="0.0508" layer="200"/>
<rectangle x1="-2.9972" y1="-0.0508" x2="-2.8956" y2="0.0508" layer="200"/>
<rectangle x1="-2.5908" y1="-0.0508" x2="-2.4892" y2="0.0508" layer="200"/>
<rectangle x1="-1.5748" y1="-0.0508" x2="-1.4732" y2="0.0508" layer="200"/>
<rectangle x1="1.1684" y1="-0.0508" x2="1.27" y2="0.0508" layer="200"/>
<rectangle x1="2.286" y1="-0.0508" x2="2.3876" y2="0.0508" layer="200"/>
<rectangle x1="2.4892" y1="-0.0508" x2="2.5908" y2="0.0508" layer="200"/>
<rectangle x1="2.8956" y1="-0.0508" x2="2.9972" y2="0.0508" layer="200"/>
<rectangle x1="3.2004" y1="-0.0508" x2="3.302" y2="0.0508" layer="200"/>
<rectangle x1="-8.0772" y1="0.0508" x2="-7.9756" y2="0.1524" layer="200"/>
<rectangle x1="-3.9116" y1="0.0508" x2="-3.81" y2="0.1524" layer="200"/>
<rectangle x1="-3.7084" y1="0.0508" x2="-3.6068" y2="0.1524" layer="200"/>
<rectangle x1="-2.9972" y1="0.0508" x2="-2.8956" y2="0.1524" layer="200"/>
<rectangle x1="-2.5908" y1="0.0508" x2="-2.4892" y2="0.1524" layer="200"/>
<rectangle x1="-1.5748" y1="0.0508" x2="-1.4732" y2="0.1524" layer="200"/>
<rectangle x1="1.1684" y1="0.0508" x2="1.27" y2="0.1524" layer="200"/>
<rectangle x1="2.286" y1="0.0508" x2="2.3876" y2="0.1524" layer="200"/>
<rectangle x1="2.4892" y1="0.0508" x2="2.5908" y2="0.1524" layer="200"/>
<rectangle x1="2.8956" y1="0.0508" x2="2.9972" y2="0.1524" layer="200"/>
<rectangle x1="3.2004" y1="0.0508" x2="3.302" y2="0.1524" layer="200"/>
<rectangle x1="-9.1948" y1="0.1524" x2="-9.0932" y2="0.254" layer="200"/>
<rectangle x1="-8.0772" y1="0.1524" x2="-7.9756" y2="0.254" layer="200"/>
<rectangle x1="-3.9116" y1="0.1524" x2="-3.81" y2="0.254" layer="200"/>
<rectangle x1="-3.7084" y1="0.1524" x2="-3.6068" y2="0.254" layer="200"/>
<rectangle x1="-2.9972" y1="0.1524" x2="-2.8956" y2="0.254" layer="200"/>
<rectangle x1="-2.5908" y1="0.1524" x2="-2.4892" y2="0.254" layer="200"/>
<rectangle x1="-1.5748" y1="0.1524" x2="-1.4732" y2="0.254" layer="200"/>
<rectangle x1="1.1684" y1="0.1524" x2="1.27" y2="0.254" layer="200"/>
<rectangle x1="2.286" y1="0.1524" x2="2.3876" y2="0.254" layer="200"/>
<rectangle x1="2.4892" y1="0.1524" x2="2.5908" y2="0.254" layer="200"/>
<rectangle x1="2.8956" y1="0.1524" x2="2.9972" y2="0.254" layer="200"/>
<rectangle x1="3.2004" y1="0.1524" x2="3.302" y2="0.254" layer="200"/>
<rectangle x1="-9.1948" y1="0.254" x2="-9.0932" y2="0.3556" layer="200"/>
<rectangle x1="-8.0772" y1="0.254" x2="-7.9756" y2="0.3556" layer="200"/>
<rectangle x1="-3.9116" y1="0.254" x2="-3.81" y2="0.3556" layer="200"/>
<rectangle x1="-3.7084" y1="0.254" x2="-3.6068" y2="0.3556" layer="200"/>
<rectangle x1="-2.9972" y1="0.254" x2="-2.8956" y2="0.3556" layer="200"/>
<rectangle x1="-2.5908" y1="0.254" x2="-2.4892" y2="0.3556" layer="200"/>
<rectangle x1="-1.5748" y1="0.254" x2="-1.4732" y2="0.3556" layer="200"/>
<rectangle x1="1.1684" y1="0.254" x2="1.27" y2="0.3556" layer="200"/>
<rectangle x1="2.286" y1="0.254" x2="2.3876" y2="0.3556" layer="200"/>
<rectangle x1="2.4892" y1="0.254" x2="2.5908" y2="0.3556" layer="200"/>
<rectangle x1="2.8956" y1="0.254" x2="2.9972" y2="0.3556" layer="200"/>
<rectangle x1="3.2004" y1="0.254" x2="3.302" y2="0.3556" layer="200"/>
<rectangle x1="-9.1948" y1="0.3556" x2="-9.0932" y2="0.4572" layer="200"/>
<rectangle x1="-8.9916" y1="0.3556" x2="-7.9756" y2="0.4572" layer="200"/>
<rectangle x1="-3.9116" y1="0.3556" x2="-3.81" y2="0.4572" layer="200"/>
<rectangle x1="-3.7084" y1="0.3556" x2="-3.6068" y2="0.4572" layer="200"/>
<rectangle x1="-2.9972" y1="0.3556" x2="-2.8956" y2="0.4572" layer="200"/>
<rectangle x1="-2.5908" y1="0.3556" x2="-2.4892" y2="0.4572" layer="200"/>
<rectangle x1="-1.5748" y1="0.3556" x2="-1.4732" y2="0.4572" layer="200"/>
<rectangle x1="1.1684" y1="0.3556" x2="1.27" y2="0.4572" layer="200"/>
<rectangle x1="2.286" y1="0.3556" x2="2.3876" y2="0.4572" layer="200"/>
<rectangle x1="2.4892" y1="0.3556" x2="2.5908" y2="0.4572" layer="200"/>
<rectangle x1="2.8956" y1="0.3556" x2="2.9972" y2="0.4572" layer="200"/>
<rectangle x1="3.2004" y1="0.3556" x2="3.302" y2="0.4572" layer="200"/>
<rectangle x1="-9.1948" y1="0.4572" x2="-9.0932" y2="0.5588" layer="200"/>
<rectangle x1="-8.0772" y1="0.4572" x2="-7.9756" y2="0.5588" layer="200"/>
<rectangle x1="-3.9116" y1="0.4572" x2="-3.81" y2="0.5588" layer="200"/>
<rectangle x1="-3.7084" y1="0.4572" x2="-3.6068" y2="0.5588" layer="200"/>
<rectangle x1="-2.9972" y1="0.4572" x2="-2.8956" y2="0.5588" layer="200"/>
<rectangle x1="-2.5908" y1="0.4572" x2="-2.1844" y2="0.5588" layer="200"/>
<rectangle x1="-1.5748" y1="0.4572" x2="-1.4732" y2="0.5588" layer="200"/>
<rectangle x1="1.1684" y1="0.4572" x2="1.27" y2="0.5588" layer="200"/>
<rectangle x1="2.286" y1="0.4572" x2="2.3876" y2="0.5588" layer="200"/>
<rectangle x1="2.4892" y1="0.4572" x2="2.5908" y2="0.5588" layer="200"/>
<rectangle x1="2.8956" y1="0.4572" x2="2.9972" y2="0.5588" layer="200"/>
<rectangle x1="3.2004" y1="0.4572" x2="3.302" y2="0.5588" layer="200"/>
<rectangle x1="-9.1948" y1="0.5588" x2="-9.0932" y2="0.6604" layer="200"/>
<rectangle x1="-8.0772" y1="0.5588" x2="-7.9756" y2="0.6604" layer="200"/>
<rectangle x1="-3.9116" y1="0.5588" x2="-3.81" y2="0.6604" layer="200"/>
<rectangle x1="-3.7084" y1="0.5588" x2="-3.6068" y2="0.6604" layer="200"/>
<rectangle x1="-2.9972" y1="0.5588" x2="-2.8956" y2="0.6604" layer="200"/>
<rectangle x1="-2.286" y1="0.5588" x2="-2.1844" y2="0.6604" layer="200"/>
<rectangle x1="-1.5748" y1="0.5588" x2="-1.4732" y2="0.6604" layer="200"/>
<rectangle x1="1.1684" y1="0.5588" x2="1.27" y2="0.6604" layer="200"/>
<rectangle x1="2.286" y1="0.5588" x2="2.3876" y2="0.6604" layer="200"/>
<rectangle x1="2.4892" y1="0.5588" x2="2.5908" y2="0.6604" layer="200"/>
<rectangle x1="2.8956" y1="0.5588" x2="2.9972" y2="0.6604" layer="200"/>
<rectangle x1="3.2004" y1="0.5588" x2="3.302" y2="0.6604" layer="200"/>
<rectangle x1="-9.1948" y1="0.6604" x2="-9.0932" y2="0.762" layer="200"/>
<rectangle x1="-8.0772" y1="0.6604" x2="-7.9756" y2="0.762" layer="200"/>
<rectangle x1="-3.9116" y1="0.6604" x2="-3.81" y2="0.762" layer="200"/>
<rectangle x1="-3.7084" y1="0.6604" x2="-3.6068" y2="0.762" layer="200"/>
<rectangle x1="-2.9972" y1="0.6604" x2="-2.8956" y2="0.762" layer="200"/>
<rectangle x1="-2.286" y1="0.6604" x2="-2.1844" y2="0.762" layer="200"/>
<rectangle x1="-1.5748" y1="0.6604" x2="-1.4732" y2="0.762" layer="200"/>
<rectangle x1="1.1684" y1="0.6604" x2="1.27" y2="0.762" layer="200"/>
<rectangle x1="2.286" y1="0.6604" x2="2.3876" y2="0.762" layer="200"/>
<rectangle x1="2.4892" y1="0.6604" x2="2.5908" y2="0.762" layer="200"/>
<rectangle x1="2.8956" y1="0.6604" x2="2.9972" y2="0.762" layer="200"/>
<rectangle x1="3.2004" y1="0.6604" x2="3.302" y2="0.762" layer="200"/>
<rectangle x1="-9.1948" y1="0.762" x2="-9.0932" y2="0.8636" layer="200"/>
<rectangle x1="-8.0772" y1="0.762" x2="-7.9756" y2="0.8636" layer="200"/>
<rectangle x1="-3.9116" y1="0.762" x2="-3.81" y2="0.8636" layer="200"/>
<rectangle x1="-3.7084" y1="0.762" x2="-3.6068" y2="0.8636" layer="200"/>
<rectangle x1="-2.9972" y1="0.762" x2="-2.8956" y2="0.8636" layer="200"/>
<rectangle x1="-2.286" y1="0.762" x2="-2.1844" y2="0.8636" layer="200"/>
<rectangle x1="-1.5748" y1="0.762" x2="-1.4732" y2="0.8636" layer="200"/>
<rectangle x1="1.1684" y1="0.762" x2="1.27" y2="0.8636" layer="200"/>
<rectangle x1="2.286" y1="0.762" x2="2.3876" y2="0.8636" layer="200"/>
<rectangle x1="2.4892" y1="0.762" x2="2.5908" y2="0.8636" layer="200"/>
<rectangle x1="2.8956" y1="0.762" x2="2.9972" y2="0.8636" layer="200"/>
<rectangle x1="3.2004" y1="0.762" x2="3.302" y2="0.8636" layer="200"/>
<rectangle x1="-9.1948" y1="0.8636" x2="-9.0932" y2="0.9652" layer="200"/>
<rectangle x1="-8.0772" y1="0.8636" x2="-7.9756" y2="0.9652" layer="200"/>
<rectangle x1="-3.9116" y1="0.8636" x2="-3.81" y2="0.9652" layer="200"/>
<rectangle x1="-3.7084" y1="0.8636" x2="-3.6068" y2="0.9652" layer="200"/>
<rectangle x1="-2.9972" y1="0.8636" x2="-2.1844" y2="0.9652" layer="200"/>
<rectangle x1="-1.5748" y1="0.8636" x2="-1.4732" y2="0.9652" layer="200"/>
<rectangle x1="1.1684" y1="0.8636" x2="1.27" y2="0.9652" layer="200"/>
<rectangle x1="2.286" y1="0.8636" x2="2.3876" y2="0.9652" layer="200"/>
<rectangle x1="2.4892" y1="0.8636" x2="2.5908" y2="0.9652" layer="200"/>
<rectangle x1="2.8956" y1="0.8636" x2="2.9972" y2="0.9652" layer="200"/>
<rectangle x1="3.2004" y1="0.8636" x2="3.302" y2="0.9652" layer="200"/>
<rectangle x1="-9.1948" y1="0.9652" x2="-9.0932" y2="1.0668" layer="200"/>
<rectangle x1="-8.0772" y1="0.9652" x2="-7.9756" y2="1.0668" layer="200"/>
<rectangle x1="-3.9116" y1="0.9652" x2="-3.81" y2="1.0668" layer="200"/>
<rectangle x1="-3.7084" y1="0.9652" x2="-3.6068" y2="1.0668" layer="200"/>
<rectangle x1="-1.5748" y1="0.9652" x2="-1.4732" y2="1.0668" layer="200"/>
<rectangle x1="0.5588" y1="0.9652" x2="1.27" y2="1.0668" layer="200"/>
<rectangle x1="2.286" y1="0.9652" x2="2.3876" y2="1.0668" layer="200"/>
<rectangle x1="2.4892" y1="0.9652" x2="2.5908" y2="1.0668" layer="200"/>
<rectangle x1="2.8956" y1="0.9652" x2="2.9972" y2="1.0668" layer="200"/>
<rectangle x1="3.2004" y1="0.9652" x2="3.302" y2="1.0668" layer="200"/>
<rectangle x1="-9.1948" y1="1.0668" x2="-9.0932" y2="1.1684" layer="200"/>
<rectangle x1="-8.0772" y1="1.0668" x2="-7.9756" y2="1.1684" layer="200"/>
<rectangle x1="-3.9116" y1="1.0668" x2="-3.81" y2="1.1684" layer="200"/>
<rectangle x1="-3.7084" y1="1.0668" x2="-3.6068" y2="1.1684" layer="200"/>
<rectangle x1="-2.8956" y1="1.0668" x2="-2.4892" y2="1.1684" layer="200"/>
<rectangle x1="-1.5748" y1="1.0668" x2="-1.4732" y2="1.1684" layer="200"/>
<rectangle x1="0.5588" y1="1.0668" x2="0.6604" y2="1.1684" layer="200"/>
<rectangle x1="2.286" y1="1.0668" x2="2.5908" y2="1.1684" layer="200"/>
<rectangle x1="2.8956" y1="1.0668" x2="2.9972" y2="1.1684" layer="200"/>
<rectangle x1="3.2004" y1="1.0668" x2="3.302" y2="1.1684" layer="200"/>
<rectangle x1="-9.1948" y1="1.1684" x2="-9.0932" y2="1.27" layer="200"/>
<rectangle x1="-8.0772" y1="1.1684" x2="-7.9756" y2="1.27" layer="200"/>
<rectangle x1="-3.9116" y1="1.1684" x2="-3.81" y2="1.27" layer="200"/>
<rectangle x1="-3.7084" y1="1.1684" x2="-3.6068" y2="1.27" layer="200"/>
<rectangle x1="-2.9972" y1="1.1684" x2="-2.8956" y2="1.27" layer="200"/>
<rectangle x1="-2.5908" y1="1.1684" x2="-2.3876" y2="1.27" layer="200"/>
<rectangle x1="-1.5748" y1="1.1684" x2="-1.4732" y2="1.27" layer="200"/>
<rectangle x1="0.5588" y1="1.1684" x2="0.6604" y2="1.27" layer="200"/>
<rectangle x1="2.8956" y1="1.1684" x2="2.9972" y2="1.27" layer="200"/>
<rectangle x1="3.2004" y1="1.1684" x2="3.302" y2="1.27" layer="200"/>
<rectangle x1="-9.1948" y1="1.27" x2="-9.0932" y2="1.3716" layer="200"/>
<rectangle x1="-8.0772" y1="1.27" x2="-7.9756" y2="1.3716" layer="200"/>
<rectangle x1="-3.9116" y1="1.27" x2="-3.81" y2="1.3716" layer="200"/>
<rectangle x1="-3.7084" y1="1.27" x2="-3.6068" y2="1.3716" layer="200"/>
<rectangle x1="-2.4892" y1="1.27" x2="-2.3876" y2="1.3716" layer="200"/>
<rectangle x1="-1.5748" y1="1.27" x2="-1.4732" y2="1.3716" layer="200"/>
<rectangle x1="0.5588" y1="1.27" x2="0.6604" y2="1.3716" layer="200"/>
<rectangle x1="2.8956" y1="1.27" x2="2.9972" y2="1.3716" layer="200"/>
<rectangle x1="3.2004" y1="1.27" x2="3.302" y2="1.3716" layer="200"/>
<rectangle x1="-9.1948" y1="1.3716" x2="-9.0932" y2="1.4732" layer="200"/>
<rectangle x1="-8.0772" y1="1.3716" x2="-7.9756" y2="1.4732" layer="200"/>
<rectangle x1="-3.9116" y1="1.3716" x2="-3.81" y2="1.4732" layer="200"/>
<rectangle x1="-3.7084" y1="1.3716" x2="-3.6068" y2="1.4732" layer="200"/>
<rectangle x1="-2.5908" y1="1.3716" x2="-2.3876" y2="1.4732" layer="200"/>
<rectangle x1="-1.5748" y1="1.3716" x2="-1.4732" y2="1.4732" layer="200"/>
<rectangle x1="0.5588" y1="1.3716" x2="0.6604" y2="1.4732" layer="200"/>
<rectangle x1="2.8956" y1="1.3716" x2="2.9972" y2="1.4732" layer="200"/>
<rectangle x1="3.2004" y1="1.3716" x2="3.302" y2="1.4732" layer="200"/>
<rectangle x1="-9.1948" y1="1.4732" x2="-7.9756" y2="1.5748" layer="200"/>
<rectangle x1="-3.9116" y1="1.4732" x2="-3.81" y2="1.5748" layer="200"/>
<rectangle x1="-3.7084" y1="1.4732" x2="-3.6068" y2="1.5748" layer="200"/>
<rectangle x1="-2.794" y1="1.4732" x2="-2.4892" y2="1.5748" layer="200"/>
<rectangle x1="-1.5748" y1="1.4732" x2="0.6604" y2="1.5748" layer="200"/>
<rectangle x1="2.8956" y1="1.4732" x2="2.9972" y2="1.5748" layer="200"/>
<rectangle x1="3.2004" y1="1.4732" x2="3.302" y2="1.5748" layer="200"/>
<rectangle x1="-9.1948" y1="1.5748" x2="-9.0932" y2="1.6764" layer="200"/>
<rectangle x1="-8.0772" y1="1.5748" x2="-7.9756" y2="1.6764" layer="200"/>
<rectangle x1="-3.9116" y1="1.5748" x2="-3.81" y2="1.6764" layer="200"/>
<rectangle x1="-3.7084" y1="1.5748" x2="-3.6068" y2="1.6764" layer="200"/>
<rectangle x1="-2.4892" y1="1.5748" x2="-2.3876" y2="1.6764" layer="200"/>
<rectangle x1="2.8956" y1="1.5748" x2="2.9972" y2="1.6764" layer="200"/>
<rectangle x1="3.2004" y1="1.5748" x2="3.302" y2="1.6764" layer="200"/>
<rectangle x1="-9.1948" y1="1.6764" x2="-9.0932" y2="1.778" layer="200"/>
<rectangle x1="-8.0772" y1="1.6764" x2="-7.9756" y2="1.778" layer="200"/>
<rectangle x1="-3.9116" y1="1.6764" x2="-3.81" y2="1.778" layer="200"/>
<rectangle x1="-3.7084" y1="1.6764" x2="-3.6068" y2="1.778" layer="200"/>
<rectangle x1="-2.4892" y1="1.6764" x2="-2.3876" y2="1.778" layer="200"/>
<rectangle x1="2.8956" y1="1.6764" x2="2.9972" y2="1.778" layer="200"/>
<rectangle x1="3.2004" y1="1.6764" x2="3.302" y2="1.778" layer="200"/>
<rectangle x1="-9.1948" y1="1.778" x2="-9.0932" y2="1.8796" layer="200"/>
<rectangle x1="-8.0772" y1="1.778" x2="-7.9756" y2="1.8796" layer="200"/>
<rectangle x1="-3.9116" y1="1.778" x2="-3.81" y2="1.8796" layer="200"/>
<rectangle x1="-3.7084" y1="1.778" x2="-3.6068" y2="1.8796" layer="200"/>
<rectangle x1="-2.9972" y1="1.778" x2="-2.8956" y2="1.8796" layer="200"/>
<rectangle x1="-2.4892" y1="1.778" x2="-2.3876" y2="1.8796" layer="200"/>
<rectangle x1="2.8956" y1="1.778" x2="2.9972" y2="1.8796" layer="200"/>
<rectangle x1="3.2004" y1="1.778" x2="3.302" y2="1.8796" layer="200"/>
<rectangle x1="-9.1948" y1="1.8796" x2="-9.0932" y2="1.9812" layer="200"/>
<rectangle x1="-8.0772" y1="1.8796" x2="-7.9756" y2="1.9812" layer="200"/>
<rectangle x1="-3.9116" y1="1.8796" x2="-3.81" y2="1.9812" layer="200"/>
<rectangle x1="-3.7084" y1="1.8796" x2="-3.6068" y2="1.9812" layer="200"/>
<rectangle x1="-2.8956" y1="1.8796" x2="-2.4892" y2="1.9812" layer="200"/>
<rectangle x1="2.8956" y1="1.8796" x2="2.9972" y2="1.9812" layer="200"/>
<rectangle x1="3.2004" y1="1.8796" x2="3.302" y2="1.9812" layer="200"/>
<rectangle x1="-9.1948" y1="1.9812" x2="-9.0932" y2="2.0828" layer="200"/>
<rectangle x1="-8.0772" y1="1.9812" x2="-7.9756" y2="2.0828" layer="200"/>
<rectangle x1="-3.9116" y1="1.9812" x2="-3.81" y2="2.0828" layer="200"/>
<rectangle x1="-3.7084" y1="1.9812" x2="-3.6068" y2="2.0828" layer="200"/>
<rectangle x1="2.8956" y1="1.9812" x2="2.9972" y2="2.0828" layer="200"/>
<rectangle x1="3.2004" y1="1.9812" x2="3.302" y2="2.0828" layer="200"/>
<rectangle x1="-9.1948" y1="2.0828" x2="-9.0932" y2="2.1844" layer="200"/>
<rectangle x1="-8.0772" y1="2.0828" x2="-7.9756" y2="2.1844" layer="200"/>
<rectangle x1="-3.9116" y1="2.0828" x2="-3.81" y2="2.1844" layer="200"/>
<rectangle x1="-3.7084" y1="2.0828" x2="-3.6068" y2="2.1844" layer="200"/>
<rectangle x1="2.8956" y1="2.0828" x2="2.9972" y2="2.1844" layer="200"/>
<rectangle x1="3.2004" y1="2.0828" x2="3.302" y2="2.1844" layer="200"/>
<rectangle x1="-9.1948" y1="2.1844" x2="-9.0932" y2="2.286" layer="200"/>
<rectangle x1="-8.0772" y1="2.1844" x2="-7.9756" y2="2.286" layer="200"/>
<rectangle x1="-3.9116" y1="2.1844" x2="-3.81" y2="2.286" layer="200"/>
<rectangle x1="-3.7084" y1="2.1844" x2="-3.6068" y2="2.286" layer="200"/>
<rectangle x1="-1.9812" y1="2.1844" x2="-1.27" y2="2.286" layer="200"/>
<rectangle x1="-0.9652" y1="2.1844" x2="-0.4572" y2="2.286" layer="200"/>
<rectangle x1="0.1524" y1="2.1844" x2="0.6604" y2="2.286" layer="200"/>
<rectangle x1="2.8956" y1="2.1844" x2="2.9972" y2="2.286" layer="200"/>
<rectangle x1="3.2004" y1="2.1844" x2="3.302" y2="2.286" layer="200"/>
<rectangle x1="-9.1948" y1="2.286" x2="-9.0932" y2="2.3876" layer="200"/>
<rectangle x1="-8.0772" y1="2.286" x2="-7.9756" y2="2.3876" layer="200"/>
<rectangle x1="-3.9116" y1="2.286" x2="-3.81" y2="2.3876" layer="200"/>
<rectangle x1="-3.7084" y1="2.286" x2="-3.6068" y2="2.3876" layer="200"/>
<rectangle x1="-1.8796" y1="2.286" x2="-1.6764" y2="2.3876" layer="200"/>
<rectangle x1="-0.9652" y1="2.286" x2="-0.8636" y2="2.3876" layer="200"/>
<rectangle x1="-0.5588" y1="2.286" x2="-0.4572" y2="2.3876" layer="200"/>
<rectangle x1="0.1524" y1="2.286" x2="0.254" y2="2.3876" layer="200"/>
<rectangle x1="0.5588" y1="2.286" x2="0.6604" y2="2.3876" layer="200"/>
<rectangle x1="2.8956" y1="2.286" x2="2.9972" y2="2.3876" layer="200"/>
<rectangle x1="3.2004" y1="2.286" x2="3.302" y2="2.3876" layer="200"/>
<rectangle x1="-9.1948" y1="2.3876" x2="-9.0932" y2="2.4892" layer="200"/>
<rectangle x1="-8.0772" y1="2.3876" x2="-7.9756" y2="2.4892" layer="200"/>
<rectangle x1="-3.9116" y1="2.3876" x2="-3.81" y2="2.4892" layer="200"/>
<rectangle x1="-3.7084" y1="2.3876" x2="-3.6068" y2="2.4892" layer="200"/>
<rectangle x1="-1.778" y1="2.3876" x2="-1.5748" y2="2.4892" layer="200"/>
<rectangle x1="-0.9652" y1="2.3876" x2="-0.8636" y2="2.4892" layer="200"/>
<rectangle x1="-0.5588" y1="2.3876" x2="-0.4572" y2="2.4892" layer="200"/>
<rectangle x1="0.1524" y1="2.3876" x2="0.254" y2="2.4892" layer="200"/>
<rectangle x1="0.5588" y1="2.3876" x2="0.6604" y2="2.4892" layer="200"/>
<rectangle x1="2.8956" y1="2.3876" x2="2.9972" y2="2.4892" layer="200"/>
<rectangle x1="3.2004" y1="2.3876" x2="3.302" y2="2.4892" layer="200"/>
<rectangle x1="-9.1948" y1="2.4892" x2="-9.0932" y2="2.5908" layer="200"/>
<rectangle x1="-8.0772" y1="2.4892" x2="-7.9756" y2="2.5908" layer="200"/>
<rectangle x1="-3.9116" y1="2.4892" x2="-3.81" y2="2.5908" layer="200"/>
<rectangle x1="-3.7084" y1="2.4892" x2="-3.6068" y2="2.5908" layer="200"/>
<rectangle x1="-1.5748" y1="2.4892" x2="-1.3716" y2="2.5908" layer="200"/>
<rectangle x1="-0.9652" y1="2.4892" x2="-0.8636" y2="2.5908" layer="200"/>
<rectangle x1="-0.5588" y1="2.4892" x2="0.254" y2="2.5908" layer="200"/>
<rectangle x1="0.5588" y1="2.4892" x2="0.6604" y2="2.5908" layer="200"/>
<rectangle x1="2.8956" y1="2.4892" x2="2.9972" y2="2.5908" layer="200"/>
<rectangle x1="3.2004" y1="2.4892" x2="3.302" y2="2.5908" layer="200"/>
<rectangle x1="-9.1948" y1="2.5908" x2="-9.0932" y2="2.6924" layer="200"/>
<rectangle x1="-8.0772" y1="2.5908" x2="-7.9756" y2="2.6924" layer="200"/>
<rectangle x1="-3.9116" y1="2.5908" x2="-3.81" y2="2.6924" layer="200"/>
<rectangle x1="-3.7084" y1="2.5908" x2="-3.6068" y2="2.6924" layer="200"/>
<rectangle x1="-1.4732" y1="2.5908" x2="-1.27" y2="2.6924" layer="200"/>
<rectangle x1="-0.9652" y1="2.5908" x2="-0.8636" y2="2.6924" layer="200"/>
<rectangle x1="0.5588" y1="2.5908" x2="0.6604" y2="2.6924" layer="200"/>
<rectangle x1="2.8956" y1="2.5908" x2="2.9972" y2="2.6924" layer="200"/>
<rectangle x1="3.2004" y1="2.5908" x2="3.302" y2="2.6924" layer="200"/>
<rectangle x1="-9.1948" y1="2.6924" x2="-7.9756" y2="2.794" layer="200"/>
<rectangle x1="-3.9116" y1="2.6924" x2="-3.81" y2="2.794" layer="200"/>
<rectangle x1="-3.7084" y1="2.6924" x2="-3.6068" y2="2.794" layer="200"/>
<rectangle x1="-1.3716" y1="2.6924" x2="-1.27" y2="2.794" layer="200"/>
<rectangle x1="-0.9652" y1="2.6924" x2="-0.8636" y2="2.794" layer="200"/>
<rectangle x1="0.5588" y1="2.6924" x2="0.6604" y2="2.794" layer="200"/>
<rectangle x1="2.8956" y1="2.6924" x2="2.9972" y2="2.794" layer="200"/>
<rectangle x1="3.2004" y1="2.6924" x2="3.302" y2="2.794" layer="200"/>
<rectangle x1="-8.0772" y1="2.794" x2="-7.9756" y2="2.8956" layer="200"/>
<rectangle x1="-3.9116" y1="2.794" x2="-3.81" y2="2.8956" layer="200"/>
<rectangle x1="-3.7084" y1="2.794" x2="-3.6068" y2="2.8956" layer="200"/>
<rectangle x1="-1.8796" y1="2.794" x2="-1.778" y2="2.8956" layer="200"/>
<rectangle x1="-1.3716" y1="2.794" x2="-1.27" y2="2.8956" layer="200"/>
<rectangle x1="-0.9652" y1="2.794" x2="-0.8636" y2="2.8956" layer="200"/>
<rectangle x1="0.5588" y1="2.794" x2="0.6604" y2="2.8956" layer="200"/>
<rectangle x1="2.8956" y1="2.794" x2="2.9972" y2="2.8956" layer="200"/>
<rectangle x1="3.2004" y1="2.794" x2="3.302" y2="2.8956" layer="200"/>
<rectangle x1="-8.0772" y1="2.8956" x2="-3.81" y2="2.9972" layer="200"/>
<rectangle x1="-3.7084" y1="2.8956" x2="-3.6068" y2="2.9972" layer="200"/>
<rectangle x1="-1.8796" y1="2.8956" x2="-1.3716" y2="2.9972" layer="200"/>
<rectangle x1="-0.9652" y1="2.8956" x2="0.6604" y2="2.9972" layer="200"/>
<rectangle x1="2.8956" y1="2.8956" x2="2.9972" y2="2.9972" layer="200"/>
<rectangle x1="3.2004" y1="2.8956" x2="3.302" y2="2.9972" layer="200"/>
<rectangle x1="-3.9116" y1="2.9972" x2="-3.81" y2="3.0988" layer="200"/>
<rectangle x1="-3.7084" y1="2.9972" x2="-3.6068" y2="3.0988" layer="200"/>
<rectangle x1="2.8956" y1="2.9972" x2="2.9972" y2="3.0988" layer="200"/>
<rectangle x1="3.2004" y1="2.9972" x2="3.302" y2="3.0988" layer="200"/>
<rectangle x1="-3.9116" y1="3.0988" x2="-3.81" y2="3.2004" layer="200"/>
<rectangle x1="-3.7084" y1="3.0988" x2="-3.6068" y2="3.2004" layer="200"/>
<rectangle x1="2.8956" y1="3.0988" x2="2.9972" y2="3.2004" layer="200"/>
<rectangle x1="3.2004" y1="3.0988" x2="3.302" y2="3.2004" layer="200"/>
<rectangle x1="-3.9116" y1="3.2004" x2="-3.81" y2="3.302" layer="200"/>
<rectangle x1="-3.7084" y1="3.2004" x2="-3.6068" y2="3.302" layer="200"/>
<rectangle x1="2.8956" y1="3.2004" x2="2.9972" y2="3.302" layer="200"/>
<rectangle x1="3.2004" y1="3.2004" x2="3.302" y2="3.302" layer="200"/>
<rectangle x1="-3.9116" y1="3.302" x2="-3.81" y2="3.4036" layer="200"/>
<rectangle x1="-3.7084" y1="3.302" x2="-3.6068" y2="3.4036" layer="200"/>
<rectangle x1="2.8956" y1="3.302" x2="2.9972" y2="3.4036" layer="200"/>
<rectangle x1="3.2004" y1="3.302" x2="3.302" y2="3.4036" layer="200"/>
<rectangle x1="-3.9116" y1="3.4036" x2="-3.81" y2="3.5052" layer="200"/>
<rectangle x1="-3.7084" y1="3.4036" x2="-3.6068" y2="3.5052" layer="200"/>
<rectangle x1="2.8956" y1="3.4036" x2="2.9972" y2="3.5052" layer="200"/>
<rectangle x1="3.2004" y1="3.4036" x2="3.302" y2="3.5052" layer="200"/>
<rectangle x1="-3.9116" y1="3.5052" x2="-3.81" y2="3.6068" layer="200"/>
<rectangle x1="-3.7084" y1="3.5052" x2="-3.6068" y2="3.6068" layer="200"/>
<rectangle x1="2.8956" y1="3.5052" x2="2.9972" y2="3.6068" layer="200"/>
<rectangle x1="3.2004" y1="3.5052" x2="3.302" y2="3.6068" layer="200"/>
<rectangle x1="-3.9116" y1="3.6068" x2="-3.81" y2="3.7084" layer="200"/>
<rectangle x1="-3.7084" y1="3.6068" x2="2.9972" y2="3.7084" layer="200"/>
<rectangle x1="3.2004" y1="3.6068" x2="3.302" y2="3.7084" layer="200"/>
<rectangle x1="-3.9116" y1="3.7084" x2="-3.81" y2="3.81" layer="200"/>
<rectangle x1="3.2004" y1="3.7084" x2="3.302" y2="3.81" layer="200"/>
<rectangle x1="-3.9116" y1="3.81" x2="-3.81" y2="3.9116" layer="200"/>
<rectangle x1="3.2004" y1="3.81" x2="3.302" y2="3.9116" layer="200"/>
<rectangle x1="-3.9116" y1="3.9116" x2="3.302" y2="4.0132" layer="200"/>
<text x="-8.8392" y="4.6736" size="3.81" layer="103" font="vector">&gt;VALUE</text>
<text x="-8.9408" y="-8.2296" size="2" layer="200" font="vector">452N3N3001PC4H
LED+VDR 2+GND</text>
</symbol>
<symbol name="RING_CONNECTOR_M8">
<rectangle x1="6.09" y1="-9.31" x2="6.29" y2="-9.21" layer="200"/>
<rectangle x1="5.39" y1="-9.21" x2="7.19" y2="-9.11" layer="200"/>
<rectangle x1="7.29" y1="-9.21" x2="7.49" y2="-9.11" layer="200"/>
<rectangle x1="4.99" y1="-9.11" x2="5.99" y2="-9.01" layer="200"/>
<rectangle x1="6.49" y1="-9.11" x2="7.79" y2="-9.01" layer="200"/>
<rectangle x1="4.69" y1="-9.01" x2="5.29" y2="-8.91" layer="200"/>
<rectangle x1="7.59" y1="-9.01" x2="7.99" y2="-8.91" layer="200"/>
<rectangle x1="4.49" y1="-8.91" x2="4.79" y2="-8.81" layer="200"/>
<rectangle x1="7.79" y1="-8.91" x2="8.09" y2="-8.81" layer="200"/>
<rectangle x1="3.99" y1="-8.81" x2="4.09" y2="-8.71" layer="200"/>
<rectangle x1="4.19" y1="-8.81" x2="4.59" y2="-8.71" layer="200"/>
<rectangle x1="4.79" y1="-8.81" x2="5.39" y2="-8.71" layer="200"/>
<rectangle x1="5.79" y1="-8.81" x2="5.89" y2="-8.71" layer="200"/>
<rectangle x1="7.99" y1="-8.81" x2="8.29" y2="-8.71" layer="200"/>
<rectangle x1="3.79" y1="-8.71" x2="4.39" y2="-8.61" layer="200"/>
<rectangle x1="4.59" y1="-8.71" x2="7.19" y2="-8.61" layer="200"/>
<rectangle x1="8.09" y1="-8.71" x2="8.39" y2="-8.61" layer="200"/>
<rectangle x1="3.49" y1="-8.61" x2="3.99" y2="-8.51" layer="200"/>
<rectangle x1="4.39" y1="-8.61" x2="4.79" y2="-8.51" layer="200"/>
<rectangle x1="5.89" y1="-8.61" x2="7.59" y2="-8.51" layer="200"/>
<rectangle x1="8.29" y1="-8.61" x2="8.49" y2="-8.51" layer="200"/>
<rectangle x1="3.39" y1="-8.51" x2="3.79" y2="-8.41" layer="200"/>
<rectangle x1="4.09" y1="-8.51" x2="4.49" y2="-8.41" layer="200"/>
<rectangle x1="7.29" y1="-8.51" x2="7.39" y2="-8.41" layer="200"/>
<rectangle x1="7.49" y1="-8.51" x2="7.79" y2="-8.41" layer="200"/>
<rectangle x1="8.39" y1="-8.51" x2="8.69" y2="-8.41" layer="200"/>
<rectangle x1="3.29" y1="-8.41" x2="3.59" y2="-8.31" layer="200"/>
<rectangle x1="3.89" y1="-8.41" x2="4.29" y2="-8.31" layer="200"/>
<rectangle x1="7.59" y1="-8.41" x2="7.89" y2="-8.31" layer="200"/>
<rectangle x1="8.49" y1="-8.41" x2="8.79" y2="-8.31" layer="200"/>
<rectangle x1="3.09" y1="-8.31" x2="3.39" y2="-8.21" layer="200"/>
<rectangle x1="3.69" y1="-8.31" x2="4.09" y2="-8.21" layer="200"/>
<rectangle x1="7.79" y1="-8.31" x2="8.09" y2="-8.21" layer="200"/>
<rectangle x1="8.69" y1="-8.31" x2="8.89" y2="-8.21" layer="200"/>
<rectangle x1="2.99" y1="-8.21" x2="3.29" y2="-8.11" layer="200"/>
<rectangle x1="3.49" y1="-8.21" x2="3.79" y2="-8.11" layer="200"/>
<rectangle x1="7.99" y1="-8.21" x2="8.29" y2="-8.11" layer="200"/>
<rectangle x1="8.79" y1="-8.21" x2="8.99" y2="-8.11" layer="200"/>
<rectangle x1="2.79" y1="-8.11" x2="3.09" y2="-8.01" layer="200"/>
<rectangle x1="3.29" y1="-8.11" x2="3.59" y2="-8.01" layer="200"/>
<rectangle x1="8.09" y1="-8.11" x2="8.29" y2="-8.01" layer="200"/>
<rectangle x1="8.89" y1="-8.11" x2="9.09" y2="-8.01" layer="200"/>
<rectangle x1="2.79" y1="-8.01" x2="2.99" y2="-7.91" layer="200"/>
<rectangle x1="3.19" y1="-8.01" x2="3.49" y2="-7.91" layer="200"/>
<rectangle x1="8.19" y1="-8.01" x2="8.39" y2="-7.91" layer="200"/>
<rectangle x1="8.89" y1="-8.01" x2="9.19" y2="-7.91" layer="200"/>
<rectangle x1="2.69" y1="-7.91" x2="2.89" y2="-7.81" layer="200"/>
<rectangle x1="3.09" y1="-7.91" x2="3.29" y2="-7.81" layer="200"/>
<rectangle x1="8.29" y1="-7.91" x2="8.59" y2="-7.81" layer="200"/>
<rectangle x1="8.99" y1="-7.91" x2="9.19" y2="-7.81" layer="200"/>
<rectangle x1="2.49" y1="-7.81" x2="2.69" y2="-7.71" layer="200"/>
<rectangle x1="2.89" y1="-7.81" x2="3.19" y2="-7.71" layer="200"/>
<rectangle x1="8.39" y1="-7.81" x2="8.69" y2="-7.71" layer="200"/>
<rectangle x1="9.09" y1="-7.81" x2="9.29" y2="-7.71" layer="200"/>
<rectangle x1="2.39" y1="-7.71" x2="2.69" y2="-7.61" layer="200"/>
<rectangle x1="2.79" y1="-7.71" x2="3.09" y2="-7.61" layer="200"/>
<rectangle x1="8.49" y1="-7.71" x2="8.69" y2="-7.61" layer="200"/>
<rectangle x1="9.09" y1="-7.71" x2="9.29" y2="-7.61" layer="200"/>
<rectangle x1="2.29" y1="-7.61" x2="2.59" y2="-7.51" layer="200"/>
<rectangle x1="2.69" y1="-7.61" x2="2.89" y2="-7.51" layer="200"/>
<rectangle x1="8.59" y1="-7.61" x2="8.89" y2="-7.51" layer="200"/>
<rectangle x1="9.09" y1="-7.61" x2="9.29" y2="-7.51" layer="200"/>
<rectangle x1="2.19" y1="-7.51" x2="2.49" y2="-7.41" layer="200"/>
<rectangle x1="2.59" y1="-7.51" x2="2.89" y2="-7.41" layer="200"/>
<rectangle x1="5.19" y1="-7.51" x2="5.29" y2="-7.41" layer="200"/>
<rectangle x1="5.39" y1="-7.51" x2="6.49" y2="-7.41" layer="200"/>
<rectangle x1="8.79" y1="-7.51" x2="8.89" y2="-7.41" layer="200"/>
<rectangle x1="9.19" y1="-7.51" x2="9.29" y2="-7.41" layer="200"/>
<rectangle x1="2.09" y1="-7.41" x2="2.39" y2="-7.31" layer="200"/>
<rectangle x1="2.49" y1="-7.41" x2="2.79" y2="-7.31" layer="200"/>
<rectangle x1="4.99" y1="-7.41" x2="6.89" y2="-7.31" layer="200"/>
<rectangle x1="8.79" y1="-7.41" x2="8.99" y2="-7.31" layer="200"/>
<rectangle x1="9.19" y1="-7.41" x2="9.39" y2="-7.31" layer="200"/>
<rectangle x1="1.99" y1="-7.31" x2="2.29" y2="-7.21" layer="200"/>
<rectangle x1="2.39" y1="-7.31" x2="2.69" y2="-7.21" layer="200"/>
<rectangle x1="4.79" y1="-7.31" x2="5.19" y2="-7.21" layer="200"/>
<rectangle x1="6.59" y1="-7.31" x2="6.99" y2="-7.21" layer="200"/>
<rectangle x1="8.89" y1="-7.31" x2="8.99" y2="-7.21" layer="200"/>
<rectangle x1="9.19" y1="-7.31" x2="9.39" y2="-7.21" layer="200"/>
<rectangle x1="1.89" y1="-7.21" x2="2.09" y2="-7.11" layer="200"/>
<rectangle x1="2.29" y1="-7.21" x2="2.59" y2="-7.11" layer="200"/>
<rectangle x1="4.59" y1="-7.21" x2="4.99" y2="-7.11" layer="200"/>
<rectangle x1="6.89" y1="-7.21" x2="7.19" y2="-7.11" layer="200"/>
<rectangle x1="8.89" y1="-7.21" x2="9.09" y2="-7.11" layer="200"/>
<rectangle x1="9.19" y1="-7.21" x2="9.39" y2="-7.11" layer="200"/>
<rectangle x1="1.79" y1="-7.11" x2="2.09" y2="-7.01" layer="200"/>
<rectangle x1="2.29" y1="-7.11" x2="2.49" y2="-7.01" layer="200"/>
<rectangle x1="4.29" y1="-7.11" x2="4.79" y2="-7.01" layer="200"/>
<rectangle x1="6.99" y1="-7.11" x2="7.29" y2="-7.01" layer="200"/>
<rectangle x1="8.89" y1="-7.11" x2="9.09" y2="-7.01" layer="200"/>
<rectangle x1="9.29" y1="-7.11" x2="9.39" y2="-7.01" layer="200"/>
<rectangle x1="1.69" y1="-7.01" x2="1.89" y2="-6.91" layer="200"/>
<rectangle x1="2.19" y1="-7.01" x2="2.29" y2="-6.91" layer="200"/>
<rectangle x1="4.09" y1="-7.01" x2="4.49" y2="-6.91" layer="200"/>
<rectangle x1="7.09" y1="-7.01" x2="7.29" y2="-6.91" layer="200"/>
<rectangle x1="8.89" y1="-7.01" x2="9.09" y2="-6.91" layer="200"/>
<rectangle x1="9.29" y1="-7.01" x2="9.39" y2="-6.91" layer="200"/>
<rectangle x1="1.59" y1="-6.91" x2="1.89" y2="-6.81" layer="200"/>
<rectangle x1="2.09" y1="-6.91" x2="2.29" y2="-6.81" layer="200"/>
<rectangle x1="3.89" y1="-6.91" x2="4.29" y2="-6.81" layer="200"/>
<rectangle x1="7.19" y1="-6.91" x2="7.49" y2="-6.81" layer="200"/>
<rectangle x1="8.99" y1="-6.91" x2="9.19" y2="-6.81" layer="200"/>
<rectangle x1="9.29" y1="-6.91" x2="9.49" y2="-6.81" layer="200"/>
<rectangle x1="1.49" y1="-6.81" x2="1.79" y2="-6.71" layer="200"/>
<rectangle x1="2.09" y1="-6.81" x2="2.19" y2="-6.71" layer="200"/>
<rectangle x1="3.79" y1="-6.81" x2="4.19" y2="-6.71" layer="200"/>
<rectangle x1="7.29" y1="-6.81" x2="7.49" y2="-6.71" layer="200"/>
<rectangle x1="8.99" y1="-6.81" x2="9.19" y2="-6.71" layer="200"/>
<rectangle x1="9.29" y1="-6.81" x2="9.49" y2="-6.71" layer="200"/>
<rectangle x1="1.49" y1="-6.71" x2="1.69" y2="-6.61" layer="200"/>
<rectangle x1="1.99" y1="-6.71" x2="2.19" y2="-6.61" layer="200"/>
<rectangle x1="3.69" y1="-6.71" x2="3.99" y2="-6.61" layer="200"/>
<rectangle x1="7.39" y1="-6.71" x2="7.59" y2="-6.61" layer="200"/>
<rectangle x1="9.09" y1="-6.71" x2="9.19" y2="-6.61" layer="200"/>
<rectangle x1="9.29" y1="-6.71" x2="9.49" y2="-6.61" layer="200"/>
<rectangle x1="1.49" y1="-6.61" x2="1.69" y2="-6.51" layer="200"/>
<rectangle x1="1.99" y1="-6.61" x2="2.09" y2="-6.51" layer="200"/>
<rectangle x1="3.59" y1="-6.61" x2="3.89" y2="-6.51" layer="200"/>
<rectangle x1="7.29" y1="-6.61" x2="7.59" y2="-6.51" layer="200"/>
<rectangle x1="9.09" y1="-6.61" x2="9.49" y2="-6.51" layer="200"/>
<rectangle x1="1.39" y1="-6.51" x2="1.59" y2="-6.41" layer="200"/>
<rectangle x1="1.89" y1="-6.51" x2="2.09" y2="-6.41" layer="200"/>
<rectangle x1="3.59" y1="-6.51" x2="3.79" y2="-6.41" layer="200"/>
<rectangle x1="7.19" y1="-6.51" x2="7.59" y2="-6.41" layer="200"/>
<rectangle x1="9.09" y1="-6.51" x2="9.49" y2="-6.41" layer="200"/>
<rectangle x1="1.39" y1="-6.41" x2="1.59" y2="-6.31" layer="200"/>
<rectangle x1="1.79" y1="-6.41" x2="1.99" y2="-6.31" layer="200"/>
<rectangle x1="3.59" y1="-6.41" x2="3.79" y2="-6.31" layer="200"/>
<rectangle x1="7.19" y1="-6.41" x2="7.39" y2="-6.31" layer="200"/>
<rectangle x1="7.49" y1="-6.41" x2="7.59" y2="-6.31" layer="200"/>
<rectangle x1="9.09" y1="-6.41" x2="9.49" y2="-6.31" layer="200"/>
<rectangle x1="1.29" y1="-6.31" x2="1.49" y2="-6.21" layer="200"/>
<rectangle x1="1.69" y1="-6.31" x2="1.89" y2="-6.21" layer="200"/>
<rectangle x1="3.39" y1="-6.31" x2="3.59" y2="-6.21" layer="200"/>
<rectangle x1="7.19" y1="-6.31" x2="7.39" y2="-6.21" layer="200"/>
<rectangle x1="7.49" y1="-6.31" x2="7.69" y2="-6.21" layer="200"/>
<rectangle x1="9.19" y1="-6.31" x2="9.49" y2="-6.21" layer="200"/>
<rectangle x1="1.29" y1="-6.21" x2="1.49" y2="-6.11" layer="200"/>
<rectangle x1="1.59" y1="-6.21" x2="1.79" y2="-6.11" layer="200"/>
<rectangle x1="3.29" y1="-6.21" x2="3.59" y2="-6.11" layer="200"/>
<rectangle x1="7.19" y1="-6.21" x2="7.39" y2="-6.11" layer="200"/>
<rectangle x1="7.49" y1="-6.21" x2="7.69" y2="-6.11" layer="200"/>
<rectangle x1="9.09" y1="-6.21" x2="9.39" y2="-6.11" layer="200"/>
<rectangle x1="1.19" y1="-6.11" x2="1.39" y2="-6.01" layer="200"/>
<rectangle x1="1.59" y1="-6.11" x2="1.79" y2="-6.01" layer="200"/>
<rectangle x1="3.19" y1="-6.11" x2="3.49" y2="-6.01" layer="200"/>
<rectangle x1="7.09" y1="-6.11" x2="7.29" y2="-6.01" layer="200"/>
<rectangle x1="7.49" y1="-6.11" x2="7.69" y2="-6.01" layer="200"/>
<rectangle x1="9.09" y1="-6.11" x2="9.39" y2="-6.01" layer="200"/>
<rectangle x1="1.19" y1="-6.01" x2="1.29" y2="-5.91" layer="200"/>
<rectangle x1="1.59" y1="-6.01" x2="1.69" y2="-5.91" layer="200"/>
<rectangle x1="3.19" y1="-6.01" x2="3.39" y2="-5.91" layer="200"/>
<rectangle x1="7.09" y1="-6.01" x2="7.29" y2="-5.91" layer="200"/>
<rectangle x1="7.49" y1="-6.01" x2="7.69" y2="-5.91" layer="200"/>
<rectangle x1="9.09" y1="-6.01" x2="9.29" y2="-5.91" layer="200"/>
<rectangle x1="1.09" y1="-5.91" x2="1.29" y2="-5.81" layer="200"/>
<rectangle x1="1.49" y1="-5.91" x2="1.59" y2="-5.81" layer="200"/>
<rectangle x1="3.19" y1="-5.91" x2="3.39" y2="-5.81" layer="200"/>
<rectangle x1="7.09" y1="-5.91" x2="7.19" y2="-5.81" layer="200"/>
<rectangle x1="7.49" y1="-5.91" x2="7.69" y2="-5.81" layer="200"/>
<rectangle x1="9.09" y1="-5.91" x2="9.29" y2="-5.81" layer="200"/>
<rectangle x1="1.09" y1="-5.81" x2="1.29" y2="-5.71" layer="200"/>
<rectangle x1="1.39" y1="-5.81" x2="1.59" y2="-5.71" layer="200"/>
<rectangle x1="3.19" y1="-5.81" x2="3.39" y2="-5.71" layer="200"/>
<rectangle x1="6.89" y1="-5.81" x2="7.09" y2="-5.71" layer="200"/>
<rectangle x1="7.49" y1="-5.81" x2="7.59" y2="-5.71" layer="200"/>
<rectangle x1="9.09" y1="-5.81" x2="9.29" y2="-5.71" layer="200"/>
<rectangle x1="1.09" y1="-5.71" x2="1.29" y2="-5.61" layer="200"/>
<rectangle x1="1.39" y1="-5.71" x2="1.59" y2="-5.61" layer="200"/>
<rectangle x1="3.09" y1="-5.71" x2="3.39" y2="-5.61" layer="200"/>
<rectangle x1="6.79" y1="-5.71" x2="7.09" y2="-5.61" layer="200"/>
<rectangle x1="7.39" y1="-5.71" x2="7.59" y2="-5.61" layer="200"/>
<rectangle x1="8.99" y1="-5.71" x2="9.19" y2="-5.61" layer="200"/>
<rectangle x1="0.99" y1="-5.61" x2="1.19" y2="-5.51" layer="200"/>
<rectangle x1="1.29" y1="-5.61" x2="1.49" y2="-5.51" layer="200"/>
<rectangle x1="3.09" y1="-5.61" x2="3.39" y2="-5.51" layer="200"/>
<rectangle x1="6.79" y1="-5.61" x2="6.99" y2="-5.51" layer="200"/>
<rectangle x1="7.39" y1="-5.61" x2="7.59" y2="-5.51" layer="200"/>
<rectangle x1="8.99" y1="-5.61" x2="9.09" y2="-5.51" layer="200"/>
<rectangle x1="0.99" y1="-5.51" x2="1.19" y2="-5.41" layer="200"/>
<rectangle x1="1.29" y1="-5.51" x2="1.39" y2="-5.41" layer="200"/>
<rectangle x1="3.09" y1="-5.51" x2="3.49" y2="-5.41" layer="200"/>
<rectangle x1="6.59" y1="-5.51" x2="6.89" y2="-5.41" layer="200"/>
<rectangle x1="7.29" y1="-5.51" x2="7.49" y2="-5.41" layer="200"/>
<rectangle x1="8.89" y1="-5.51" x2="9.09" y2="-5.41" layer="200"/>
<rectangle x1="0.89" y1="-5.41" x2="1.09" y2="-5.31" layer="200"/>
<rectangle x1="1.19" y1="-5.41" x2="1.39" y2="-5.31" layer="200"/>
<rectangle x1="3.09" y1="-5.41" x2="3.59" y2="-5.31" layer="200"/>
<rectangle x1="6.49" y1="-5.41" x2="6.79" y2="-5.31" layer="200"/>
<rectangle x1="7.19" y1="-5.41" x2="7.39" y2="-5.31" layer="200"/>
<rectangle x1="8.79" y1="-5.41" x2="8.99" y2="-5.31" layer="200"/>
<rectangle x1="0.89" y1="-5.31" x2="1.09" y2="-5.21" layer="200"/>
<rectangle x1="1.19" y1="-5.31" x2="1.39" y2="-5.21" layer="200"/>
<rectangle x1="3.09" y1="-5.31" x2="3.29" y2="-5.21" layer="200"/>
<rectangle x1="3.39" y1="-5.31" x2="3.69" y2="-5.21" layer="200"/>
<rectangle x1="6.39" y1="-5.31" x2="6.69" y2="-5.21" layer="200"/>
<rectangle x1="7.09" y1="-5.31" x2="7.29" y2="-5.21" layer="200"/>
<rectangle x1="8.79" y1="-5.31" x2="8.99" y2="-5.21" layer="200"/>
<rectangle x1="0.89" y1="-5.21" x2="0.99" y2="-5.11" layer="200"/>
<rectangle x1="1.09" y1="-5.21" x2="1.29" y2="-5.11" layer="200"/>
<rectangle x1="3.19" y1="-5.21" x2="3.29" y2="-5.11" layer="200"/>
<rectangle x1="3.49" y1="-5.21" x2="3.79" y2="-5.11" layer="200"/>
<rectangle x1="6.19" y1="-5.21" x2="6.59" y2="-5.11" layer="200"/>
<rectangle x1="6.89" y1="-5.21" x2="7.19" y2="-5.11" layer="200"/>
<rectangle x1="8.69" y1="-5.21" x2="8.89" y2="-5.11" layer="200"/>
<rectangle x1="0.69" y1="-5.11" x2="0.89" y2="-5.01" layer="200"/>
<rectangle x1="1.09" y1="-5.11" x2="1.29" y2="-5.01" layer="200"/>
<rectangle x1="3.19" y1="-5.11" x2="3.39" y2="-5.01" layer="200"/>
<rectangle x1="3.69" y1="-5.11" x2="4.09" y2="-5.01" layer="200"/>
<rectangle x1="5.79" y1="-5.11" x2="6.39" y2="-5.01" layer="200"/>
<rectangle x1="6.79" y1="-5.11" x2="7.09" y2="-5.01" layer="200"/>
<rectangle x1="8.59" y1="-5.11" x2="8.79" y2="-5.01" layer="200"/>
<rectangle x1="0.69" y1="-5.01" x2="0.89" y2="-4.91" layer="200"/>
<rectangle x1="1.09" y1="-5.01" x2="1.29" y2="-4.91" layer="200"/>
<rectangle x1="3.19" y1="-5.01" x2="3.49" y2="-4.91" layer="200"/>
<rectangle x1="3.79" y1="-5.01" x2="5.89" y2="-4.91" layer="200"/>
<rectangle x1="5.99" y1="-5.01" x2="6.09" y2="-4.91" layer="200"/>
<rectangle x1="6.69" y1="-5.01" x2="6.89" y2="-4.91" layer="200"/>
<rectangle x1="8.49" y1="-5.01" x2="8.69" y2="-4.91" layer="200"/>
<rectangle x1="0.69" y1="-4.91" x2="0.89" y2="-4.81" layer="200"/>
<rectangle x1="1.09" y1="-4.91" x2="1.19" y2="-4.81" layer="200"/>
<rectangle x1="3.29" y1="-4.91" x2="3.49" y2="-4.81" layer="200"/>
<rectangle x1="4.19" y1="-4.91" x2="5.69" y2="-4.81" layer="200"/>
<rectangle x1="6.39" y1="-4.91" x2="6.69" y2="-4.81" layer="200"/>
<rectangle x1="8.39" y1="-4.91" x2="8.59" y2="-4.81" layer="200"/>
<rectangle x1="0.59" y1="-4.81" x2="0.79" y2="-4.71" layer="200"/>
<rectangle x1="0.99" y1="-4.81" x2="1.19" y2="-4.71" layer="200"/>
<rectangle x1="3.39" y1="-4.81" x2="3.59" y2="-4.71" layer="200"/>
<rectangle x1="6.19" y1="-4.81" x2="6.59" y2="-4.71" layer="200"/>
<rectangle x1="8.29" y1="-4.81" x2="8.49" y2="-4.71" layer="200"/>
<rectangle x1="0.59" y1="-4.71" x2="0.79" y2="-4.61" layer="200"/>
<rectangle x1="0.99" y1="-4.71" x2="1.19" y2="-4.61" layer="200"/>
<rectangle x1="3.49" y1="-4.71" x2="3.69" y2="-4.61" layer="200"/>
<rectangle x1="5.99" y1="-4.71" x2="6.39" y2="-4.61" layer="200"/>
<rectangle x1="8.19" y1="-4.71" x2="8.39" y2="-4.61" layer="200"/>
<rectangle x1="0.49" y1="-4.61" x2="0.69" y2="-4.51" layer="200"/>
<rectangle x1="0.99" y1="-4.61" x2="1.09" y2="-4.51" layer="200"/>
<rectangle x1="3.49" y1="-4.61" x2="4.09" y2="-4.51" layer="200"/>
<rectangle x1="5.59" y1="-4.61" x2="6.09" y2="-4.51" layer="200"/>
<rectangle x1="7.99" y1="-4.61" x2="8.29" y2="-4.51" layer="200"/>
<rectangle x1="0.49" y1="-4.51" x2="0.59" y2="-4.41" layer="200"/>
<rectangle x1="0.89" y1="-4.51" x2="1.09" y2="-4.41" layer="200"/>
<rectangle x1="3.59" y1="-4.51" x2="3.69" y2="-4.41" layer="200"/>
<rectangle x1="3.79" y1="-4.51" x2="4.39" y2="-4.41" layer="200"/>
<rectangle x1="4.99" y1="-4.51" x2="5.89" y2="-4.41" layer="200"/>
<rectangle x1="7.89" y1="-4.51" x2="8.19" y2="-4.41" layer="200"/>
<rectangle x1="0.39" y1="-4.41" x2="0.59" y2="-4.31" layer="200"/>
<rectangle x1="0.89" y1="-4.41" x2="1.09" y2="-4.31" layer="200"/>
<rectangle x1="4.29" y1="-4.41" x2="5.39" y2="-4.31" layer="200"/>
<rectangle x1="7.79" y1="-4.41" x2="8.09" y2="-4.31" layer="200"/>
<rectangle x1="0.39" y1="-4.31" x2="0.59" y2="-4.21" layer="200"/>
<rectangle x1="0.79" y1="-4.31" x2="0.99" y2="-4.21" layer="200"/>
<rectangle x1="4.49" y1="-4.31" x2="4.79" y2="-4.21" layer="200"/>
<rectangle x1="7.59" y1="-4.31" x2="7.89" y2="-4.21" layer="200"/>
<rectangle x1="0.29" y1="-4.21" x2="0.49" y2="-4.11" layer="200"/>
<rectangle x1="0.79" y1="-4.21" x2="0.99" y2="-4.11" layer="200"/>
<rectangle x1="7.49" y1="-4.21" x2="7.79" y2="-4.11" layer="200"/>
<rectangle x1="0.29" y1="-4.11" x2="0.49" y2="-4.01" layer="200"/>
<rectangle x1="0.69" y1="-4.11" x2="0.89" y2="-4.01" layer="200"/>
<rectangle x1="7.29" y1="-4.11" x2="7.59" y2="-4.01" layer="200"/>
<rectangle x1="0.29" y1="-4.01" x2="0.49" y2="-3.91" layer="200"/>
<rectangle x1="0.69" y1="-4.01" x2="0.89" y2="-3.91" layer="200"/>
<rectangle x1="7.19" y1="-4.01" x2="7.49" y2="-3.91" layer="200"/>
<rectangle x1="0.29" y1="-3.91" x2="0.49" y2="-3.81" layer="200"/>
<rectangle x1="0.59" y1="-3.91" x2="0.79" y2="-3.81" layer="200"/>
<rectangle x1="6.89" y1="-3.91" x2="7.29" y2="-3.81" layer="200"/>
<rectangle x1="0.19" y1="-3.81" x2="0.39" y2="-3.71" layer="200"/>
<rectangle x1="0.59" y1="-3.81" x2="0.79" y2="-3.71" layer="200"/>
<rectangle x1="6.69" y1="-3.81" x2="7.09" y2="-3.71" layer="200"/>
<rectangle x1="0.19" y1="-3.71" x2="0.29" y2="-3.61" layer="200"/>
<rectangle x1="0.49" y1="-3.71" x2="0.69" y2="-3.61" layer="200"/>
<rectangle x1="6.39" y1="-3.71" x2="6.79" y2="-3.61" layer="200"/>
<rectangle x1="0.09" y1="-3.61" x2="0.29" y2="-3.51" layer="200"/>
<rectangle x1="0.49" y1="-3.61" x2="0.69" y2="-3.51" layer="200"/>
<rectangle x1="6.29" y1="-3.61" x2="6.59" y2="-3.51" layer="200"/>
<rectangle x1="0.19" y1="-3.51" x2="0.29" y2="-3.41" layer="200"/>
<rectangle x1="0.39" y1="-3.51" x2="0.59" y2="-3.41" layer="200"/>
<rectangle x1="5.99" y1="-3.51" x2="6.39" y2="-3.41" layer="200"/>
<rectangle x1="0.09" y1="-3.41" x2="0.29" y2="-3.31" layer="200"/>
<rectangle x1="0.39" y1="-3.41" x2="0.59" y2="-3.31" layer="200"/>
<rectangle x1="5.69" y1="-3.41" x2="6.19" y2="-3.31" layer="200"/>
<rectangle x1="-0.01" y1="-3.31" x2="0.19" y2="-3.21" layer="200"/>
<rectangle x1="0.39" y1="-3.31" x2="0.49" y2="-3.21" layer="200"/>
<rectangle x1="5.49" y1="-3.31" x2="5.89" y2="-3.21" layer="200"/>
<rectangle x1="-0.01" y1="-3.21" x2="0.19" y2="-3.11" layer="200"/>
<rectangle x1="0.29" y1="-3.21" x2="0.49" y2="-3.11" layer="200"/>
<rectangle x1="5.39" y1="-3.21" x2="5.69" y2="-3.11" layer="200"/>
<rectangle x1="-0.01" y1="-3.11" x2="0.09" y2="-3.01" layer="200"/>
<rectangle x1="0.29" y1="-3.11" x2="0.79" y2="-3.01" layer="200"/>
<rectangle x1="5.09" y1="-3.11" x2="5.49" y2="-3.01" layer="200"/>
<rectangle x1="-0.11" y1="-3.01" x2="0.09" y2="-2.91" layer="200"/>
<rectangle x1="0.29" y1="-3.01" x2="0.49" y2="-2.91" layer="200"/>
<rectangle x1="0.59" y1="-3.01" x2="0.89" y2="-2.91" layer="200"/>
<rectangle x1="4.89" y1="-3.01" x2="5.29" y2="-2.91" layer="200"/>
<rectangle x1="-0.11" y1="-2.91" x2="0.09" y2="-2.81" layer="200"/>
<rectangle x1="0.19" y1="-2.91" x2="0.39" y2="-2.81" layer="200"/>
<rectangle x1="0.79" y1="-2.91" x2="1.09" y2="-2.81" layer="200"/>
<rectangle x1="4.69" y1="-2.91" x2="5.09" y2="-2.81" layer="200"/>
<rectangle x1="-0.11" y1="-2.81" x2="-0.01" y2="-2.71" layer="200"/>
<rectangle x1="0.19" y1="-2.81" x2="0.39" y2="-2.71" layer="200"/>
<rectangle x1="0.99" y1="-2.81" x2="1.39" y2="-2.71" layer="200"/>
<rectangle x1="4.49" y1="-2.81" x2="4.89" y2="-2.71" layer="200"/>
<rectangle x1="-0.21" y1="-2.71" x2="-0.01" y2="-2.61" layer="200"/>
<rectangle x1="0.19" y1="-2.71" x2="0.39" y2="-2.61" layer="200"/>
<rectangle x1="1.19" y1="-2.71" x2="1.49" y2="-2.61" layer="200"/>
<rectangle x1="4.39" y1="-2.71" x2="4.69" y2="-2.61" layer="200"/>
<rectangle x1="-0.21" y1="-2.61" x2="-0.01" y2="-2.51" layer="200"/>
<rectangle x1="0.19" y1="-2.61" x2="0.39" y2="-2.51" layer="200"/>
<rectangle x1="1.39" y1="-2.61" x2="1.69" y2="-2.51" layer="200"/>
<rectangle x1="4.19" y1="-2.61" x2="4.49" y2="-2.51" layer="200"/>
<rectangle x1="-0.51" y1="-2.51" x2="-0.01" y2="-2.41" layer="200"/>
<rectangle x1="0.19" y1="-2.51" x2="0.39" y2="-2.41" layer="200"/>
<rectangle x1="1.59" y1="-2.51" x2="1.89" y2="-2.41" layer="200"/>
<rectangle x1="3.99" y1="-2.51" x2="4.39" y2="-2.41" layer="200"/>
<rectangle x1="-0.61" y1="-2.41" x2="0.39" y2="-2.31" layer="200"/>
<rectangle x1="1.79" y1="-2.41" x2="2.19" y2="-2.31" layer="200"/>
<rectangle x1="3.79" y1="-2.41" x2="4.19" y2="-2.31" layer="200"/>
<rectangle x1="-0.81" y1="-2.31" x2="-0.61" y2="-2.21" layer="200"/>
<rectangle x1="-0.01" y1="-2.31" x2="0.39" y2="-2.21" layer="200"/>
<rectangle x1="1.99" y1="-2.31" x2="2.39" y2="-2.21" layer="200"/>
<rectangle x1="3.59" y1="-2.31" x2="3.89" y2="-2.21" layer="200"/>
<rectangle x1="-0.91" y1="-2.21" x2="-0.71" y2="-2.11" layer="200"/>
<rectangle x1="-0.11" y1="-2.21" x2="-0.01" y2="-2.11" layer="200"/>
<rectangle x1="0.19" y1="-2.21" x2="0.39" y2="-2.11" layer="200"/>
<rectangle x1="2.19" y1="-2.21" x2="2.59" y2="-2.11" layer="200"/>
<rectangle x1="3.49" y1="-2.21" x2="3.79" y2="-2.11" layer="200"/>
<rectangle x1="-1.01" y1="-2.11" x2="-0.81" y2="-2.01" layer="200"/>
<rectangle x1="-0.21" y1="-2.11" x2="-0.01" y2="-2.01" layer="200"/>
<rectangle x1="0.19" y1="-2.11" x2="0.39" y2="-2.01" layer="200"/>
<rectangle x1="2.39" y1="-2.11" x2="2.89" y2="-2.01" layer="200"/>
<rectangle x1="3.29" y1="-2.11" x2="3.49" y2="-2.01" layer="200"/>
<rectangle x1="-1.21" y1="-2.01" x2="-0.91" y2="-1.91" layer="200"/>
<rectangle x1="-0.21" y1="-2.01" x2="-0.11" y2="-1.91" layer="200"/>
<rectangle x1="0.19" y1="-2.01" x2="0.39" y2="-1.91" layer="200"/>
<rectangle x1="2.59" y1="-2.01" x2="3.39" y2="-1.91" layer="200"/>
<rectangle x1="-1.21" y1="-1.91" x2="-1.01" y2="-1.81" layer="200"/>
<rectangle x1="-0.31" y1="-1.91" x2="-0.11" y2="-1.81" layer="200"/>
<rectangle x1="0.19" y1="-1.91" x2="0.29" y2="-1.81" layer="200"/>
<rectangle x1="2.89" y1="-1.91" x2="3.19" y2="-1.81" layer="200"/>
<rectangle x1="-1.41" y1="-1.81" x2="-1.21" y2="-1.71" layer="200"/>
<rectangle x1="-0.41" y1="-1.81" x2="-0.21" y2="-1.71" layer="200"/>
<rectangle x1="0.09" y1="-1.81" x2="0.29" y2="-1.71" layer="200"/>
<rectangle x1="2.79" y1="-1.81" x2="2.99" y2="-1.71" layer="200"/>
<rectangle x1="3.09" y1="-1.81" x2="3.19" y2="-1.71" layer="200"/>
<rectangle x1="-1.41" y1="-1.71" x2="-1.21" y2="-1.61" layer="200"/>
<rectangle x1="-0.31" y1="-1.71" x2="-0.21" y2="-1.61" layer="200"/>
<rectangle x1="0.09" y1="-1.71" x2="0.29" y2="-1.61" layer="200"/>
<rectangle x1="2.69" y1="-1.71" x2="2.79" y2="-1.61" layer="200"/>
<rectangle x1="-1.51" y1="-1.61" x2="-1.41" y2="-1.51" layer="200"/>
<rectangle x1="-0.41" y1="-1.61" x2="-0.21" y2="-1.51" layer="200"/>
<rectangle x1="0.09" y1="-1.61" x2="0.19" y2="-1.51" layer="200"/>
<rectangle x1="2.59" y1="-1.61" x2="2.79" y2="-1.51" layer="200"/>
<rectangle x1="-1.71" y1="-1.51" x2="-1.51" y2="-1.41" layer="200"/>
<rectangle x1="-0.41" y1="-1.51" x2="-0.21" y2="-1.41" layer="200"/>
<rectangle x1="-0.01" y1="-1.51" x2="0.19" y2="-1.41" layer="200"/>
<rectangle x1="0.59" y1="-1.51" x2="1.19" y2="-1.41" layer="200"/>
<rectangle x1="2.49" y1="-1.51" x2="2.69" y2="-1.41" layer="200"/>
<rectangle x1="-1.71" y1="-1.41" x2="-1.51" y2="-1.31" layer="200"/>
<rectangle x1="-0.31" y1="-1.41" x2="0.09" y2="-1.31" layer="200"/>
<rectangle x1="0.39" y1="-1.41" x2="1.39" y2="-1.31" layer="200"/>
<rectangle x1="2.39" y1="-1.41" x2="2.59" y2="-1.31" layer="200"/>
<rectangle x1="-1.91" y1="-1.31" x2="-1.71" y2="-1.21" layer="200"/>
<rectangle x1="-0.31" y1="-1.31" x2="0.09" y2="-1.21" layer="200"/>
<rectangle x1="0.39" y1="-1.31" x2="0.59" y2="-1.21" layer="200"/>
<rectangle x1="1.19" y1="-1.31" x2="1.59" y2="-1.21" layer="200"/>
<rectangle x1="2.39" y1="-1.31" x2="2.59" y2="-1.21" layer="200"/>
<rectangle x1="-2.01" y1="-1.21" x2="-1.71" y2="-1.11" layer="200"/>
<rectangle x1="-0.31" y1="-1.21" x2="-0.01" y2="-1.11" layer="200"/>
<rectangle x1="0.29" y1="-1.21" x2="0.49" y2="-1.11" layer="200"/>
<rectangle x1="1.39" y1="-1.21" x2="1.79" y2="-1.11" layer="200"/>
<rectangle x1="2.39" y1="-1.21" x2="2.59" y2="-1.11" layer="200"/>
<rectangle x1="-2.11" y1="-1.11" x2="-1.81" y2="-1.01" layer="200"/>
<rectangle x1="-0.21" y1="-1.11" x2="-0.11" y2="-1.01" layer="200"/>
<rectangle x1="0.29" y1="-1.11" x2="0.49" y2="-1.01" layer="200"/>
<rectangle x1="1.59" y1="-1.11" x2="1.89" y2="-1.01" layer="200"/>
<rectangle x1="2.39" y1="-1.11" x2="2.49" y2="-1.01" layer="200"/>
<rectangle x1="-2.21" y1="-1.01" x2="-2.01" y2="-0.91" layer="200"/>
<rectangle x1="-0.21" y1="-1.01" x2="-0.01" y2="-0.91" layer="200"/>
<rectangle x1="0.29" y1="-1.01" x2="0.49" y2="-0.91" layer="200"/>
<rectangle x1="1.69" y1="-1.01" x2="1.89" y2="-0.91" layer="200"/>
<rectangle x1="2.39" y1="-1.01" x2="2.49" y2="-0.91" layer="200"/>
<rectangle x1="-2.31" y1="-0.91" x2="-2.01" y2="-0.81" layer="200"/>
<rectangle x1="-0.21" y1="-0.91" x2="-0.01" y2="-0.81" layer="200"/>
<rectangle x1="0.29" y1="-0.91" x2="0.49" y2="-0.81" layer="200"/>
<rectangle x1="1.79" y1="-0.91" x2="1.99" y2="-0.81" layer="200"/>
<rectangle x1="2.39" y1="-0.91" x2="2.49" y2="-0.81" layer="200"/>
<rectangle x1="-2.41" y1="-0.81" x2="-2.21" y2="-0.71" layer="200"/>
<rectangle x1="-0.21" y1="-0.81" x2="-0.01" y2="-0.71" layer="200"/>
<rectangle x1="0.29" y1="-0.81" x2="0.49" y2="-0.71" layer="200"/>
<rectangle x1="1.79" y1="-0.81" x2="1.99" y2="-0.71" layer="200"/>
<rectangle x1="2.39" y1="-0.81" x2="2.59" y2="-0.71" layer="200"/>
<rectangle x1="-2.51" y1="-0.71" x2="-2.31" y2="-0.61" layer="200"/>
<rectangle x1="-0.11" y1="-0.71" x2="0.09" y2="-0.61" layer="200"/>
<rectangle x1="0.29" y1="-0.71" x2="0.49" y2="-0.61" layer="200"/>
<rectangle x1="1.89" y1="-0.71" x2="2.09" y2="-0.61" layer="200"/>
<rectangle x1="2.39" y1="-0.71" x2="2.59" y2="-0.61" layer="200"/>
<rectangle x1="-2.71" y1="-0.61" x2="-2.41" y2="-0.51" layer="200"/>
<rectangle x1="-0.11" y1="-0.61" x2="0.09" y2="-0.51" layer="200"/>
<rectangle x1="0.39" y1="-0.61" x2="0.49" y2="-0.51" layer="200"/>
<rectangle x1="1.89" y1="-0.61" x2="2.09" y2="-0.51" layer="200"/>
<rectangle x1="2.39" y1="-0.61" x2="2.69" y2="-0.51" layer="200"/>
<rectangle x1="-2.81" y1="-0.51" x2="-2.51" y2="-0.41" layer="200"/>
<rectangle x1="-0.01" y1="-0.51" x2="0.19" y2="-0.41" layer="200"/>
<rectangle x1="0.39" y1="-0.51" x2="0.59" y2="-0.41" layer="200"/>
<rectangle x1="1.89" y1="-0.51" x2="2.09" y2="-0.41" layer="200"/>
<rectangle x1="2.39" y1="-0.51" x2="2.69" y2="-0.41" layer="200"/>
<rectangle x1="-2.91" y1="-0.41" x2="-2.61" y2="-0.31" layer="200"/>
<rectangle x1="0.09" y1="-0.41" x2="0.29" y2="-0.31" layer="200"/>
<rectangle x1="0.39" y1="-0.41" x2="0.59" y2="-0.31" layer="200"/>
<rectangle x1="1.89" y1="-0.41" x2="2.09" y2="-0.31" layer="200"/>
<rectangle x1="2.39" y1="-0.41" x2="2.79" y2="-0.31" layer="200"/>
<rectangle x1="-3.01" y1="-0.31" x2="-2.71" y2="-0.21" layer="200"/>
<rectangle x1="0.09" y1="-0.31" x2="0.29" y2="-0.21" layer="200"/>
<rectangle x1="0.49" y1="-0.31" x2="0.69" y2="-0.21" layer="200"/>
<rectangle x1="1.89" y1="-0.31" x2="2.09" y2="-0.21" layer="200"/>
<rectangle x1="2.39" y1="-0.31" x2="2.79" y2="-0.21" layer="200"/>
<rectangle x1="-3.11" y1="-0.21" x2="-2.81" y2="-0.11" layer="200"/>
<rectangle x1="0.19" y1="-0.21" x2="0.39" y2="-0.11" layer="200"/>
<rectangle x1="0.49" y1="-0.21" x2="0.79" y2="-0.11" layer="200"/>
<rectangle x1="1.89" y1="-0.21" x2="2.09" y2="-0.11" layer="200"/>
<rectangle x1="2.29" y1="-0.21" x2="2.49" y2="-0.11" layer="200"/>
<rectangle x1="2.79" y1="-0.21" x2="2.89" y2="-0.11" layer="200"/>
<rectangle x1="-3.21" y1="-0.11" x2="-2.91" y2="-0.01" layer="200"/>
<rectangle x1="0.19" y1="-0.11" x2="0.49" y2="-0.01" layer="200"/>
<rectangle x1="0.59" y1="-0.11" x2="0.89" y2="-0.01" layer="200"/>
<rectangle x1="1.89" y1="-0.11" x2="1.99" y2="-0.01" layer="200"/>
<rectangle x1="2.39" y1="-0.11" x2="2.59" y2="-0.01" layer="200"/>
<rectangle x1="2.79" y1="-0.11" x2="2.99" y2="-0.01" layer="200"/>
<rectangle x1="-3.41" y1="-0.01" x2="-3.01" y2="0.09" layer="200"/>
<rectangle x1="0.29" y1="-0.01" x2="0.59" y2="0.09" layer="200"/>
<rectangle x1="0.79" y1="-0.01" x2="0.99" y2="0.09" layer="200"/>
<rectangle x1="1.89" y1="-0.01" x2="1.99" y2="0.09" layer="200"/>
<rectangle x1="2.39" y1="-0.01" x2="2.59" y2="0.09" layer="200"/>
<rectangle x1="2.79" y1="-0.01" x2="2.99" y2="0.09" layer="200"/>
<rectangle x1="-3.51" y1="0.09" x2="-3.21" y2="0.19" layer="200"/>
<rectangle x1="0.39" y1="0.09" x2="0.69" y2="0.19" layer="200"/>
<rectangle x1="0.89" y1="0.09" x2="1.19" y2="0.19" layer="200"/>
<rectangle x1="1.79" y1="0.09" x2="1.99" y2="0.19" layer="200"/>
<rectangle x1="2.39" y1="0.09" x2="2.59" y2="0.19" layer="200"/>
<rectangle x1="2.89" y1="0.09" x2="2.99" y2="0.19" layer="200"/>
<rectangle x1="-3.71" y1="0.19" x2="-3.31" y2="0.29" layer="200"/>
<rectangle x1="0.49" y1="0.19" x2="0.69" y2="0.29" layer="200"/>
<rectangle x1="0.99" y1="0.19" x2="1.29" y2="0.29" layer="200"/>
<rectangle x1="1.79" y1="0.19" x2="1.99" y2="0.29" layer="200"/>
<rectangle x1="2.39" y1="0.19" x2="2.59" y2="0.29" layer="200"/>
<rectangle x1="2.89" y1="0.19" x2="3.09" y2="0.29" layer="200"/>
<rectangle x1="-3.71" y1="0.29" x2="-3.51" y2="0.39" layer="200"/>
<rectangle x1="0.59" y1="0.29" x2="0.79" y2="0.39" layer="200"/>
<rectangle x1="1.29" y1="0.29" x2="1.49" y2="0.39" layer="200"/>
<rectangle x1="1.59" y1="0.29" x2="1.89" y2="0.39" layer="200"/>
<rectangle x1="2.39" y1="0.29" x2="2.59" y2="0.39" layer="200"/>
<rectangle x1="2.89" y1="0.29" x2="3.09" y2="0.39" layer="200"/>
<rectangle x1="-3.81" y1="0.39" x2="-3.61" y2="0.49" layer="200"/>
<rectangle x1="0.69" y1="0.39" x2="0.89" y2="0.49" layer="200"/>
<rectangle x1="1.29" y1="0.39" x2="1.79" y2="0.49" layer="200"/>
<rectangle x1="2.39" y1="0.39" x2="2.59" y2="0.49" layer="200"/>
<rectangle x1="2.89" y1="0.39" x2="3.09" y2="0.49" layer="200"/>
<rectangle x1="-3.91" y1="0.49" x2="-3.81" y2="0.59" layer="200"/>
<rectangle x1="0.79" y1="0.49" x2="0.99" y2="0.59" layer="200"/>
<rectangle x1="1.39" y1="0.49" x2="1.69" y2="0.59" layer="200"/>
<rectangle x1="2.39" y1="0.49" x2="2.59" y2="0.59" layer="200"/>
<rectangle x1="2.99" y1="0.49" x2="3.09" y2="0.59" layer="200"/>
<rectangle x1="-4.01" y1="0.59" x2="-3.91" y2="0.69" layer="200"/>
<rectangle x1="0.79" y1="0.59" x2="1.09" y2="0.69" layer="200"/>
<rectangle x1="1.39" y1="0.59" x2="1.69" y2="0.69" layer="200"/>
<rectangle x1="2.39" y1="0.59" x2="2.59" y2="0.69" layer="200"/>
<rectangle x1="2.99" y1="0.59" x2="3.09" y2="0.69" layer="200"/>
<rectangle x1="-4.21" y1="0.69" x2="-3.91" y2="0.79" layer="200"/>
<rectangle x1="0.99" y1="0.69" x2="1.69" y2="0.79" layer="200"/>
<rectangle x1="2.29" y1="0.69" x2="2.49" y2="0.79" layer="200"/>
<rectangle x1="2.99" y1="0.69" x2="3.09" y2="0.79" layer="200"/>
<rectangle x1="-4.21" y1="0.79" x2="-3.91" y2="0.89" layer="200"/>
<rectangle x1="1.09" y1="0.79" x2="1.49" y2="0.89" layer="200"/>
<rectangle x1="1.59" y1="0.79" x2="1.79" y2="0.89" layer="200"/>
<rectangle x1="2.29" y1="0.79" x2="2.49" y2="0.89" layer="200"/>
<rectangle x1="2.99" y1="0.79" x2="3.09" y2="0.89" layer="200"/>
<rectangle x1="-4.31" y1="0.89" x2="-3.91" y2="0.99" layer="200"/>
<rectangle x1="1.19" y1="0.89" x2="1.49" y2="0.99" layer="200"/>
<rectangle x1="1.59" y1="0.89" x2="1.89" y2="0.99" layer="200"/>
<rectangle x1="2.19" y1="0.89" x2="2.39" y2="0.99" layer="200"/>
<rectangle x1="2.99" y1="0.89" x2="3.09" y2="0.99" layer="200"/>
<rectangle x1="-4.51" y1="0.99" x2="-4.21" y2="1.09" layer="200"/>
<rectangle x1="-4.01" y1="0.99" x2="-3.91" y2="1.09" layer="200"/>
<rectangle x1="1.39" y1="0.99" x2="2.39" y2="1.09" layer="200"/>
<rectangle x1="2.99" y1="0.99" x2="3.09" y2="1.09" layer="200"/>
<rectangle x1="-4.51" y1="1.09" x2="-4.31" y2="1.19" layer="200"/>
<rectangle x1="-4.11" y1="1.09" x2="-3.91" y2="1.19" layer="200"/>
<rectangle x1="1.69" y1="1.09" x2="2.19" y2="1.19" layer="200"/>
<rectangle x1="2.89" y1="1.09" x2="3.09" y2="1.19" layer="200"/>
<rectangle x1="-4.71" y1="1.19" x2="-4.51" y2="1.29" layer="200"/>
<rectangle x1="-4.01" y1="1.19" x2="-3.91" y2="1.29" layer="200"/>
<rectangle x1="2.89" y1="1.19" x2="3.09" y2="1.29" layer="200"/>
<rectangle x1="-4.71" y1="1.29" x2="-4.51" y2="1.39" layer="200"/>
<rectangle x1="-4.01" y1="1.29" x2="-3.81" y2="1.39" layer="200"/>
<rectangle x1="2.89" y1="1.29" x2="3.09" y2="1.39" layer="200"/>
<rectangle x1="-4.91" y1="1.39" x2="-4.71" y2="1.49" layer="200"/>
<rectangle x1="-4.01" y1="1.39" x2="-3.81" y2="1.49" layer="200"/>
<rectangle x1="2.79" y1="1.39" x2="2.99" y2="1.49" layer="200"/>
<rectangle x1="-5.01" y1="1.49" x2="-4.71" y2="1.59" layer="200"/>
<rectangle x1="-4.01" y1="1.49" x2="-3.81" y2="1.59" layer="200"/>
<rectangle x1="2.69" y1="1.49" x2="2.89" y2="1.59" layer="200"/>
<rectangle x1="-5.11" y1="1.59" x2="-4.91" y2="1.69" layer="200"/>
<rectangle x1="-3.91" y1="1.59" x2="-3.71" y2="1.69" layer="200"/>
<rectangle x1="2.59" y1="1.59" x2="2.79" y2="1.69" layer="200"/>
<rectangle x1="-5.21" y1="1.69" x2="-5.01" y2="1.79" layer="200"/>
<rectangle x1="-3.91" y1="1.69" x2="-3.71" y2="1.79" layer="200"/>
<rectangle x1="2.49" y1="1.69" x2="2.69" y2="1.79" layer="200"/>
<rectangle x1="-5.41" y1="1.79" x2="-5.21" y2="1.89" layer="200"/>
<rectangle x1="-3.91" y1="1.79" x2="-3.71" y2="1.89" layer="200"/>
<rectangle x1="2.39" y1="1.79" x2="2.59" y2="1.89" layer="200"/>
<rectangle x1="-5.41" y1="1.89" x2="-5.21" y2="1.99" layer="200"/>
<rectangle x1="-3.81" y1="1.89" x2="-3.61" y2="1.99" layer="200"/>
<rectangle x1="2.19" y1="1.89" x2="2.39" y2="1.99" layer="200"/>
<rectangle x1="-5.61" y1="1.99" x2="-5.41" y2="2.09" layer="200"/>
<rectangle x1="-3.81" y1="1.99" x2="-3.61" y2="2.09" layer="200"/>
<rectangle x1="2.09" y1="1.99" x2="2.39" y2="2.09" layer="200"/>
<rectangle x1="-5.71" y1="2.09" x2="-5.41" y2="2.19" layer="200"/>
<rectangle x1="-3.81" y1="2.09" x2="-3.61" y2="2.19" layer="200"/>
<rectangle x1="1.99" y1="2.09" x2="2.19" y2="2.19" layer="200"/>
<rectangle x1="-5.81" y1="2.19" x2="-5.61" y2="2.29" layer="200"/>
<rectangle x1="-3.71" y1="2.19" x2="-3.61" y2="2.29" layer="200"/>
<rectangle x1="1.89" y1="2.19" x2="2.09" y2="2.29" layer="200"/>
<rectangle x1="-5.91" y1="2.29" x2="-5.71" y2="2.39" layer="200"/>
<rectangle x1="-3.81" y1="2.29" x2="-3.61" y2="2.39" layer="200"/>
<rectangle x1="1.79" y1="2.29" x2="1.99" y2="2.39" layer="200"/>
<rectangle x1="-6.11" y1="2.39" x2="-5.91" y2="2.49" layer="200"/>
<rectangle x1="-3.71" y1="2.39" x2="-3.51" y2="2.49" layer="200"/>
<rectangle x1="1.69" y1="2.39" x2="1.89" y2="2.49" layer="200"/>
<rectangle x1="-6.21" y1="2.49" x2="-5.91" y2="2.59" layer="200"/>
<rectangle x1="-3.71" y1="2.49" x2="-3.51" y2="2.59" layer="200"/>
<rectangle x1="1.59" y1="2.49" x2="1.79" y2="2.59" layer="200"/>
<rectangle x1="-6.31" y1="2.59" x2="-6.01" y2="2.69" layer="200"/>
<rectangle x1="-3.61" y1="2.59" x2="-3.51" y2="2.69" layer="200"/>
<rectangle x1="1.49" y1="2.59" x2="1.69" y2="2.69" layer="200"/>
<rectangle x1="-6.51" y1="2.69" x2="-6.11" y2="2.79" layer="200"/>
<rectangle x1="-3.61" y1="2.69" x2="-3.31" y2="2.79" layer="200"/>
<rectangle x1="1.29" y1="2.69" x2="1.49" y2="2.79" layer="200"/>
<rectangle x1="-6.61" y1="2.79" x2="-6.31" y2="2.89" layer="200"/>
<rectangle x1="-3.51" y1="2.79" x2="-3.21" y2="2.89" layer="200"/>
<rectangle x1="1.19" y1="2.79" x2="1.49" y2="2.89" layer="200"/>
<rectangle x1="-6.71" y1="2.89" x2="-6.51" y2="2.99" layer="200"/>
<rectangle x1="-3.41" y1="2.89" x2="-3.21" y2="2.99" layer="200"/>
<rectangle x1="1.09" y1="2.89" x2="1.39" y2="2.99" layer="200"/>
<rectangle x1="-6.91" y1="2.99" x2="-6.61" y2="3.09" layer="200"/>
<rectangle x1="-3.31" y1="2.99" x2="-3.11" y2="3.09" layer="200"/>
<rectangle x1="0.99" y1="2.99" x2="1.19" y2="3.09" layer="200"/>
<rectangle x1="-7.01" y1="3.09" x2="-6.71" y2="3.19" layer="200"/>
<rectangle x1="-3.21" y1="3.09" x2="-3.01" y2="3.19" layer="200"/>
<rectangle x1="0.99" y1="3.09" x2="1.09" y2="3.19" layer="200"/>
<rectangle x1="-7.11" y1="3.19" x2="-6.91" y2="3.29" layer="200"/>
<rectangle x1="-3.21" y1="3.19" x2="-3.01" y2="3.29" layer="200"/>
<rectangle x1="0.79" y1="3.19" x2="0.99" y2="3.29" layer="200"/>
<rectangle x1="-7.51" y1="3.29" x2="-7.01" y2="3.39" layer="200"/>
<rectangle x1="-3.11" y1="3.29" x2="-2.91" y2="3.39" layer="200"/>
<rectangle x1="0.69" y1="3.29" x2="0.99" y2="3.39" layer="200"/>
<rectangle x1="-7.61" y1="3.39" x2="-7.11" y2="3.49" layer="200"/>
<rectangle x1="-3.01" y1="3.39" x2="-2.81" y2="3.49" layer="200"/>
<rectangle x1="0.59" y1="3.39" x2="0.79" y2="3.49" layer="200"/>
<rectangle x1="-7.71" y1="3.49" x2="-7.31" y2="3.59" layer="200"/>
<rectangle x1="-2.91" y1="3.49" x2="-2.71" y2="3.59" layer="200"/>
<rectangle x1="0.49" y1="3.49" x2="0.69" y2="3.59" layer="200"/>
<rectangle x1="-7.91" y1="3.59" x2="-7.41" y2="3.69" layer="200"/>
<rectangle x1="-2.91" y1="3.59" x2="-2.71" y2="3.69" layer="200"/>
<rectangle x1="0.39" y1="3.59" x2="0.69" y2="3.69" layer="200"/>
<rectangle x1="-7.91" y1="3.69" x2="-7.71" y2="3.79" layer="200"/>
<rectangle x1="-7.61" y1="3.69" x2="-7.41" y2="3.79" layer="200"/>
<rectangle x1="-2.71" y1="3.69" x2="-2.61" y2="3.79" layer="200"/>
<rectangle x1="0.29" y1="3.69" x2="0.59" y2="3.79" layer="200"/>
<rectangle x1="-8.11" y1="3.79" x2="-7.91" y2="3.89" layer="200"/>
<rectangle x1="-7.61" y1="3.79" x2="-7.41" y2="3.89" layer="200"/>
<rectangle x1="-2.61" y1="3.79" x2="-2.41" y2="3.89" layer="200"/>
<rectangle x1="0.19" y1="3.79" x2="0.39" y2="3.89" layer="200"/>
<rectangle x1="-8.11" y1="3.89" x2="-7.91" y2="3.99" layer="200"/>
<rectangle x1="-7.71" y1="3.89" x2="-7.51" y2="3.99" layer="200"/>
<rectangle x1="-2.51" y1="3.89" x2="-2.31" y2="3.99" layer="200"/>
<rectangle x1="0.09" y1="3.89" x2="0.39" y2="3.99" layer="200"/>
<rectangle x1="-8.31" y1="3.99" x2="-8.11" y2="4.09" layer="200"/>
<rectangle x1="-7.71" y1="3.99" x2="-7.51" y2="4.09" layer="200"/>
<rectangle x1="-2.31" y1="3.99" x2="-2.11" y2="4.09" layer="200"/>
<rectangle x1="-0.01" y1="3.99" x2="0.19" y2="4.09" layer="200"/>
<rectangle x1="-8.31" y1="4.09" x2="-8.11" y2="4.19" layer="200"/>
<rectangle x1="-7.71" y1="4.09" x2="-7.51" y2="4.19" layer="200"/>
<rectangle x1="-2.31" y1="4.09" x2="-1.91" y2="4.19" layer="200"/>
<rectangle x1="-0.21" y1="4.09" x2="0.09" y2="4.19" layer="200"/>
<rectangle x1="-8.41" y1="4.19" x2="-8.21" y2="4.29" layer="200"/>
<rectangle x1="-7.71" y1="4.19" x2="-7.51" y2="4.29" layer="200"/>
<rectangle x1="-2.11" y1="4.19" x2="-1.71" y2="4.29" layer="200"/>
<rectangle x1="-0.31" y1="4.19" x2="-0.01" y2="4.29" layer="200"/>
<rectangle x1="-8.41" y1="4.29" x2="-8.21" y2="4.39" layer="200"/>
<rectangle x1="-7.71" y1="4.29" x2="-7.51" y2="4.39" layer="200"/>
<rectangle x1="-1.91" y1="4.29" x2="-1.61" y2="4.39" layer="200"/>
<rectangle x1="-0.41" y1="4.29" x2="-0.21" y2="4.39" layer="200"/>
<rectangle x1="-8.41" y1="4.39" x2="-8.21" y2="4.49" layer="200"/>
<rectangle x1="-7.71" y1="4.39" x2="-7.51" y2="4.49" layer="200"/>
<rectangle x1="-1.71" y1="4.39" x2="-1.41" y2="4.49" layer="200"/>
<rectangle x1="-0.51" y1="4.39" x2="-0.31" y2="4.49" layer="200"/>
<rectangle x1="-8.41" y1="4.49" x2="-8.21" y2="4.59" layer="200"/>
<rectangle x1="-7.71" y1="4.49" x2="-7.51" y2="4.59" layer="200"/>
<rectangle x1="-1.61" y1="4.49" x2="-1.11" y2="4.59" layer="200"/>
<rectangle x1="-0.61" y1="4.49" x2="-0.41" y2="4.59" layer="200"/>
<rectangle x1="-8.51" y1="4.59" x2="-8.31" y2="4.69" layer="200"/>
<rectangle x1="-7.61" y1="4.59" x2="-7.51" y2="4.69" layer="200"/>
<rectangle x1="-1.41" y1="4.59" x2="-0.51" y2="4.69" layer="200"/>
<rectangle x1="-8.41" y1="4.69" x2="-8.21" y2="4.79" layer="200"/>
<rectangle x1="-7.61" y1="4.69" x2="-7.41" y2="4.79" layer="200"/>
<rectangle x1="-1.01" y1="4.69" x2="-0.61" y2="4.79" layer="200"/>
<rectangle x1="-8.41" y1="4.79" x2="-8.21" y2="4.89" layer="200"/>
<rectangle x1="-7.61" y1="4.79" x2="-7.41" y2="4.89" layer="200"/>
<rectangle x1="-1.01" y1="4.79" x2="-0.71" y2="4.89" layer="200"/>
<rectangle x1="-8.41" y1="4.89" x2="-8.21" y2="4.99" layer="200"/>
<rectangle x1="-7.61" y1="4.89" x2="-7.41" y2="4.99" layer="200"/>
<rectangle x1="-1.11" y1="4.89" x2="-0.91" y2="4.99" layer="200"/>
<rectangle x1="-8.41" y1="4.99" x2="-8.21" y2="5.09" layer="200"/>
<rectangle x1="-7.51" y1="4.99" x2="-7.41" y2="5.09" layer="200"/>
<rectangle x1="-1.11" y1="4.99" x2="-1.01" y2="5.09" layer="200"/>
<rectangle x1="-8.41" y1="5.09" x2="-8.21" y2="5.19" layer="200"/>
<rectangle x1="-7.51" y1="5.09" x2="-7.31" y2="5.19" layer="200"/>
<rectangle x1="-1.31" y1="5.09" x2="-1.11" y2="5.19" layer="200"/>
<rectangle x1="-8.31" y1="5.19" x2="-8.11" y2="5.29" layer="200"/>
<rectangle x1="-7.41" y1="5.19" x2="-7.31" y2="5.29" layer="200"/>
<rectangle x1="-1.41" y1="5.19" x2="-1.21" y2="5.29" layer="200"/>
<rectangle x1="-8.31" y1="5.29" x2="-8.11" y2="5.39" layer="200"/>
<rectangle x1="-7.41" y1="5.29" x2="-7.21" y2="5.39" layer="200"/>
<rectangle x1="-1.41" y1="5.29" x2="-1.31" y2="5.39" layer="200"/>
<rectangle x1="-8.21" y1="5.39" x2="-8.11" y2="5.49" layer="200"/>
<rectangle x1="-7.41" y1="5.39" x2="-7.21" y2="5.49" layer="200"/>
<rectangle x1="-1.51" y1="5.39" x2="-1.41" y2="5.49" layer="200"/>
<rectangle x1="-8.31" y1="5.49" x2="-8.11" y2="5.59" layer="200"/>
<rectangle x1="-7.31" y1="5.49" x2="-7.11" y2="5.59" layer="200"/>
<rectangle x1="-1.71" y1="5.49" x2="-1.41" y2="5.59" layer="200"/>
<rectangle x1="-8.21" y1="5.59" x2="-8.01" y2="5.69" layer="200"/>
<rectangle x1="-7.31" y1="5.59" x2="-7.11" y2="5.69" layer="200"/>
<rectangle x1="-1.81" y1="5.59" x2="-1.61" y2="5.69" layer="200"/>
<rectangle x1="-8.11" y1="5.69" x2="-7.91" y2="5.79" layer="200"/>
<rectangle x1="-7.21" y1="5.69" x2="-7.01" y2="5.79" layer="200"/>
<rectangle x1="-1.91" y1="5.69" x2="-1.71" y2="5.79" layer="200"/>
<rectangle x1="-8.11" y1="5.79" x2="-7.91" y2="5.89" layer="200"/>
<rectangle x1="-7.11" y1="5.79" x2="-6.91" y2="5.89" layer="200"/>
<rectangle x1="-1.91" y1="5.79" x2="-1.81" y2="5.89" layer="200"/>
<rectangle x1="-8.01" y1="5.89" x2="-7.91" y2="5.99" layer="200"/>
<rectangle x1="-7.01" y1="5.89" x2="-6.81" y2="5.99" layer="200"/>
<rectangle x1="-2.11" y1="5.89" x2="-1.91" y2="5.99" layer="200"/>
<rectangle x1="-7.91" y1="5.99" x2="-7.71" y2="6.09" layer="200"/>
<rectangle x1="-7.01" y1="5.99" x2="-6.81" y2="6.09" layer="200"/>
<rectangle x1="-2.11" y1="5.99" x2="-1.91" y2="6.09" layer="200"/>
<rectangle x1="-7.91" y1="6.09" x2="-7.71" y2="6.19" layer="200"/>
<rectangle x1="-6.91" y1="6.09" x2="-6.71" y2="6.19" layer="200"/>
<rectangle x1="-2.31" y1="6.09" x2="-2.11" y2="6.19" layer="200"/>
<rectangle x1="-7.91" y1="6.19" x2="-7.71" y2="6.29" layer="200"/>
<rectangle x1="-6.91" y1="6.19" x2="-6.71" y2="6.29" layer="200"/>
<rectangle x1="-2.31" y1="6.19" x2="-2.11" y2="6.29" layer="200"/>
<rectangle x1="-7.81" y1="6.29" x2="-7.61" y2="6.39" layer="200"/>
<rectangle x1="-6.81" y1="6.29" x2="-6.61" y2="6.39" layer="200"/>
<rectangle x1="-2.41" y1="6.29" x2="-2.21" y2="6.39" layer="200"/>
<rectangle x1="-7.71" y1="6.39" x2="-7.51" y2="6.49" layer="200"/>
<rectangle x1="-6.71" y1="6.39" x2="-6.51" y2="6.49" layer="200"/>
<rectangle x1="-2.51" y1="6.39" x2="-2.31" y2="6.49" layer="200"/>
<rectangle x1="-7.61" y1="6.49" x2="-7.51" y2="6.59" layer="200"/>
<rectangle x1="-6.61" y1="6.49" x2="-6.51" y2="6.59" layer="200"/>
<rectangle x1="-2.61" y1="6.49" x2="-2.41" y2="6.59" layer="200"/>
<rectangle x1="-7.51" y1="6.59" x2="-7.31" y2="6.69" layer="200"/>
<rectangle x1="-6.61" y1="6.59" x2="-6.31" y2="6.69" layer="200"/>
<rectangle x1="-2.71" y1="6.59" x2="-2.51" y2="6.69" layer="200"/>
<rectangle x1="-7.51" y1="6.69" x2="-7.31" y2="6.79" layer="200"/>
<rectangle x1="-6.51" y1="6.69" x2="-6.21" y2="6.79" layer="200"/>
<rectangle x1="-2.71" y1="6.69" x2="-2.51" y2="6.79" layer="200"/>
<rectangle x1="-7.41" y1="6.79" x2="-7.21" y2="6.89" layer="200"/>
<rectangle x1="-6.41" y1="6.79" x2="-6.11" y2="6.89" layer="200"/>
<rectangle x1="-2.91" y1="6.79" x2="-2.71" y2="6.89" layer="200"/>
<rectangle x1="-7.31" y1="6.89" x2="-7.21" y2="6.99" layer="200"/>
<rectangle x1="-6.31" y1="6.89" x2="-6.11" y2="6.99" layer="200"/>
<rectangle x1="-2.91" y1="6.89" x2="-2.71" y2="6.99" layer="200"/>
<rectangle x1="-7.21" y1="6.99" x2="-7.01" y2="7.09" layer="200"/>
<rectangle x1="-6.11" y1="6.99" x2="-6.01" y2="7.09" layer="200"/>
<rectangle x1="-3.01" y1="6.99" x2="-2.91" y2="7.09" layer="200"/>
<rectangle x1="-7.21" y1="7.09" x2="-7.01" y2="7.19" layer="200"/>
<rectangle x1="-6.11" y1="7.09" x2="-5.81" y2="7.19" layer="200"/>
<rectangle x1="-3.21" y1="7.09" x2="-3.01" y2="7.19" layer="200"/>
<rectangle x1="-7.11" y1="7.19" x2="-6.91" y2="7.29" layer="200"/>
<rectangle x1="-6.01" y1="7.19" x2="-5.51" y2="7.29" layer="200"/>
<rectangle x1="-3.21" y1="7.19" x2="-3.01" y2="7.29" layer="200"/>
<rectangle x1="-6.91" y1="7.29" x2="-6.81" y2="7.39" layer="200"/>
<rectangle x1="-5.71" y1="7.29" x2="-5.21" y2="7.39" layer="200"/>
<rectangle x1="-3.41" y1="7.29" x2="-3.21" y2="7.39" layer="200"/>
<rectangle x1="-6.91" y1="7.39" x2="-6.61" y2="7.49" layer="200"/>
<rectangle x1="-5.51" y1="7.39" x2="-5.01" y2="7.49" layer="200"/>
<rectangle x1="-3.41" y1="7.39" x2="-3.21" y2="7.49" layer="200"/>
<rectangle x1="-6.81" y1="7.49" x2="-6.51" y2="7.59" layer="200"/>
<rectangle x1="-5.11" y1="7.49" x2="-4.81" y2="7.59" layer="200"/>
<rectangle x1="-3.41" y1="7.49" x2="-3.31" y2="7.59" layer="200"/>
<rectangle x1="-6.71" y1="7.59" x2="-6.41" y2="7.69" layer="200"/>
<rectangle x1="-5.01" y1="7.59" x2="-4.51" y2="7.69" layer="200"/>
<rectangle x1="-3.61" y1="7.59" x2="-3.31" y2="7.69" layer="200"/>
<rectangle x1="-6.51" y1="7.69" x2="-6.31" y2="7.79" layer="200"/>
<rectangle x1="-4.71" y1="7.69" x2="-4.31" y2="7.79" layer="200"/>
<rectangle x1="-3.91" y1="7.69" x2="-3.31" y2="7.79" layer="200"/>
<rectangle x1="-6.51" y1="7.79" x2="-6.11" y2="7.89" layer="200"/>
<rectangle x1="-4.51" y1="7.79" x2="-3.71" y2="7.89" layer="200"/>
<rectangle x1="-3.51" y1="7.79" x2="-3.31" y2="7.89" layer="200"/>
<rectangle x1="-6.31" y1="7.89" x2="-6.01" y2="7.99" layer="200"/>
<rectangle x1="-4.31" y1="7.89" x2="-4.01" y2="7.99" layer="200"/>
<rectangle x1="-3.61" y1="7.89" x2="-3.41" y2="7.99" layer="200"/>
<rectangle x1="-6.11" y1="7.99" x2="-5.81" y2="8.09" layer="200"/>
<rectangle x1="-3.81" y1="7.99" x2="-3.61" y2="8.09" layer="200"/>
<rectangle x1="-6.01" y1="8.09" x2="-5.61" y2="8.19" layer="200"/>
<rectangle x1="-3.91" y1="8.09" x2="-3.61" y2="8.19" layer="200"/>
<rectangle x1="-5.81" y1="8.19" x2="-5.31" y2="8.29" layer="200"/>
<rectangle x1="-4.01" y1="8.19" x2="-3.71" y2="8.29" layer="200"/>
<rectangle x1="-5.51" y1="8.29" x2="-4.91" y2="8.39" layer="200"/>
<rectangle x1="-4.11" y1="8.29" x2="-3.91" y2="8.39" layer="200"/>
<rectangle x1="-5.31" y1="8.39" x2="-3.91" y2="8.49" layer="200"/>
<rectangle x1="-4.81" y1="8.49" x2="-4.11" y2="8.59" layer="200"/>
<text x="10.16" y="-3.048" size="2" layer="200" font="vector">M8 HERM
WURTH</text>
<text x="5.08" y="2.54" size="3.81" layer="103" font="vector">&gt;VALUE</text>
<text x="10.16" y="-6.096" size="2.032" layer="200" font="vector">0555 911 2</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="AMPSEAL_23_POS_BLACK" uservalue="yes">
<gates>
<gate name="G$1" symbol="AMPSEAL_23_POS_BLACK" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PIN" uservalue="yes">
<gates>
<gate name="PIN" symbol="PIN" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MPM_LED" uservalue="yes">
<gates>
<gate name="G$1" symbol="MPM_LED" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="RING_CONNECTOR_M8_HERM" uservalue="yes">
<gates>
<gate name="G$1" symbol="RING_CONNECTOR_M8" x="-7.62" y="-7.62"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="FRAME1" library="frames" deviceset="A3L-LOC" device=""/>
<part name="U$1" library="uw_wiring_harness" deviceset="AMPSEAL_23_POS_BLACK" device="" value="ICU"/>
<part name="U$2" library="uw_wiring_harness" deviceset="PIN" device="" value="1/23"/>
<part name="U$3" library="uw_wiring_harness" deviceset="PIN" device="" value="2/23"/>
<part name="U$4" library="uw_wiring_harness" deviceset="PIN" device="" value="3/23"/>
<part name="U$5" library="uw_wiring_harness" deviceset="PIN" device="" value="4/23"/>
<part name="U$6" library="uw_wiring_harness" deviceset="PIN" device="" value="5/23"/>
<part name="U$7" library="uw_wiring_harness" deviceset="PIN" device="" value="6/23"/>
<part name="U$8" library="uw_wiring_harness" deviceset="PIN" device="" value="7/23"/>
<part name="U$9" library="uw_wiring_harness" deviceset="PIN" device="" value="8/23"/>
<part name="U$10" library="uw_wiring_harness" deviceset="PIN" device="" value="9/23"/>
<part name="U$11" library="uw_wiring_harness" deviceset="PIN" device="" value="10/23"/>
<part name="U$12" library="uw_wiring_harness" deviceset="PIN" device="" value="11/23"/>
<part name="U$13" library="uw_wiring_harness" deviceset="PIN" device="" value="12/23"/>
<part name="U$14" library="uw_wiring_harness" deviceset="PIN" device="" value="13/23"/>
<part name="U$15" library="uw_wiring_harness" deviceset="PIN" device="" value="14/23"/>
<part name="U$16" library="uw_wiring_harness" deviceset="PIN" device="" value="15/23"/>
<part name="U$17" library="uw_wiring_harness" deviceset="PIN" device="" value="16/23"/>
<part name="U$18" library="uw_wiring_harness" deviceset="PIN" device="" value="17/23"/>
<part name="U$19" library="uw_wiring_harness" deviceset="PIN" device="" value="18/23"/>
<part name="U$20" library="uw_wiring_harness" deviceset="PIN" device="" value="19/23"/>
<part name="U$21" library="uw_wiring_harness" deviceset="PIN" device="" value="20/23"/>
<part name="U$22" library="uw_wiring_harness" deviceset="PIN" device="" value="21/23"/>
<part name="U$23" library="uw_wiring_harness" deviceset="PIN" device="" value="22/23"/>
<part name="U$24" library="uw_wiring_harness" deviceset="PIN" device="" value="23/23"/>
<part name="U$25" library="uw_wiring_harness" deviceset="MPM_LED" device="" value="1A"/>
<part name="U$26" library="uw_wiring_harness" deviceset="PIN" device="" value="1/3"/>
<part name="U$27" library="uw_wiring_harness" deviceset="PIN" device="" value="2/3"/>
<part name="U$28" library="uw_wiring_harness" deviceset="MPM_LED" device="" value="2A"/>
<part name="U$29" library="uw_wiring_harness" deviceset="PIN" device="" value="1/3"/>
<part name="U$30" library="uw_wiring_harness" deviceset="PIN" device="" value="2/3"/>
<part name="U$31" library="uw_wiring_harness" deviceset="MPM_LED" device="" value="3A"/>
<part name="U$32" library="uw_wiring_harness" deviceset="PIN" device="" value="1/3"/>
<part name="U$33" library="uw_wiring_harness" deviceset="PIN" device="" value="2/3"/>
<part name="U$34" library="uw_wiring_harness" deviceset="MPM_LED" device="" value="4A"/>
<part name="U$35" library="uw_wiring_harness" deviceset="PIN" device="" value="1/3"/>
<part name="U$36" library="uw_wiring_harness" deviceset="PIN" device="" value="2/3"/>
<part name="U$37" library="uw_wiring_harness" deviceset="MPM_LED" device="" value="1B"/>
<part name="U$38" library="uw_wiring_harness" deviceset="PIN" device="" value="1/3"/>
<part name="U$39" library="uw_wiring_harness" deviceset="PIN" device="" value="2/3"/>
<part name="U$40" library="uw_wiring_harness" deviceset="MPM_LED" device="" value="2B"/>
<part name="U$41" library="uw_wiring_harness" deviceset="PIN" device="" value="1/3"/>
<part name="U$42" library="uw_wiring_harness" deviceset="PIN" device="" value="2/3"/>
<part name="U$43" library="uw_wiring_harness" deviceset="MPM_LED" device="" value="3B"/>
<part name="U$44" library="uw_wiring_harness" deviceset="PIN" device="" value="1/3"/>
<part name="U$45" library="uw_wiring_harness" deviceset="PIN" device="" value="2/3"/>
<part name="U$46" library="uw_wiring_harness" deviceset="MPM_LED" device="" value="4B"/>
<part name="U$47" library="uw_wiring_harness" deviceset="PIN" device="" value="1/3"/>
<part name="U$48" library="uw_wiring_harness" deviceset="PIN" device="" value="2/3"/>
<part name="U$49" library="uw_wiring_harness" deviceset="PIN" device="" value="1/1"/>
<part name="U$50" library="uw_wiring_harness" deviceset="RING_CONNECTOR_M8_HERM" device=""/>
<part name="U$51" library="uw_wiring_harness" deviceset="PIN" device="" value="1/1"/>
<part name="U$52" library="uw_wiring_harness" deviceset="RING_CONNECTOR_M8_HERM" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="289.56" y="20.32" size="1.778" layer="94" font="vector">UW ICU</text>
<text x="345.44" y="20.32" size="1.778" layer="94" font="vector">OUsenius</text>
<wire x1="210.82" y1="205.74" x2="121.92" y2="205.74" width="0.254" layer="100"/>
<wire x1="127" y1="200.66" x2="210.82" y2="200.66" width="0.254" layer="101"/>
<wire x1="170.18" y1="200.66" x2="170.18" y2="205.74" width="0.254" layer="103"/>
<wire x1="170.18" y1="205.74" x2="175.26" y2="205.74" width="0.254" layer="103" curve="-180"/>
<wire x1="175.26" y1="205.74" x2="175.26" y2="200.66" width="0.254" layer="103"/>
<wire x1="175.26" y1="200.66" x2="170.18" y2="200.66" width="0.254" layer="103" curve="-180"/>
<dimension x1="167.64" y1="210.82" x2="177.8" y2="210.82" x3="182.88" y3="210.82" textsize="3.81" layer="103" dtype="leader" width="0.254"/>
<dimension x1="208.28" y1="210.82" x2="198.12" y2="210.82" x3="182.88" y3="210.82" textsize="3.81" layer="103" dtype="leader" width="0.254"/>
<wire x1="167.64" y1="210.82" x2="167.64" y2="198.12" width="0.254" layer="103" style="longdash"/>
<wire x1="208.28" y1="210.82" x2="208.28" y2="198.12" width="0.254" layer="103" style="longdash"/>
<text x="180.34" y="207.01" size="2.54" layer="100" font="vector">0.75mm2</text>
<text x="180.34" y="201.93" size="2.54" layer="101" font="vector">0.75mm2</text>
<wire x1="132.08" y1="182.88" x2="210.82" y2="182.88" width="0.254" layer="101"/>
<wire x1="170.18" y1="182.88" x2="170.18" y2="187.96" width="0.254" layer="103"/>
<wire x1="170.18" y1="187.96" x2="175.26" y2="187.96" width="0.254" layer="103" curve="-180"/>
<wire x1="175.26" y1="187.96" x2="175.26" y2="182.88" width="0.254" layer="103"/>
<wire x1="175.26" y1="182.88" x2="170.18" y2="182.88" width="0.254" layer="103" curve="-180"/>
<dimension x1="167.64" y1="193.04" x2="177.8" y2="193.04" x3="182.88" y3="193.04" textsize="3.81" layer="103" dtype="leader" width="0.254"/>
<dimension x1="208.28" y1="193.04" x2="198.12" y2="193.04" x3="182.88" y3="193.04" textsize="3.81" layer="103" dtype="leader" width="0.254"/>
<wire x1="167.64" y1="193.04" x2="167.64" y2="180.34" width="0.254" layer="103" style="longdash"/>
<wire x1="208.28" y1="193.04" x2="208.28" y2="180.34" width="0.254" layer="103" style="longdash"/>
<text x="180.34" y="189.23" size="2.54" layer="100" font="vector">0.75mm2</text>
<text x="180.34" y="184.15" size="2.54" layer="101" font="vector">0.75mm2</text>
<wire x1="137.16" y1="165.1" x2="210.82" y2="165.1" width="0.254" layer="101"/>
<wire x1="170.18" y1="165.1" x2="170.18" y2="170.18" width="0.254" layer="103"/>
<wire x1="170.18" y1="170.18" x2="175.26" y2="170.18" width="0.254" layer="103" curve="-180"/>
<wire x1="175.26" y1="170.18" x2="175.26" y2="165.1" width="0.254" layer="103"/>
<wire x1="175.26" y1="165.1" x2="170.18" y2="165.1" width="0.254" layer="103" curve="-180"/>
<dimension x1="167.64" y1="175.26" x2="177.8" y2="175.26" x3="182.88" y3="175.26" textsize="3.81" layer="103" dtype="leader" width="0.254"/>
<dimension x1="208.28" y1="175.26" x2="198.12" y2="175.26" x3="182.88" y3="175.26" textsize="3.81" layer="103" dtype="leader" width="0.254"/>
<wire x1="167.64" y1="175.26" x2="167.64" y2="162.56" width="0.254" layer="103" style="longdash"/>
<wire x1="208.28" y1="175.26" x2="208.28" y2="162.56" width="0.254" layer="103" style="longdash"/>
<text x="180.34" y="171.45" size="2.54" layer="100" font="vector">0.75mm2</text>
<text x="180.34" y="166.37" size="2.54" layer="101" font="vector">0.75mm2</text>
<wire x1="142.24" y1="147.32" x2="210.82" y2="147.32" width="0.254" layer="101"/>
<wire x1="170.18" y1="147.32" x2="170.18" y2="152.4" width="0.254" layer="103"/>
<wire x1="170.18" y1="152.4" x2="175.26" y2="152.4" width="0.254" layer="103" curve="-180"/>
<wire x1="175.26" y1="152.4" x2="175.26" y2="147.32" width="0.254" layer="103"/>
<wire x1="175.26" y1="147.32" x2="170.18" y2="147.32" width="0.254" layer="103" curve="-180"/>
<dimension x1="167.64" y1="157.48" x2="177.8" y2="157.48" x3="182.88" y3="157.48" textsize="3.81" layer="103" dtype="leader" width="0.254"/>
<dimension x1="208.28" y1="157.48" x2="198.12" y2="157.48" x3="182.88" y3="157.48" textsize="3.81" layer="103" dtype="leader" width="0.254"/>
<wire x1="167.64" y1="157.48" x2="167.64" y2="144.78" width="0.254" layer="103" style="longdash"/>
<wire x1="208.28" y1="157.48" x2="208.28" y2="144.78" width="0.254" layer="103" style="longdash"/>
<text x="180.34" y="153.67" size="2.54" layer="100" font="vector">0.75mm2</text>
<text x="180.34" y="148.59" size="2.54" layer="101" font="vector">0.75mm2</text>
<wire x1="165.1" y1="109.22" x2="220.98" y2="109.22" width="0.254" layer="101"/>
<wire x1="170.18" y1="109.22" x2="170.18" y2="114.3" width="0.254" layer="103"/>
<wire x1="170.18" y1="114.3" x2="175.26" y2="114.3" width="0.254" layer="103" curve="-180"/>
<wire x1="175.26" y1="114.3" x2="175.26" y2="109.22" width="0.254" layer="103"/>
<wire x1="175.26" y1="109.22" x2="170.18" y2="109.22" width="0.254" layer="103" curve="-180"/>
<dimension x1="167.64" y1="119.38" x2="187.96" y2="119.38" x3="193.04" y3="119.38" textsize="3.81" layer="103" dtype="leader" width="0.254"/>
<dimension x1="218.44" y1="119.38" x2="208.28" y2="119.38" x3="193.04" y3="119.38" textsize="3.81" layer="103" dtype="leader" width="0.254"/>
<wire x1="167.64" y1="119.38" x2="167.64" y2="106.68" width="0.254" layer="103" style="longdash"/>
<wire x1="218.44" y1="119.38" x2="218.44" y2="106.68" width="0.254" layer="103" style="longdash"/>
<text x="190.5" y="115.57" size="2.54" layer="100" font="vector">0.75mm2</text>
<text x="190.5" y="110.49" size="2.54" layer="101" font="vector">0.75mm2</text>
<wire x1="220.98" y1="96.52" x2="83.82" y2="96.52" width="0.254" layer="100"/>
<wire x1="165.1" y1="91.44" x2="220.98" y2="91.44" width="0.254" layer="101"/>
<wire x1="170.18" y1="91.44" x2="170.18" y2="96.52" width="0.254" layer="103"/>
<wire x1="170.18" y1="96.52" x2="175.26" y2="96.52" width="0.254" layer="103" curve="-180"/>
<wire x1="175.26" y1="96.52" x2="175.26" y2="91.44" width="0.254" layer="103"/>
<wire x1="175.26" y1="91.44" x2="170.18" y2="91.44" width="0.254" layer="103" curve="-180"/>
<dimension x1="167.64" y1="101.6" x2="187.96" y2="101.6" x3="193.04" y3="101.6" textsize="3.81" layer="103" dtype="leader" width="0.254"/>
<dimension x1="218.44" y1="101.6" x2="208.28" y2="101.6" x3="193.04" y3="101.6" textsize="3.81" layer="103" dtype="leader" width="0.254"/>
<wire x1="167.64" y1="101.6" x2="167.64" y2="88.9" width="0.254" layer="103" style="longdash"/>
<wire x1="218.44" y1="101.6" x2="218.44" y2="88.9" width="0.254" layer="103" style="longdash"/>
<text x="190.5" y="97.79" size="2.54" layer="100" font="vector">0.75mm2</text>
<text x="190.5" y="92.71" size="2.54" layer="101" font="vector">0.75mm2</text>
<wire x1="220.98" y1="78.74" x2="93.98" y2="78.74" width="0.254" layer="100"/>
<wire x1="165.1" y1="73.66" x2="220.98" y2="73.66" width="0.254" layer="101"/>
<wire x1="170.18" y1="73.66" x2="170.18" y2="78.74" width="0.254" layer="103"/>
<wire x1="170.18" y1="78.74" x2="175.26" y2="78.74" width="0.254" layer="103" curve="-180"/>
<wire x1="175.26" y1="78.74" x2="175.26" y2="73.66" width="0.254" layer="103"/>
<wire x1="175.26" y1="73.66" x2="170.18" y2="73.66" width="0.254" layer="103" curve="-180"/>
<dimension x1="167.64" y1="83.82" x2="187.96" y2="83.82" x3="193.04" y3="83.82" textsize="3.81" layer="103" dtype="leader" width="0.254"/>
<dimension x1="218.44" y1="83.82" x2="208.28" y2="83.82" x3="193.04" y3="83.82" textsize="3.81" layer="103" dtype="leader" width="0.254"/>
<wire x1="167.64" y1="83.82" x2="167.64" y2="71.12" width="0.254" layer="103" style="longdash"/>
<wire x1="218.44" y1="83.82" x2="218.44" y2="71.12" width="0.254" layer="103" style="longdash"/>
<text x="190.5" y="80.01" size="2.54" layer="100" font="vector">0.75mm2</text>
<text x="190.5" y="74.93" size="2.54" layer="101" font="vector">0.75mm2</text>
<wire x1="220.98" y1="60.96" x2="104.14" y2="60.96" width="0.254" layer="100"/>
<wire x1="165.1" y1="55.88" x2="220.98" y2="55.88" width="0.254" layer="101"/>
<wire x1="170.18" y1="55.88" x2="170.18" y2="60.96" width="0.254" layer="103"/>
<wire x1="170.18" y1="60.96" x2="175.26" y2="60.96" width="0.254" layer="103" curve="-180"/>
<wire x1="175.26" y1="60.96" x2="175.26" y2="55.88" width="0.254" layer="103"/>
<wire x1="175.26" y1="55.88" x2="170.18" y2="55.88" width="0.254" layer="103" curve="-180"/>
<dimension x1="167.64" y1="66.04" x2="187.96" y2="66.04" x3="193.04" y3="66.04" textsize="3.81" layer="103" dtype="leader" width="0.254"/>
<dimension x1="218.44" y1="66.04" x2="208.28" y2="66.04" x3="193.04" y3="66.04" textsize="3.81" layer="103" dtype="leader" width="0.254"/>
<wire x1="167.64" y1="66.04" x2="167.64" y2="53.34" width="0.254" layer="103" style="longdash"/>
<wire x1="218.44" y1="66.04" x2="218.44" y2="53.34" width="0.254" layer="103" style="longdash"/>
<text x="190.5" y="62.23" size="2.54" layer="100" font="vector">0.75mm2</text>
<text x="190.5" y="57.15" size="2.54" layer="101" font="vector">0.75mm2</text>
<wire x1="48.26" y1="149.86" x2="66.04" y2="149.86" width="0.254" layer="100"/>
<wire x1="48.26" y1="144.78" x2="68.58" y2="144.78" width="0.254" layer="100"/>
<wire x1="48.26" y1="139.7" x2="71.12" y2="139.7" width="0.254" layer="100"/>
<wire x1="48.26" y1="134.62" x2="73.66" y2="134.62" width="0.254" layer="100"/>
<wire x1="104.14" y1="60.96" x2="66.04" y2="99.06" width="0.254" layer="100"/>
<wire x1="66.04" y1="99.06" x2="48.26" y2="99.06" width="0.254" layer="100"/>
<wire x1="48.26" y1="104.14" x2="68.58" y2="104.14" width="0.254" layer="100"/>
<wire x1="68.58" y1="104.14" x2="93.98" y2="78.74" width="0.254" layer="100"/>
<wire x1="83.82" y1="96.52" x2="71.12" y2="109.22" width="0.254" layer="100"/>
<wire x1="71.12" y1="109.22" x2="48.26" y2="109.22" width="0.254" layer="100"/>
<wire x1="48.26" y1="114.3" x2="220.98" y2="114.3" width="0.254" layer="100"/>
<wire x1="66.04" y1="149.86" x2="121.92" y2="205.74" width="0.254" layer="100"/>
<wire x1="68.58" y1="144.78" x2="111.76" y2="187.96" width="0.254" layer="100"/>
<wire x1="111.76" y1="187.96" x2="210.82" y2="187.96" width="0.254" layer="100"/>
<wire x1="210.82" y1="170.18" x2="101.6" y2="170.18" width="0.254" layer="100"/>
<wire x1="101.6" y1="170.18" x2="71.12" y2="139.7" width="0.254" layer="100"/>
<wire x1="73.66" y1="134.62" x2="91.44" y2="152.4" width="0.254" layer="100"/>
<wire x1="91.44" y1="152.4" x2="210.82" y2="152.4" width="0.254" layer="100"/>
<wire x1="127" y1="200.66" x2="121.92" y2="195.58" width="0.254" layer="101"/>
<wire x1="121.92" y1="195.58" x2="121.92" y2="48.26" width="0.254" layer="101"/>
<wire x1="121.92" y1="48.26" x2="116.84" y2="43.18" width="0.254" layer="101"/>
<wire x1="116.84" y1="43.18" x2="71.12" y2="43.18" width="0.254" layer="101"/>
<wire x1="132.08" y1="182.88" x2="127" y2="177.8" width="0.254" layer="101"/>
<wire x1="127" y1="177.8" x2="127" y2="48.26" width="0.254" layer="101"/>
<wire x1="127" y1="48.26" x2="119.38" y2="40.64" width="0.254" layer="101"/>
<wire x1="119.38" y1="40.64" x2="68.58" y2="40.64" width="0.254" layer="101"/>
<wire x1="137.16" y1="165.1" x2="132.08" y2="160.02" width="0.254" layer="101"/>
<wire x1="132.08" y1="160.02" x2="132.08" y2="48.26" width="0.254" layer="101"/>
<wire x1="132.08" y1="48.26" x2="121.92" y2="38.1" width="0.254" layer="101"/>
<wire x1="121.92" y1="38.1" x2="71.12" y2="38.1" width="0.254" layer="101"/>
<wire x1="142.24" y1="147.32" x2="137.16" y2="142.24" width="0.254" layer="101"/>
<wire x1="137.16" y1="142.24" x2="137.16" y2="48.26" width="0.254" layer="101"/>
<wire x1="137.16" y1="48.26" x2="124.46" y2="35.56" width="0.254" layer="101"/>
<wire x1="124.46" y1="35.56" x2="73.66" y2="35.56" width="0.254" layer="101"/>
<wire x1="165.1" y1="55.88" x2="160.02" y2="50.8" width="0.254" layer="101"/>
<wire x1="160.02" y1="50.8" x2="160.02" y2="25.4" width="0.254" layer="101"/>
<wire x1="160.02" y1="25.4" x2="144.78" y2="10.16" width="0.254" layer="101"/>
<wire x1="144.78" y1="10.16" x2="99.06" y2="10.16" width="0.254" layer="101"/>
<wire x1="165.1" y1="73.66" x2="154.94" y2="63.5" width="0.254" layer="101"/>
<wire x1="154.94" y1="63.5" x2="154.94" y2="25.4" width="0.254" layer="101"/>
<wire x1="154.94" y1="25.4" x2="142.24" y2="12.7" width="0.254" layer="101"/>
<wire x1="142.24" y1="12.7" x2="96.52" y2="12.7" width="0.254" layer="101"/>
<wire x1="165.1" y1="91.44" x2="149.86" y2="76.2" width="0.254" layer="101"/>
<wire x1="149.86" y1="76.2" x2="149.86" y2="25.4" width="0.254" layer="101"/>
<wire x1="149.86" y1="25.4" x2="139.7" y2="15.24" width="0.254" layer="101"/>
<wire x1="139.7" y1="15.24" x2="99.06" y2="15.24" width="0.254" layer="101"/>
<wire x1="165.1" y1="109.22" x2="144.78" y2="88.9" width="0.254" layer="101"/>
<wire x1="144.78" y1="88.9" x2="144.78" y2="25.4" width="0.254" layer="101"/>
<wire x1="144.78" y1="25.4" x2="137.16" y2="17.78" width="0.254" layer="101"/>
<wire x1="137.16" y1="17.78" x2="101.6" y2="17.78" width="0.254" layer="101"/>
<wire x1="99.06" y1="10.16" x2="96.52" y2="12.7" width="0.254" layer="101"/>
<wire x1="96.52" y1="12.7" x2="99.06" y2="15.24" width="0.254" layer="101"/>
<wire x1="101.6" y1="17.78" x2="99.06" y2="15.24" width="0.254" layer="101"/>
<wire x1="73.66" y1="35.56" x2="71.12" y2="38.1" width="0.254" layer="101"/>
<wire x1="71.12" y1="38.1" x2="68.58" y2="40.64" width="0.254" layer="101"/>
<wire x1="71.12" y1="43.18" x2="68.58" y2="40.64" width="0.254" layer="101"/>
<wire x1="78.74" y1="43.18" x2="78.74" y2="35.56" width="0.254" layer="103"/>
<wire x1="78.74" y1="35.56" x2="83.82" y2="35.56" width="0.254" layer="103" curve="180"/>
<wire x1="83.82" y1="35.56" x2="83.82" y2="43.18" width="0.254" layer="103"/>
<wire x1="83.82" y1="43.18" x2="78.74" y2="43.18" width="0.254" layer="103" curve="180"/>
<wire x1="104.14" y1="17.78" x2="104.14" y2="10.16" width="0.254" layer="103"/>
<wire x1="104.14" y1="10.16" x2="109.22" y2="10.16" width="0.254" layer="103" curve="180"/>
<wire x1="109.22" y1="10.16" x2="109.22" y2="17.78" width="0.254" layer="103"/>
<wire x1="109.22" y1="17.78" x2="104.14" y2="17.78" width="0.254" layer="103" curve="180"/>
<dimension x1="76.2" y1="48.26" x2="96.52" y2="48.26" x3="81.28" y3="48.26" textsize="3.81" layer="103" dtype="leader" width="0.254"/>
<dimension x1="106.68" y1="48.26" x2="96.52" y2="48.26" x3="81.28" y3="48.26" textsize="3.81" layer="103" dtype="leader" width="0.254"/>
<wire x1="76.2" y1="48.26" x2="76.2" y2="33.02" width="0.254" layer="103" style="longdash"/>
<wire x1="106.68" y1="48.26" x2="106.68" y2="33.02" width="0.254" layer="103" style="longdash"/>
<dimension x1="101.6" y1="22.86" x2="121.92" y2="22.86" x3="106.68" y3="22.86" textsize="3.81" layer="103" dtype="leader" width="0.254"/>
<dimension x1="132.08" y1="22.86" x2="121.92" y2="22.86" x3="106.68" y3="22.86" textsize="3.81" layer="103" dtype="leader" width="0.254"/>
<wire x1="101.6" y1="22.86" x2="101.6" y2="7.62" width="0.254" layer="103" style="longdash"/>
<wire x1="132.08" y1="22.86" x2="132.08" y2="7.62" width="0.254" layer="103" style="longdash"/>
<text x="182.88" y="212.09" size="2.54" layer="103" font="vector">500mm</text>
<text x="182.88" y="194.31" size="2.54" layer="103" font="vector">500mm</text>
<text x="182.88" y="176.53" size="2.54" layer="103" font="vector">500mm</text>
<text x="182.88" y="158.75" size="2.54" layer="103" font="vector">500mm</text>
<text x="190.5" y="120.65" size="2.54" layer="103" font="vector">500mm</text>
<text x="190.5" y="102.87" size="2.54" layer="103" font="vector">500mm</text>
<text x="190.5" y="85.09" size="2.54" layer="103" font="vector">500mm</text>
<text x="190.5" y="67.31" size="2.54" layer="103" font="vector">500mm</text>
<text x="86.36" y="49.53" size="2.54" layer="103" font="vector">500mm</text>
<text x="111.76" y="24.13" size="2.54" layer="103" font="vector">500mm</text>
</plain>
<instances>
<instance part="FRAME1" gate="G$1" x="0" y="0"/>
<instance part="U$1" gate="G$1" x="22.86" y="137.16"/>
<instance part="U$2" gate="PIN" x="48.26" y="190.5"/>
<instance part="U$3" gate="PIN" x="48.26" y="185.42"/>
<instance part="U$4" gate="PIN" x="48.26" y="180.34"/>
<instance part="U$5" gate="PIN" x="48.26" y="175.26"/>
<instance part="U$6" gate="PIN" x="48.26" y="170.18"/>
<instance part="U$7" gate="PIN" x="48.26" y="165.1"/>
<instance part="U$8" gate="PIN" x="48.26" y="160.02"/>
<instance part="U$9" gate="PIN" x="48.26" y="154.94"/>
<instance part="U$10" gate="PIN" x="48.26" y="149.86"/>
<instance part="U$11" gate="PIN" x="48.26" y="144.78"/>
<instance part="U$12" gate="PIN" x="48.26" y="139.7"/>
<instance part="U$13" gate="PIN" x="48.26" y="134.62"/>
<instance part="U$14" gate="PIN" x="48.26" y="129.54"/>
<instance part="U$15" gate="PIN" x="48.26" y="124.46"/>
<instance part="U$16" gate="PIN" x="48.26" y="119.38"/>
<instance part="U$17" gate="PIN" x="48.26" y="114.3"/>
<instance part="U$18" gate="PIN" x="48.26" y="109.22"/>
<instance part="U$19" gate="PIN" x="48.26" y="104.14"/>
<instance part="U$20" gate="PIN" x="48.26" y="99.06"/>
<instance part="U$21" gate="PIN" x="48.26" y="93.98"/>
<instance part="U$22" gate="PIN" x="48.26" y="88.9"/>
<instance part="U$23" gate="PIN" x="48.26" y="83.82"/>
<instance part="U$24" gate="PIN" x="48.26" y="78.74"/>
<instance part="U$25" gate="G$1" x="228.6" y="205.74"/>
<instance part="U$26" gate="PIN" x="210.82" y="205.74" rot="MR0"/>
<instance part="U$27" gate="PIN" x="210.82" y="200.66" rot="MR0"/>
<instance part="U$28" gate="G$1" x="228.6" y="187.96"/>
<instance part="U$29" gate="PIN" x="210.82" y="187.96" rot="MR0"/>
<instance part="U$30" gate="PIN" x="210.82" y="182.88" rot="MR0"/>
<instance part="U$31" gate="G$1" x="228.6" y="170.18"/>
<instance part="U$32" gate="PIN" x="210.82" y="170.18" rot="MR0"/>
<instance part="U$33" gate="PIN" x="210.82" y="165.1" rot="MR0"/>
<instance part="U$34" gate="G$1" x="228.6" y="152.4"/>
<instance part="U$35" gate="PIN" x="210.82" y="152.4" rot="MR0"/>
<instance part="U$36" gate="PIN" x="210.82" y="147.32" rot="MR0"/>
<instance part="U$37" gate="G$1" x="238.76" y="114.3"/>
<instance part="U$38" gate="PIN" x="220.98" y="114.3" rot="MR0"/>
<instance part="U$39" gate="PIN" x="220.98" y="109.22" rot="MR0"/>
<instance part="U$40" gate="G$1" x="238.76" y="96.52"/>
<instance part="U$41" gate="PIN" x="220.98" y="96.52" rot="MR0"/>
<instance part="U$42" gate="PIN" x="220.98" y="91.44" rot="MR0"/>
<instance part="U$43" gate="G$1" x="238.76" y="78.74"/>
<instance part="U$44" gate="PIN" x="220.98" y="78.74" rot="MR0"/>
<instance part="U$45" gate="PIN" x="220.98" y="73.66" rot="MR0"/>
<instance part="U$46" gate="G$1" x="238.76" y="60.96"/>
<instance part="U$47" gate="PIN" x="220.98" y="60.96" rot="MR0"/>
<instance part="U$48" gate="PIN" x="220.98" y="55.88" rot="MR0"/>
<instance part="U$49" gate="PIN" x="68.58" y="40.64"/>
<instance part="U$50" gate="G$1" x="55.88" y="43.18" rot="MR0"/>
<instance part="U$51" gate="PIN" x="96.52" y="12.7"/>
<instance part="U$52" gate="G$1" x="83.82" y="15.24" rot="MR0"/>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="6.3" minversion="6.2.2" severity="warning">
Since Version 6.2.2 text objects can contain more than one line,
which will not be processed correctly with this version.
</note>
</compatibility>
</eagle>
