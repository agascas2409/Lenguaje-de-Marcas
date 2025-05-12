<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="UTF-8" indent="no"></xsl:output>
    <xsl:template match="/datos">
    { "cuentas": [
        <xsl:for-each select="cuentas/cuenta">
            {
                "dnititular":<xsl:value-of select="@dnititular"></xsl:value-of>,
                "creacion":<xsl:value-of select="creacion"></xsl:value-of>,
                "titular":<xsl:value-of select="titular"></xsl:value-of>,
                "saldoactual":<xsl:value-of select="saldoactual"></xsl:value-of>
            }<xsl:if test="position() != last()">,</xsl:if>
        </xsl:for-each>
        ],
      "fondos": [
        <xsl:for-each select="fondos/fondo">
            {
                "cuentaasociada":<xsl:value-of select="@cuentaasociada"></xsl:value-of>,
                "cuentadepositada":<xsl:value-of select="cuentadepositada"></xsl:value-of>,
                "moneda":<xsl:value-of select="moneda"></xsl:value-of>
            }<xsl:if test="position() != last()">,</xsl:if>
        </xsl:for-each>
        ]
    }
    </xsl:template>
</xsl:stylesheet>