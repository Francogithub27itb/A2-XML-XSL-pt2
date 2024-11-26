<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8"/>

    <xsl:template match="recepta">
                <html>
                    <head>
                        <title>
                            <xsl:value-of select="nom"/>
                        </title>
                        <style>
                            body { font-family: Arial, sans-serif; margin: 20px; }
                            h1 { color: #4CAF50; }
                            .section { margin-bottom: 20px; }
                        </style>
                    </head>
                    <body>
                        <h1><xsl:value-of select="nom"/></h1>
                        <div class="section">
                            <strong>Autor:</strong> 
                            <xsl:value-of select="autor/nom"/> 
                            (DNI: <xsl:value-of select="autor/dni"/>)
                        </div>
                        <div class="section">
                            <strong>Ingredientes:</strong>
                            <ul>
                                <xsl:for-each select="ingredients/ingredient">
                                    <li>
                                        <xsl:value-of select="nom"/> - 
                                        <xsl:value-of select="quantitat/valor"/> 
                                        <xsl:value-of select="quantitat/mesura"/>
                                    </li>
                                </xsl:for-each>
                            </ul>
                        </div>
                        <div class="section">
                            <strong>Pasos:</strong>
                            <ol>
                                <xsl:for-each select="passos/pas">
                                    <li><xsl:value-of select="."/></li>
                                </xsl:for-each>
                            </ol>
                        </div>
                    </body>
                </html>
    </xsl:template>
</xsl:stylesheet>