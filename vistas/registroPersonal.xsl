<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xlink="http://www.w3.org/1999/xlink">
    <xsl:output method="html" encoding="UTF-8" indent="yes" />

    <xsl:key name="buscar-departamento" match="//departamento" use="@codigo" />
    <xsl:key name="empleados-departamento" match="//empleado" use="departamento/@codigo" />

    <xsl:template match="/">
        <html>
            <head>
                <title>Registro de Personal</title>

                <link
                    href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css"
                    rel="stylesheet"
                    integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
                    crossorigin="anonymous" />

                <link
                    href="https://cdn.datatables.net/v/bs5/jq-3.7.0/moment-2.29.4/jszip-3.10.1/dt-2.3.2/af-2.7.0/b-3.2.3/b-colvis-3.2.3/b-html5-3.2.3/b-print-3.2.3/cr-2.1.1/cc-1.0.6/date-1.5.5/fc-5.0.4/fh-4.0.3/kt-2.12.1/r-3.0.4/rg-1.5.1/rr-1.5.0/sc-2.4.3/sb-1.8.2/sp-2.3.3/sl-3.0.1/sr-1.4.1/datatables.min.css"
                    rel="stylesheet"
                    integrity="sha384-qHMX0AbT+t6yogRkUDJhxQKZ8pRnigy/0aLpQaQH5ZiVilorppH54ft+3CtBfOH1"
                    crossorigin="anonymous" />
            </head>
            <body>
                <div class="container mt-5">
                    <h2 class="p-3">Registro de Personal</h2>
                    <nav>
                        <div class="nav nav-tabs" id="nav-tab" role="tablist">
                            <button class="nav-link active" id="nav-empleados-tab"
                                data-bs-toggle="tab"
                                data-bs-target="#nav-empleados" type="button" role="tab"
                                aria-controls="nav-empleados" aria-selected="true">
                                Empleados
                            </button>
                            <button class="nav-link" id="nav-consultores-tab" data-bs-toggle="tab"
                                data-bs-target="#nav-consultores" type="button" role="tab"
                                aria-controls="nav-consultores" aria-selected="false">
                                Consultores
                            </button>
                            <button class="nav-link" id="nav-departamentos-tab" data-bs-toggle="tab"
                                data-bs-target="#nav-departamentos" type="button" role="tab"
                                aria-controls="nav-departamentos" aria-selected="false">
                                Departamentos
                            </button>
                        </div>
                    </nav>
                    <div class="tab-content" id="nav-tabContent">
                        <div class="tab-pane fade show active" id="nav-empleados"
                            role="tabpanel"
                            aria-labelledby="nav-empleados-tab">
                            <table id="tabla-empleados" class="table">
                                <thead>
                                    <tr>
                                        <th>Código</th>
                                        <th>Nombre</th>
                                        <th>Sexo</th>
                                        <th>Email</th>
                                        <th>Teléfono</th>
                                        <th>Departamento</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <xsl:for-each select="//empleado">
                                        <tr>
                                            <td>
                                                <xsl:value-of select="@codigo" />
                                            </td>
                                            <td>
                                                <xsl:value-of select="nombre" />
                                            </td>
                                            <td>
                                                <xsl:value-of select="sexo" />
                                            </td>
                                            <td>
                                                <xsl:value-of select="contacto/email" />
                                            </td>
                                            <td>
                                                <xsl:value-of select="contacto/telefono" />
                                            </td>
                                            <td>
                                                <xsl:value-of
                                                    select="key('buscar-departamento', departamento/@codigo)/nombre" />
                                            </td>
                                        </tr>
                                    </xsl:for-each>
                                </tbody>
                            </table>
                        </div>
                        <div class="tab-pane fade" id="nav-consultores" role="tabpanel"
                            aria-labelledby="nav-consultores-tab">
                            <table id="tabla-consultores" class="table">
                                <thead>
                                    <tr>
                                        <th>Código</th>
                                        <th>Nombre</th>
                                        <th>Sexo</th>
                                        <th>Email</th>
                                        <th>Teléfono</th>
                                        <th>Departamento</th>
                                        <th>Empresa Externa</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <xsl:for-each select="//consultor">
                                        <tr>
                                            <td>
                                                <xsl:value-of select="@codigo" />
                                            </td>
                                            <td>
                                                <xsl:value-of select="nombre" />
                                            </td>
                                            <td>
                                                <xsl:value-of select="sexo" />
                                            </td>
                                            <td>
                                                <xsl:value-of select="contacto/email" />
                                            </td>
                                            <td>
                                                <xsl:value-of select="contacto/telefono" />
                                            </td>
                                            <td>
                                                <xsl:value-of
                                                    select="key('buscar-departamento', departamento/@codigo)/nombre" />
                                            </td>
                                            <td>
                                                <xsl:value-of select="empresaExterna" />
                                            </td>
                                        </tr>
                                    </xsl:for-each>
                                </tbody>
                            </table>
                        </div>
                        <div class="tab-pane fade" id="nav-departamentos" role="tabpanel"
                            aria-labelledby="nav-departamentos-tab">
                            <table id="tabla-departamentos" class="table ">
                                <thead>
                                    <tr>
                                        <th>Código</th>
                                        <th>Nombre</th>
                                        <th>Director</th>
                                        <th>Direccion</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <xsl:for-each select="//departamentos/departamento">
                                        <tr>
                                            <td>
                                                <xsl:value-of select="@codigo" />
                                            </td>
                                            <td>
                                                <xsl:value-of select="nombre" />
                                            </td>
                                            <td>
                                                <xsl:value-of select="director" />
                                            </td>
                                            <td>
                                                <xsl:value-of select="direccion" />
                                            </td>
                                        </tr>
                                    </xsl:for-each>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

                <script
                    src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/js/bootstrap.bundle.min.js"
                    integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
                    crossorigin="anonymous"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/pdfmake.min.js"
                    integrity="sha384-VFQrHzqBh5qiJIU0uGU5CIW3+OWpdGGJM9LBnGbuIH2mkICcFZ7lPd/AAtI7SNf7"
                    crossorigin="anonymous"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/vfs_fonts.js"
                    integrity="sha384-/RlQG9uf0M2vcTw3CX7fbqgbj/h8wKxw7C3zu9/GxcBPRKOEcESxaxufwRXqzq6n"
                    crossorigin="anonymous"></script>
                <script
                    src="https://cdn.datatables.net/v/bs5/jq-3.7.0/moment-2.29.4/jszip-3.10.1/dt-2.3.2/af-2.7.0/b-3.2.3/b-colvis-3.2.3/b-html5-3.2.3/b-print-3.2.3/cr-2.1.1/cc-1.0.6/date-1.5.5/fc-5.0.4/fh-4.0.3/kt-2.12.1/r-3.0.4/rg-1.5.1/rr-1.5.0/sc-2.4.3/sb-1.8.2/sp-2.3.3/sl-3.0.1/sr-1.4.1/datatables.min.js"
                    integrity="sha384-Sqg+cHKT+pQM3ZHFvUUhR6FqmEZ3Zbw2Z+2xVmoZ5RvrvP4bxwXfHUCgbl7laBZP"
                    crossorigin="anonymous"></script>

                <script src="controladores/datatables.js" />
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
