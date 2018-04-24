<map version="freeplane 1.6.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="alternatives func" FOLDED="false" ID="ID_1801855545" CREATED="1524474935348" MODIFIED="1524582601772" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle">
    <properties fit_to_viewport="false" edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff"/>

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
<hook NAME="AutomaticEdgeColor" COUNTER="13" RULE="ON_BRANCH_CREATION"/>
<node TEXT="commands" POSITION="right" ID="ID_1317567167" CREATED="1524476041675" MODIFIED="1524476049270">
<edge COLOR="#7c007c"/>
<node TEXT="--install" ID="ID_1948345265" CREATED="1524474951144" MODIFIED="1524476058134">
<node TEXT="link  name  path  priority [--slave link name path]... [--initscript service] [--family name]" ID="ID_956636327" CREATED="1524480536193" MODIFIED="1524480559498">
<node TEXT="name - generic name for the master link" ID="ID_1098860123" CREATED="1524491928742" MODIFIED="1524492017262">
<node TEXT="like &quot;facility&quot;" ID="ID_983899758" CREATED="1524494265173" MODIFIED="1524494271238"/>
</node>
<node TEXT="link - name of its symlink" ID="ID_339447934" CREATED="1524492018253" MODIFIED="1524492059680"/>
<node TEXT="path - alternative being introduced for the master link" FOLDED="true" ID="ID_1100813956" CREATED="1524492060613" MODIFIED="1524492077416">
<node TEXT="like &quot;target&quot;" ID="ID_1806478670" CREATED="1524494278020" MODIFIED="1524494281294"/>
</node>
<node TEXT="e.g. alternatives --install %{_bindir}/gnuplot gnuplot %{_bindir}/gnuplot-wx" ID="ID_1983092658" CREATED="1524494286365" MODIFIED="1524494309493"/>
</node>
<node TEXT="--slave" ID="ID_1457652403" CREATED="1524494596939" MODIFIED="1524494627485">
<node TEXT="master must be present" ID="ID_1283073581" CREATED="1524495574972" MODIFIED="1524495584710"/>
<node TEXT="if master exists in alternatives, slaves are added to the group" ID="ID_1346064122" CREATED="1524495585484" MODIFIED="1524495604757"/>
</node>
</node>
<node TEXT="--remove" ID="ID_1724900713" CREATED="1524474955591" MODIFIED="1524476058146">
<node ID="ID_314848613" CREATED="1524480659633" MODIFIED="1524480677317"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <u>name</u>&#160;<u>path</u>
    </p>
  </body>
