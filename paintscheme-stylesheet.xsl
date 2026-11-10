<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:output method="html"/>
   <xsl:template match="/">
     <html>
       <head>
         <title>Paint Scheme</title>
         <link href="style.css" rel="stylesheet"/>
       </head>
       <body>
           <xsl:for-each select="paintscheme/models/model">
               <div class="model">
                   <p class="title"><xsl:value-of select="@title"/></p>
                   <dl>
                       <dt>Primer</dt>
                       <dd><xsl:apply-templates select="primer"/></dd>
                       <dt>Shade</dt>
                       <dd><xsl:apply-templates select="shade"/></dd>
                   </dl>
                   <xsl:for-each select="component">
                       <div class="component">
                           <p class="title"><xsl:value-of select="@title"/></p>
                           <xsl:if test="base">
                               <dl>
                                   <dt>Base</dt>
                                   <dd>
                                       <xsl:apply-templates select="base"/>
                                   </dd>
                               </dl>
                           </xsl:if>
                           <xsl:apply-templates select="layer"/>
                       </div>
                   </xsl:for-each>
               </div>
           </xsl:for-each>
       </body>
     </html>
   </xsl:template>
   <xsl:template match="primer|base|layer|shade|varnish">
       <details>
           <summary>
               <a>
                   <xsl:attribute name="href"><xsl:value-of select="@href"/></xsl:attribute>
                   <xsl:value-of select="."/>
               </a>
           </summary>
           <table>
               <tr>
                   <th>Brand</th>
                   <td></td>
               </tr>
               <tr>
                   <th>Paint Type</th>
                   <td><xsl:value-of select="@type"/></td>
               </tr>
               <tr>
                   <th>Practical Name</th>
                   <td><xsl:value-of select="@practical"/></td>
               </tr>
               <tr>
                   <th>Brush</th>
                   <td><xsl:value-of select="@brush"/></td>
               </tr>
               <tr>
                   <th>Method</th>
                   <td><xsl:value-of select="@method"/></td>
               </tr>
           </table>
       </details>
   </xsl:template>
</xsl:stylesheet>
