<map version="freeplane 1.6.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Alternatives reimpl" FOLDED="false" ID="ID_466390669" CREATED="1522069767922" MODIFIED="1522070628610" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle">
    <properties fit_to_viewport="false" show_note_icons="true" edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24.0 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ICON_SIZE="12.0 pt" COLOR="#000000" STYLE="fork">
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="9"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" COLOR="#000000" BACKGROUND_COLOR="#ffffff" TEXT_ALIGN="LEFT"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000" STYLE="oval" SHAPE_HORIZONTAL_MARGIN="10.0 pt" SHAPE_VERTICAL_MARGIN="10.0 pt">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,5"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,6"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,7"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,8"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,9"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,10"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,11"/>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="AutomaticEdgeColor" COUNTER="8" RULE="ON_BRANCH_CREATION"/>
<node TEXT="class Alternative" POSITION="right" ID="ID_1538916858" CREATED="1522069793245" MODIFIED="1524476191324">
<edge COLOR="#00007c"/>
<node TEXT="name" ID="ID_68135524" CREATED="1524476169890" MODIFIED="1524476171672"/>
<node TEXT="prio" ID="ID_773188197" CREATED="1522069816477" MODIFIED="1522069817879"/>
<node TEXT="initscript" ID="ID_226277486" CREATED="1522069818253" MODIFIED="1522069826133"/>
<node TEXT="family" ID="ID_1624589609" CREATED="1522069826364" MODIFIED="1522069829519"/>
</node>
<node TEXT="struct AlterItem[]" POSITION="right" ID="ID_1884559970" CREATED="1522069832789" MODIFIED="1524476195248" HGAP_QUANTITY="21.49999977648259 pt" VSHIFT_QUANTITY="26.99999919533732 pt">
<edge COLOR="#007c00"/>
<node TEXT="link" ID="ID_1493887332" CREATED="1522069883116" MODIFIED="1522069951656"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      access link, e.g. /bin/java
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="target" ID="ID_760833802" CREATED="1522069892517" MODIFIED="1522069982992"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      desired binary to launch, e.g. /usr/bin/java-1.6.0/bin/javac
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="flags" ID="ID_1890542822" CREATED="1522069894820" MODIFIED="1522070236998"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      binary mask
    </p>
    <p>
      PRIMARY (master)
    </p>
    <p>
      SECONDARY (slave)
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="createLink(link, target)" POSITION="right" ID="ID_1635230037" CREATED="1522070651481" MODIFIED="1522070879122">
<edge COLOR="#00ffff"/>
</node>
<node TEXT="removeLink(link)" POSITION="right" ID="ID_1950551304" CREATED="1522070879944" MODIFIED="1522070892026">
<edge COLOR="#7c0000"/>
</node>
<node TEXT="alternative conf file" POSITION="right" ID="ID_1012574889" CREATED="1522070447770" MODIFIED="1522070615515" HGAP_QUANTITY="6.500000223517411 pt" VSHIFT_QUANTITY="39.74999881535772 pt">
<edge COLOR="#ff00ff"/>
<node TEXT="YAML" ID="ID_1408611276" CREATED="1522070467250" MODIFIED="1522070470468"/>
<node TEXT="AlternativeSet {" ID="ID_1067647370" CREATED="1522070472954" MODIFIED="1522070524012">
<node TEXT="mode" ID="ID_731167796" CREATED="1522070487738" MODIFIED="1522070492879">
<node TEXT="auto" ID="ID_1901211583" CREATED="1522070493609" MODIFIED="1522070495780"/>
<node TEXT="manual" ID="ID_1239302619" CREATED="1522070496106" MODIFIED="1522070497780"/>
</node>
<node TEXT="alternatives[]" ID="ID_263170676" CREATED="1522070498786" MODIFIED="1522070541836">
<node TEXT="prio, initscript" ID="ID_1561487541" CREATED="1522070576137" MODIFIED="1522074583053"/>
<node TEXT="AlterItems[]" ID="ID_1473792199" CREATED="1522070601585" MODIFIED="1522070611492"/>
</node>
</node>
</node>
<node TEXT="/etc/alternatives.conf" POSITION="left" ID="ID_234555319" CREATED="1522070294115" MODIFIED="1522070305612">
<edge COLOR="#0000ff"/>
<node TEXT="path to default bridge dir" ID="ID_959645535" CREATED="1522070316138" MODIFIED="1522070333940">
<node TEXT="needed?" ID="ID_1051671067" CREATED="1522075389392" MODIFIED="1522075392161"/>
</node>
<node TEXT="conf files location" ID="ID_56919415" CREATED="1522070334434" MODIFIED="1522070342340"/>
<node TEXT="misc settings" ID="ID_445337381" CREATED="1522070343266" MODIFIED="1522070347660"/>
</node>
<node TEXT="/etc/alternatives.d/" POSITION="left" ID="ID_726792637" CREATED="1522070307043" MODIFIED="1522070628610" HGAP_QUANTITY="18.499999865889553 pt" VSHIFT_QUANTITY="38.249998860061204 pt">
<edge COLOR="#00ff00"/>
<node TEXT="yaml configs" ID="ID_77775121" CREATED="1522075376876" MODIFIED="1522075380091"/>
</node>
</node>
</map>