</html>
</richcontent>
<node TEXT="name - &quot;facility&quot;" ID="ID_1423331968" CREATED="1524494336324" MODIFIED="1524494342015"/>
<node TEXT="path - &quot;target&quot;" ID="ID_1556273297" CREATED="1524494342676" MODIFIED="1524494347781"/>
<node TEXT="e.g. alternatives --remove gnuplot %{_bindir}/gnuplot-qt" ID="ID_1556200015" CREATED="1524494348452" MODIFIED="1524494356086"/>
<node TEXT="removes master &apos;path&apos; and all slaves" ID="ID_524323452" CREATED="1524496651936" MODIFIED="1524496671883"/>
</node>
</node>
<node TEXT="--set" ID="ID_134719746" CREATED="1524474975095" MODIFIED="1524476058158">
<node TEXT="name path" ID="ID_1092955118" CREATED="1524480688897" MODIFIED="1524480690667"/>
</node>
<node TEXT="--auto" ID="ID_1710952818" CREATED="1524474977407" MODIFIED="1524476058170">
<node TEXT="name" ID="ID_692766894" CREATED="1524480693505" MODIFIED="1524480694907"/>
</node>
<node TEXT="--display" ID="ID_115117011" CREATED="1524474979919" MODIFIED="1524476063464">
<node TEXT="name" ID="ID_1052080346" CREATED="1524480698496" MODIFIED="1524480701036"/>
</node>
<node TEXT="--config" ID="ID_22035875" CREATED="1524474982438" MODIFIED="1524476063472">
<node TEXT="name" ID="ID_901760837" CREATED="1524480703065" MODIFIED="1524480704836"/>
</node>
<node TEXT="--list" ID="ID_1394202401" CREATED="1524474989351" MODIFIED="1524476063480"/>
<node TEXT="--remove-all" ID="ID_1572458576" CREATED="1524474991743" MODIFIED="1524476063493">
<node TEXT="name" ID="ID_699776139" CREATED="1524480710528" MODIFIED="1524480711946"/>
<node TEXT="delete all alternatives for facility &apos;name&apos;" ID="ID_1363594831" CREATED="1524496633577" MODIFIED="1524496646331"/>
</node>
<node TEXT="exactly one" ID="ID_1595216424" CREATED="1524491524463" MODIFIED="1524491538760">
<icon BUILTIN="idea"/>
</node>
</node>
<node TEXT="usage" POSITION="left" ID="ID_1320478497" CREATED="1524476066042" MODIFIED="1524582393975" HGAP_QUANTITY="-34.749998547136826 pt" VSHIFT_QUANTITY="-27.74999917298558 pt">
<edge COLOR="#007c7c"/>
<node TEXT="final" ID="ID_1119144146" CREATED="1524582395689" MODIFIED="1524582397745"/>
<node TEXT="takes different ostreams" ID="ID_974863720" CREATED="1524582398760" MODIFIED="1524582404146"/>
</node>
<node TEXT="options" POSITION="left" ID="ID_1723779522" CREATED="1524480574489" MODIFIED="1524480576293">
<edge COLOR="#7c7c00"/>
<node TEXT="--help" ID="ID_143967966" CREATED="1524480585593" MODIFIED="1524480782177">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#000000" WIDTH="2" TRANSPARENCY="200" DASH="7 7" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_1320478497" STARTINCLINATION="16;-22;" ENDINCLINATION="46;-61;" STARTARROW="DEFAULT" ENDARROW="DEFAULT"/>
</node>
<node TEXT="--verbose" ID="ID_690140108" CREATED="1524480577265" MODIFIED="1524480579507"/>
<node TEXT="--quiet" ID="ID_962489829" CREATED="1524480580289" MODIFIED="1524491833467">
<node TEXT="not implemented in original" ID="ID_1260462867" CREATED="1524491785142" MODIFIED="1524491790193"/>
<node TEXT="probably useless when --verbose opt. present" ID="ID_66078385" CREATED="1524491791022" MODIFIED="1524491808681"/>
</node>
<node TEXT="--test" ID="ID_1734788844" CREATED="1524480582761" MODIFIED="1524480585163">
<node TEXT="do NOT perform command, just stdout" ID="ID_1018585918" CREATED="1524491649623" MODIFIED="1524491670324"/>
</node>
<node TEXT="--version" ID="ID_1561819399" CREATED="1524480591225" MODIFIED="1524480593738"/>
<node TEXT="--altdir" ID="ID_1661032075" CREATED="1524480594040" MODIFIED="1524480597268">
<node ID="ID_1134988071" CREATED="1524480632833" MODIFIED="1524480638874"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <u>directory</u>
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="override default /etc/alternatives/" ID="ID_1699310632" CREATED="1524491583351" MODIFIED="1524491595017"/>
<node TEXT="override &quot;bridge&quot;" ID="ID_195211063" CREATED="1524491598519" MODIFIED="1524491602976"/>
</node>
<node TEXT="--admindir" ID="ID_596306015" CREATED="1524480597609" MODIFIED="1524480600196">
<node ID="ID_1051861001" CREATED="1524480641681" MODIFIED="1524491621098"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <u>directory</u>
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="override default /var/lib/alternatives/" ID="ID_1807981281" CREATED="1524491607439" MODIFIED="1524491615825"/>
<node TEXT="override dir with configs" ID="ID_1147337547" CREATED="1524491624919" MODIFIED="1524491632976"/>
</node>
<node TEXT="any number" ID="ID_600776594" CREATED="1524491544831" MODIFIED="1524491549706">
<icon BUILTIN="idea"/>
</node>
</node>
<node TEXT="logging" POSITION="left" ID="ID_237301794" CREATED="1524582592663" MODIFIED="1524582601770" HGAP_QUANTITY="19.999999821186073 pt" VSHIFT_QUANTITY="55.49999834597116 pt">
<edge COLOR="#0000ff"/>
</node>
</node>
</map>
