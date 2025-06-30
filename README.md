**Situación práctica**:
Una empresa necesita explotar su información interna para:
- Gestionar empleados y consultores,
- Relacionar esta información con los distintos departamentos,
- Asegurar que toda la información esté correctamente estructurada, enlazada y accesible.

**Tareas a realizar**:
Desarrolla un Repositorio XML Empresarial para la Gestión de Personal y
Departamentos
1. Crea un repositorio XML con la siguiente estructura:
	- `<registroPersonal>` como raíz.
	- Elementos: `<empleados>`, `<consultores>` y `<departamentos>`.

```
- empleados
	- empleado (codigo)
		- nombre
		- sexo
		- contacto
			- email
			- telefono
		- departamento
- consultores
	- consultor (codigo)
		- nombre
		- sexo
		- contacto
			- email
			- telefono
		- departamento
		- empresaExterna
- departamentos
	- departamento (codigo)
		- nombre
		- director
		- empleados+
		- direccion
			- calle
			- ciudad
			- codigoPostal
```

- Relaciona empleados y departamentos mediante códigos.
- Estructura datos de tipos complejos y simples definidos en XSD.
- Añade un mínimo de 10 empleados , 4 departamentos y 6 consultores.

2. Desarrolla un XSD que cumpla los siguientes requisitos:
	- Define tipos simples y complejos.
	- Usa importación o inclusión de esquemas externos.
	- Usa atributos (`@codigo`) en elementos.
	- Valida correctamente la relación entre elementos (por ejemplo, usando tipos o referencias).

3. Aplicar tecnologías de explotación: (Optativo.)

>!ENTREGA ANTES EL EJERCICIO SIN LAS RESTRICCIONES DE LA PARTE OPCIONAL, TRABAJA LA PARTE OPCIONAL SOBRE UNA RAMA LLAMADA “OPCIONAL” Y NO SOBRE MAIN O MASTER!!

Este apartado consiste en ejercitar el reciclado de software, por ello se debe trabajar sobre el trabajo inicial finalizado.

- Aplica tecnología XSLT para mostrar los registros como una tabla bootstrap en pestañas individuales.
- Usa XPath para seleccionar elementos (por ejemplo: consultar empleados por departamento).
- Incluye al menos un enlace con XLink entre recursos del repositorio.
- Usa XPointer o ID/IDREF para navegación interna.