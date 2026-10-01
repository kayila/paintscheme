<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:output method="html"/>
   <xsl:template match="/">
     <html>
       <head>
         <title>Paint Scheme</title>
         <style>
         </style>
       </head>
       <body>
           <xsl:for-each select="/models/model">
               Model: <xsl:value-of select="@title"/><br/>
               Primer: <xsl:value-of select="primer"/><br/>
               Shade: <xsl:value-of select="shade"/><br/>
               <xsl:for-each select="component">
                   <xsl:value-of select="@title"/><br/>
               </xsl:for-each>
           </xsl:for-each>
       </body>
     </html>
   </xsl:template>
</xsl:stylesheet>
