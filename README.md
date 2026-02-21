# Data Warehouse and Analytics Project

Welcome to the **Data Warehouse and Analytics Project** repository! <img src="./images/Colorful Rocket.png" width="25">

This project demonstrates a comprehensive data warehousing and analytics solution, from building a data warehouse to generating actionable insights.  Designed as a portfolio project that highlights industry best practices in data engineeringand analytics.

-------------------------------------------------------------------------------------

##Data Architecture
--------------------------------------------------
The Data architecture for this project follows Medallion Architecture **Bronze**, **Silver**, and **Gold** layers:

[Uplo<mxfile host="app.diagrams.net" agent="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36" version="29.4.0">
  <diagram name="Page-1" id="T6bVo2e9BndJW_062FRi">
    <mxGraphModel dx="1605" dy="1623" grid="1" gridSize="10" guides="1" tooltips="1" connect="1" arrows="0" fold="1" page="1" pageScale="1" pageWidth="850" pageHeight="1100" math="0" shadow="0">
      <root>
        <mxCell id="0" />
        <mxCell id="1" parent="0" />
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-4" parent="1" style="rounded=0;whiteSpace=wrap;html=1;dashed=1;" value="" vertex="1">
          <mxGeometry height="720" width="860" x="320" y="80" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-5" parent="1" style="rounded=0;whiteSpace=wrap;html=1;strokeColor=none;" value="&lt;font style=&quot;font-size: 18px;&quot;&gt;Data Warehouse&lt;/font&gt;" vertex="1">
          <mxGeometry height="40" width="320" x="480" y="40" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-6" parent="1" style="rounded=0;whiteSpace=wrap;html=1;dashed=1;" value="" vertex="1">
          <mxGeometry height="720" width="180" x="20" y="80" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-3" parent="1" style="rounded=0;whiteSpace=wrap;html=1;strokeColor=none;" value="&lt;font style=&quot;font-size: 18px;&quot;&gt;Sources&lt;/font&gt;" vertex="1">
          <mxGeometry height="40" width="120" x="50" y="40" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-7" parent="1" style="text;html=1;whiteSpace=wrap;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;rounded=0;" value="&lt;font style=&quot;font-size: 36px;&quot;&gt;High Level Architecture (Medallion)&lt;/font&gt;" vertex="1">
          <mxGeometry height="30" width="780" x="-30" y="-10" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-8" parent="1" style="rounded=0;whiteSpace=wrap;html=1;dashed=1;" value="" vertex="1">
          <mxGeometry height="720" width="210" x="1290" y="80" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-9" parent="1" style="rounded=0;whiteSpace=wrap;html=1;strokeColor=none;" value="&lt;font style=&quot;font-size: 18px;&quot;&gt;Consumers&lt;/font&gt;" vertex="1">
          <mxGeometry height="40" width="160" x="1310" y="40" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-10" parent="1" style="rounded=0;whiteSpace=wrap;html=1;strokeColor=light-dark(#000000,#663300);fillStyle=solid;fillColor=light-dark(#FFFFFF,#994C00);" value="&lt;font style=&quot;font-size: 24px;&quot;&gt;&lt;b&gt;Bronze Layer&lt;/b&gt;&lt;/font&gt;" vertex="1">
          <mxGeometry height="30" width="160" x="370" y="100" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-11" parent="1" style="rounded=0;whiteSpace=wrap;html=1;strokeColor=light-dark(#000000,#663300);fillColor=default;" value="" vertex="1">
          <mxGeometry height="640" width="200" x="350" y="140" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-12" parent="1" style="rounded=0;whiteSpace=wrap;html=1;strokeColor=light-dark(#000000,#663300);fillStyle=solid;fillColor=light-dark(#FFFFFF,#666666);" value="&lt;font style=&quot;font-size: 24px;&quot;&gt;&lt;b&gt;Silver Layer&lt;/b&gt;&lt;/font&gt;" vertex="1">
          <mxGeometry height="30" width="160" x="660" y="100" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-13" parent="1" style="rounded=0;whiteSpace=wrap;html=1;strokeColor=light-dark(#000000,#666666);fillColor=default;" value="" vertex="1">
          <mxGeometry height="640" width="200" x="650" y="140" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-14" parent="1" style="rounded=0;whiteSpace=wrap;html=1;strokeColor=light-dark(#000000,#663300);fillStyle=solid;fillColor=light-dark(#FFFFFF,#FFFF00);" value="&lt;font style=&quot;font-size: 24px; color: light-dark(rgb(0, 0, 0), rgb(0, 0, 0));&quot;&gt;&lt;b&gt;Gold Layer&lt;/b&gt;&lt;/font&gt;" vertex="1">
          <mxGeometry height="30" width="160" x="970" y="100" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-15" parent="1" style="rounded=0;whiteSpace=wrap;html=1;strokeColor=light-dark(#000000,#FFFF00);fillColor=default;" value="" vertex="1">
          <mxGeometry height="640" width="180" x="960" y="140" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-16" parent="1" style="image;aspect=fixed;html=1;points=[];align=center;fontSize=12;image=img/lib/azure2/general/Folder_Blank.svg;" value="" vertex="1">
          <mxGeometry height="44.64" width="55" x="83.77" y="150" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-17" parent="1" style="image;aspect=fixed;html=1;points=[];align=center;fontSize=12;image=img/lib/azure2/general/File.svg;" value="" vertex="1">
          <mxGeometry height="49.29" width="40" x="120" y="175.35" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-18" parent="1" style="text;html=1;whiteSpace=wrap;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;rounded=0;" value="CRM" vertex="1">
          <mxGeometry height="30" width="60" x="90" y="220" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-23" parent="1" style="image;aspect=fixed;html=1;points=[];align=center;fontSize=12;image=img/lib/azure2/general/Folder_Blank.svg;" value="" vertex="1">
          <mxGeometry height="44.64" width="55" x="83.77" y="270" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-24" parent="1" style="image;aspect=fixed;html=1;points=[];align=center;fontSize=12;image=img/lib/azure2/general/File.svg;" value="" vertex="1">
          <mxGeometry height="40" width="32.46" x="123.77000000000001" y="300" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-25" parent="1" style="text;html=1;whiteSpace=wrap;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;rounded=0;" value="ERP" vertex="1">
          <mxGeometry height="30" width="60" x="90" y="340" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-30" edge="1" parent="1" style="endArrow=none;html=1;rounded=0;strokeColor=light-dark(#000000,#4D4D4D);" value="">
          <mxGeometry height="50" relative="1" width="50" as="geometry">
            <mxPoint x="55" y="400" as="sourcePoint" />
            <mxPoint x="185" y="400" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-31" parent="1" style="text;html=1;whiteSpace=wrap;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;rounded=0;" value="&lt;b&gt;Object Type: &lt;/b&gt;CSV Files&lt;div&gt;&lt;br&gt;&lt;div&gt;I&lt;b&gt;nterface: &lt;/b&gt;Files in Folder&lt;/div&gt;&lt;/div&gt;" vertex="1">
          <mxGeometry height="30" width="142.73" x="38.64" y="435" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-32" parent="1" style="html=1;verticalLabelPosition=bottom;align=center;labelBackgroundColor=#ffffff;verticalAlign=top;strokeWidth=2;strokeColor=light-dark(#0080F0,#994C00);shadow=0;dashed=0;shape=mxgraph.ios7.icons.data;fillColor=light-dark(#FFFFFF,#CC6600);" value="" vertex="1">
          <mxGeometry height="90" width="72" x="414" y="220" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-35" parent="1" style="html=1;verticalLabelPosition=bottom;align=center;labelBackgroundColor=#ffffff;verticalAlign=top;strokeWidth=2;strokeColor=light-dark(#0080F0,#666666);shadow=0;dashed=0;shape=mxgraph.ios7.icons.data;fillColor=light-dark(#FFFFFF,#808080);" value="" vertex="1">
          <mxGeometry height="90" width="72" x="714" y="220" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-36" parent="1" style="html=1;verticalLabelPosition=bottom;align=center;labelBackgroundColor=#ffffff;verticalAlign=top;strokeWidth=2;strokeColor=light-dark(#0080F0,#CCCC00);shadow=0;dashed=0;shape=mxgraph.ios7.icons.data;fillColor=light-dark(#FFFFFF,#FFFF66);" value="" vertex="1">
          <mxGeometry height="90" width="72" x="1014" y="220" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-38" parent="1" style="shape=singleArrow;whiteSpace=wrap;html=1;fillColor=light-dark(#FFFFFF,#99FFFF);" value="" vertex="1">
          <mxGeometry height="60" width="120" x="210" y="240" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-39" parent="1" style="shape=singleArrow;whiteSpace=wrap;html=1;fillColor=light-dark(#FFFFFF,#99FFFF);" value="" vertex="1">
          <mxGeometry height="60" width="80" x="560" y="240" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-41" parent="1" style="shape=singleArrow;whiteSpace=wrap;html=1;fillColor=light-dark(#FFFFFF,#99FFFF);arrowWidth=0.26666666666666666;arrowSize=0.25555555555555554;" value="" vertex="1">
          <mxGeometry height="60" width="110" x="1190" y="250" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-42" parent="1" style="shape=singleArrow;whiteSpace=wrap;html=1;fillColor=light-dark(#FFFFFF,#99FFFF);" value="" vertex="1">
          <mxGeometry height="60" width="70" x="870" y="250" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-43" parent="1" style="text;html=1;whiteSpace=wrap;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;rounded=0;" value="&lt;font style=&quot;font-size: 14px;&quot;&gt;Raw Data&lt;/font&gt;" vertex="1">
          <mxGeometry height="30" width="80" x="414" y="330" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-47" parent="1" style="text;html=1;whiteSpace=wrap;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;rounded=0;" value="&lt;font style=&quot;font-size: 14px;&quot;&gt;Cleaned, Standardized Data&lt;/font&gt;" vertex="1">
          <mxGeometry height="30" width="150" x="665" y="330" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-48" parent="1" style="text;html=1;whiteSpace=wrap;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;rounded=0;" value="&lt;font style=&quot;font-size: 14px;&quot;&gt;Business-Ready Data&lt;/font&gt;" vertex="1">
          <mxGeometry height="30" width="140" x="980" y="325" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-49" edge="1" parent="1" style="endArrow=none;html=1;rounded=0;strokeColor=light-dark(#000000,#663300);" value="">
          <mxGeometry height="50" relative="1" width="50" as="geometry">
            <mxPoint x="379.32" y="379.5" as="sourcePoint" />
            <mxPoint x="509.31999999999994" y="379.5" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-50" edge="1" parent="1" style="endArrow=none;html=1;rounded=0;strokeColor=light-dark(#000000,#666666);entryX=0.95;entryY=0.441;entryDx=0;entryDy=0;entryPerimeter=0;" value="">
          <mxGeometry height="50" relative="1" width="50" as="geometry">
            <mxPoint x="660" y="379.5" as="sourcePoint" />
            <mxPoint x="840" y="379.69000000000005" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-51" edge="1" parent="1" style="endArrow=none;html=1;rounded=0;strokeColor=light-dark(#000000,#FFFF00);entryX=0.944;entryY=0.65;entryDx=0;entryDy=0;entryPerimeter=0;" value="">
          <mxGeometry height="50" relative="1" width="50" as="geometry">
            <mxPoint x="970" y="380" as="sourcePoint" />
            <mxPoint x="1130" y="380" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-52" parent="1" style="text;html=1;whiteSpace=wrap;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;rounded=0;" value="&lt;div style=&quot;text-align: left;&quot;&gt;&lt;b style=&quot;background-color: transparent; color: light-dark(rgb(0, 0, 0), rgb(255, 255, 255));&quot;&gt;Object Type: &lt;/b&gt;&lt;span style=&quot;background-color: transparent; color: light-dark(rgb(0, 0, 0), rgb(255, 255, 255));&quot;&gt;Tables&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;div style=&quot;text-align: left;&quot;&gt;&lt;b&gt;Load:&amp;nbsp;&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;ul&gt;&lt;li style=&quot;text-align: left;&quot;&gt;Batch Processing&lt;/li&gt;&lt;li style=&quot;text-align: left;&quot;&gt;Full Load&amp;nbsp;&lt;/li&gt;&lt;li style=&quot;text-align: left;&quot;&gt;Truncate &amp;amp; Insert&lt;/li&gt;&lt;/ul&gt;&lt;div style=&quot;text-align: left;&quot;&gt;&lt;br&gt;&lt;/div&gt;&lt;div style=&quot;text-align: left;&quot;&gt;No &lt;b&gt;Transformations&lt;/b&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div style=&quot;text-align: left;&quot;&gt;&lt;br&gt;&lt;/div&gt;&lt;div style=&quot;text-align: left;&quot;&gt;&lt;br&gt;&lt;/div&gt;&lt;div style=&quot;text-align: left;&quot;&gt;&lt;br&gt;&lt;/div&gt;&lt;div style=&quot;text-align: left;&quot;&gt;&lt;br&gt;&lt;/div&gt;&lt;div style=&quot;text-align: left;&quot;&gt;&lt;br&gt;&lt;/div&gt;&lt;div style=&quot;text-align: left;&quot;&gt;&lt;br&gt;&lt;/div&gt;&lt;div style=&quot;text-align: left;&quot;&gt;&lt;br&gt;&lt;/div&gt;&lt;div style=&quot;text-align: left;&quot;&gt;&lt;br&gt;&lt;/div&gt;&lt;div style=&quot;text-align: left;&quot;&gt;&lt;b&gt;Data Model: &lt;/b&gt;Nons (As-is)&lt;/div&gt;" vertex="1">
          <mxGeometry height="290" width="140" x="380" y="410" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-54" parent="1" style="text;html=1;whiteSpace=wrap;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;rounded=0;" value="&lt;div style=&quot;text-align: left;&quot;&gt;&lt;br&gt;&lt;/div&gt;" vertex="1">
          <mxGeometry height="30" width="165" x="565" y="490" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-56" parent="1" style="text;html=1;whiteSpace=wrap;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;rounded=0;" value="&lt;div style=&quot;text-align: left;&quot;&gt;&lt;b style=&quot;background-color: transparent; color: light-dark(rgb(0, 0, 0), rgb(255, 255, 255));&quot;&gt;Object Type: &lt;/b&gt;&lt;span style=&quot;background-color: transparent; color: light-dark(rgb(0, 0, 0), rgb(255, 255, 255));&quot;&gt;Tables&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;div style=&quot;text-align: left;&quot;&gt;Load&lt;b&gt;:&amp;nbsp;&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;ul&gt;&lt;li style=&quot;text-align: left;&quot;&gt;Batch Processing&lt;/li&gt;&lt;li style=&quot;text-align: left;&quot;&gt;Full Load&amp;nbsp;&lt;/li&gt;&lt;li style=&quot;text-align: left;&quot;&gt;Truncate &amp;amp; Insert&lt;/li&gt;&lt;/ul&gt;&lt;div style=&quot;text-align: left;&quot;&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;/div&gt;&lt;div style=&quot;text-align: left;&quot;&gt;&lt;b&gt;Transformations:&lt;/b&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div style=&quot;text-align: left;&quot;&gt;&lt;ul&gt;&lt;li&gt;&lt;b&gt;D&lt;/b&gt;ata Cleansing&lt;/li&gt;&lt;li&gt;Data Standardization&lt;/li&gt;&lt;li&gt;Data Normalization&lt;/li&gt;&lt;li&gt;Derived Columns&lt;/li&gt;&lt;li&gt;Data Enrichment&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;&lt;div style=&quot;text-align: left;&quot;&gt;&lt;br&gt;&lt;/div&gt;&lt;div style=&quot;text-align: left;&quot;&gt;&lt;b&gt;Data Model:&amp;nbsp;&lt;/b&gt;None (As-is)&lt;/div&gt;" vertex="1">
          <mxGeometry height="310" width="170" x="665" y="400" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-57" parent="1" style="text;html=1;whiteSpace=wrap;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;rounded=0;" value="&lt;div style=&quot;text-align: left;&quot;&gt;&lt;b style=&quot;background-color: transparent; color: light-dark(rgb(0, 0, 0), rgb(255, 255, 255));&quot;&gt;Object Type: &lt;/b&gt;&lt;span style=&quot;background-color: transparent; color: light-dark(rgb(0, 0, 0), rgb(255, 255, 255));&quot;&gt;Views&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;div style=&quot;text-align: left;&quot;&gt;No &lt;b&gt;Load:&amp;nbsp;&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;ul&gt;&lt;li style=&quot;text-align: left;&quot;&gt;Batch Processing&lt;/li&gt;&lt;li style=&quot;text-align: left;&quot;&gt;Full Load&amp;nbsp;&lt;/li&gt;&lt;li style=&quot;text-align: left;&quot;&gt;Truncate &amp;amp; Insert&lt;/li&gt;&lt;/ul&gt;&lt;div style=&quot;text-align: left;&quot;&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;/div&gt;&lt;div style=&quot;text-align: left;&quot;&gt;&lt;b style=&quot;background-color: transparent; color: light-dark(rgb(0, 0, 0), rgb(255, 255, 255));&quot;&gt;Transformations:&lt;/b&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div style=&quot;text-align: left;&quot;&gt;&lt;ul&gt;&lt;li&gt;Data Integrations&lt;/li&gt;&lt;li&gt;Aggregations&lt;/li&gt;&lt;li&gt;Business Logics&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;&lt;div style=&quot;text-align: left;&quot;&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;/div&gt;&lt;div style=&quot;text-align: left;&quot;&gt;&lt;br&gt;&lt;/div&gt;&lt;div style=&quot;text-align: left;&quot;&gt;&lt;br&gt;&lt;/div&gt;&lt;div style=&quot;text-align: left;&quot;&gt;&lt;b style=&quot;background-color: transparent; color: light-dark(rgb(0, 0, 0), rgb(255, 255, 255));&quot;&gt;Data Model:&amp;nbsp;&lt;/b&gt;&lt;/div&gt;&lt;div style=&quot;text-align: left;&quot;&gt;&lt;ul&gt;&lt;li&gt;Star Schema&lt;/li&gt;&lt;li&gt;Flat Table&lt;/li&gt;&lt;li&gt;Aggregated Table&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;" vertex="1">
          <mxGeometry height="320" width="170" x="970" y="430" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-61" parent="1" style="image;html=1;image=img/lib/clip_art/finance/Graph_128x128.png" value="" vertex="1">
          <mxGeometry height="80" width="80" x="1310" y="235" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-62" parent="1" style="verticalLabelPosition=bottom;aspect=fixed;html=1;shape=mxgraph.salesforce.analytics;fillColorStyles=fillColor2,fillColor3,fillColor4,fillColor5,fillColor6,fillColor7,fillColor8;fillColor2=#7099a6;fillColor3=#eb912c;fillColor4=light-dark(#C72035,#660000);fillColor5=#1f447e;fillColor6=light-dark(#59879B,#0000CC);fillColor7=light-dark(#E8762C,#FF9933);fillColor8=#5b6591;fillColor=none;strokeColor=none;" value="" vertex="1">
          <mxGeometry height="58.8" width="60" x="1400" y="242" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-63" parent="1" style="sketch=0;html=1;aspect=fixed;strokeColor=none;shadow=0;fillColor=#3B8DF1;verticalAlign=top;labelPosition=center;verticalLabelPosition=bottom;shape=mxgraph.gcp2.big_query" value="" vertex="1">
          <mxGeometry height="65" width="64.35" x="1362.82" y="400" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-99" connectable="0" parent="1" style="group" value="" vertex="1">
          <mxGeometry height="100" width="115" x="1337.5" y="590" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-77" parent="mBAtMhd1O39Rn-4pPiQI-99" style="shape=ellipse;whiteSpace=wrap;html=1;aspect=fixed;fillColor=light-dark(#0000FF,#66CC00);strokeColor=#000000;" value="" vertex="1">
          <mxGeometry height="5.327574816909014" width="5.327574816909014" x="25.205479452054796" y="58.823529411764724" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-78" parent="mBAtMhd1O39Rn-4pPiQI-99" style="shape=ellipse;whiteSpace=wrap;html=1;aspect=fixed;fillColor=#FF00FF;strokeColor=#000000;" value="" vertex="1">
          <mxGeometry height="4.2620598535272105" width="4.2620598535272105" x="56.71232876712328" y="88.23529411764709" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-79" parent="mBAtMhd1O39Rn-4pPiQI-99" style="shape=ellipse;whiteSpace=wrap;html=1;aspect=fixed;fillColor=light-dark(#FF0000,#6600CC);strokeColor=#000000;" value="" vertex="1">
          <mxGeometry height="6.393089780290815" width="6.393089780290815" y="14.705882352941181" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-80" parent="mBAtMhd1O39Rn-4pPiQI-99" style="shape=ellipse;whiteSpace=wrap;html=1;aspect=fixed;fillColor=light-dark(#00FFFF,#FFFF33);strokeColor=#000000;" value="" vertex="1">
          <mxGeometry height="6.925847261981716" width="6.925847261981716" x="94.52054794520548" y="52.941176470588246" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-81" parent="mBAtMhd1O39Rn-4pPiQI-99" style="shape=ellipse;whiteSpace=wrap;html=1;aspect=fixed;fillColor=light-dark(#00FF00,#CC0000);strokeColor=#000000;" value="" vertex="1">
          <mxGeometry height="7.458604743672618" width="7.458604743672618" x="47.26027397260274" y="29.411764705882362" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-82" parent="mBAtMhd1O39Rn-4pPiQI-99" style="shape=ellipse;whiteSpace=wrap;html=1;aspect=fixed;fillColor=light-dark(#FFFF00,#CC6600);strokeColor=#000000;" value="" vertex="1">
          <mxGeometry height="8.524119707054421" width="8.524119707054421" x="78.76712328767123" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-83" edge="1" parent="mBAtMhd1O39Rn-4pPiQI-99" source="mBAtMhd1O39Rn-4pPiQI-79" style="strokeColor=#FFFFFF;strokeWidth=2;rounded=0;" target="mBAtMhd1O39Rn-4pPiQI-81" value="">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-84" edge="1" parent="mBAtMhd1O39Rn-4pPiQI-99" source="mBAtMhd1O39Rn-4pPiQI-79" style="strokeColor=light-dark(#FFFFFF,#B3B3B3);strokeWidth=2;rounded=0;shape=wire;dashed=1;endArrow=none;endFill=0;" target="mBAtMhd1O39Rn-4pPiQI-77" value="">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-85" edge="1" parent="mBAtMhd1O39Rn-4pPiQI-99" source="mBAtMhd1O39Rn-4pPiQI-79" style="strokeColor=light-dark(#FFFFFF,#B3B3B3);strokeWidth=2;rounded=0;shape=wire;dashed=1;endArrow=none;endFill=0;" target="mBAtMhd1O39Rn-4pPiQI-82" value="">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-86" edge="1" parent="mBAtMhd1O39Rn-4pPiQI-99" source="mBAtMhd1O39Rn-4pPiQI-79" style="strokeColor=light-dark(#FFFFFF,#B3B3B3);strokeWidth=2;rounded=0;shape=wire;dashed=1;endArrow=none;endFill=0;" target="mBAtMhd1O39Rn-4pPiQI-80" value="">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-87" edge="1" parent="mBAtMhd1O39Rn-4pPiQI-99" source="mBAtMhd1O39Rn-4pPiQI-79" style="strokeColor=light-dark(#FFFFFF,#B3B3B3);strokeWidth=2;rounded=0;shape=wire;dashed=1;endArrow=none;endFill=0;" target="mBAtMhd1O39Rn-4pPiQI-78" value="">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-88" edge="1" parent="mBAtMhd1O39Rn-4pPiQI-99" source="mBAtMhd1O39Rn-4pPiQI-81" style="strokeColor=#FFFFFF;strokeWidth=2;rounded=0;" target="mBAtMhd1O39Rn-4pPiQI-77" value="">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-89" edge="1" parent="mBAtMhd1O39Rn-4pPiQI-99" source="mBAtMhd1O39Rn-4pPiQI-81" style="strokeColor=#FFFFFF;strokeWidth=2;rounded=0;" target="mBAtMhd1O39Rn-4pPiQI-82" value="">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-90" edge="1" parent="mBAtMhd1O39Rn-4pPiQI-99" source="mBAtMhd1O39Rn-4pPiQI-81" style="strokeColor=light-dark(#FFFFFF,#B3B3B3);strokeWidth=2;rounded=0;shape=wire;dashed=1;endArrow=none;endFill=0;" target="mBAtMhd1O39Rn-4pPiQI-80" value="">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-91" edge="1" parent="mBAtMhd1O39Rn-4pPiQI-99" source="mBAtMhd1O39Rn-4pPiQI-81" style="strokeColor=#FFFFFF;strokeWidth=2;rounded=0;" target="mBAtMhd1O39Rn-4pPiQI-78" value="">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-92" edge="1" parent="mBAtMhd1O39Rn-4pPiQI-99" source="mBAtMhd1O39Rn-4pPiQI-77" style="strokeColor=light-dark(#FFFFFF,#B3B3B3);strokeWidth=2;rounded=0;shape=wire;dashed=1;endArrow=none;endFill=0;" target="mBAtMhd1O39Rn-4pPiQI-82" value="">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-93" edge="1" parent="mBAtMhd1O39Rn-4pPiQI-99" source="mBAtMhd1O39Rn-4pPiQI-77" style="strokeColor=light-dark(#FFFFFF,#B3B3B3);strokeWidth=2;rounded=0;shape=wire;dashed=1;endArrow=none;endFill=0;" target="mBAtMhd1O39Rn-4pPiQI-80" value="">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-94" edge="1" parent="mBAtMhd1O39Rn-4pPiQI-99" source="mBAtMhd1O39Rn-4pPiQI-77" style="strokeColor=light-dark(#FFFFFF,#B3B3B3);strokeWidth=2;rounded=0;shape=wire;dashed=1;endArrow=none;endFill=0;" target="mBAtMhd1O39Rn-4pPiQI-78" value="">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-95" edge="1" parent="mBAtMhd1O39Rn-4pPiQI-99" source="mBAtMhd1O39Rn-4pPiQI-82" style="strokeColor=light-dark(#FFFFFF,#B3B3B3);strokeWidth=2;rounded=0;shape=wire;dashed=1;endArrow=none;endFill=0;" target="mBAtMhd1O39Rn-4pPiQI-80" value="">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-96" edge="1" parent="mBAtMhd1O39Rn-4pPiQI-99" source="mBAtMhd1O39Rn-4pPiQI-82" style="strokeColor=default;strokeWidth=2;rounded=0;shape=wire;dashed=1;endArrow=none;endFill=0;" target="mBAtMhd1O39Rn-4pPiQI-78" value="">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-97" edge="1" parent="mBAtMhd1O39Rn-4pPiQI-99" source="mBAtMhd1O39Rn-4pPiQI-80" style="strokeColor=light-dark(#FFFFFF,#B3B3B3);strokeWidth=2;rounded=0;shape=wire;dashed=1;endArrow=none;endFill=0;" target="mBAtMhd1O39Rn-4pPiQI-78" value="">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-100" parent="1" style="text;html=1;whiteSpace=wrap;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;rounded=0;" value="BI &amp;amp; Reporting" vertex="1">
          <mxGeometry height="30" width="94" x="1347.99" y="315" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-101" parent="1" style="text;html=1;whiteSpace=wrap;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;rounded=0;" value="Ad-Hoc SQL Queries" vertex="1">
          <mxGeometry height="30" width="102" x="1343.99" y="470" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-102" parent="1" style="text;html=1;whiteSpace=wrap;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;rounded=0;" value="Machine Learning" vertex="1">
          <mxGeometry height="30" width="60" x="1365" y="700" as="geometry" />
        </mxCell>
        <mxCell id="mBAtMhd1O39Rn-4pPiQI-106" parent="1" style="sketch=0;outlineConnect=0;fontColor=#232F3E;gradientColor=none;fillColor=light-dark(#C925D1,#007FFF);strokeColor=none;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;pointerEvents=1;shape=mxgraph.aws4.rds_mysql_instance;" value="" vertex="1">
          <mxGeometry height="55" width="55" x="275" y="45" as="geometry" />
        </mxCell>
      </root>
    </mxGraphModel>
  </diagram>
</mxfile>
ading Data Architecture for Data Warehose.drawio…]()


##   	Project Requirements

### Building the Data Warehouse (Data Engineering)

#### Objective
Develop a modern data warehouse using SQL Server to consolidate sales data, enabling analytical reporting and informed decision-making.

#### Specifications
- **Data Sources**: Import data from two source systems (ERP and CRM) provided as CSV files.
- **Data Quality**: Cleanse and resolve data quality issues prior to analysis.
- **Integration**: Combine both sources into a single, user-friendly data model designed for analytical queries.
- **Scope**: Focus on the latest dataset only; historization of data is not required.
- **Documentation**: Provide clear documentation of the data model to support both business stakeholders and analytics teams.

---

### BI: Analytics & Reporting (Data Analysis)

#### Objective
Develop SQL-based analytics to deliver detailed insights into:
- **Customer Behavior**
- **Product Performance**
- **Sales Trends**

These insights empower stakeholders with key business metrics, enabling strategic decision-making.

---

## License

This project is not licensed. The code is not to be used, modified, nor shared with attribution.

## About Me

Hi there! I'm **Samuel J. Claxton**, a SQL Developer with vast years of hands-on experience designing, optimizing, and supporting SQL Server and Oracle databases for enterprise and federal systems. Proven expertise in complex query development, stored procedures, ETL validation, data migration, and performance tuning for high-volume transactional and reporting environments. Strong background in database schema design, execution plan analysis, and data quality enforcement within Agile teams. Oracle Certified Associate with advanced degrees in Information Technology and Business Administration.

For more details, refer to docs/requirements.md.
