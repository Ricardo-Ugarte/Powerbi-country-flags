# 🌍 Power BI Country Flags (ES)

Glosario de **países por continente** con **ISO2** y **URL de bandera** listo para usar en **Power BI**, **Power Query** y **SQL**.

## 📦 Contenido
- [`data/countries_flags.csv`](https://github.com/Ricardo-Ugarte/Powerbi-country-flags/blob/main/data/countries_flags.csv) → Country, Continent, ISO2, Flag_URL (UTF-8).  
  **RAW (para conectar desde Power BI / Power Query):**  
  `https://raw.githubusercontent.com/Ricardo-Ugarte/Powerbi-country-flags/main/data/countries_flags.csv`

- [`scripts/PowerQueryScript.m`](https://github.com/Ricardo-Ugarte/Powerbi-country-flags/blob/main/scripts/PowerQueryScript.m) → Conexión directa al CSV “raw” en GitHub.

- [`scripts/.sql`](https://github.com/Ricardo-Ugarte/Powerbi-country-flags/blob/main/scripts/.sql) → Tabla de referencia + JOIN de ejemplo.

## 🚀 Uso en Power BI
1. **Get Data → Web** (o Text/CSV) y apunta al link *raw* del CSV.  
2. En **Column tools**, marca `Flag_URL` como **Image URL**.  
3. Relación recomendada: por **ISO2** (evita diferencias de nombres/idiomas).  
4. Para Map/Filled Map, categoriza `Country` como **Country/Region**.

## 🧰 Uso en Power Query
Importa [`scripts/PowerQueryScript.m`](https://github.com/Ricardo-Ugarte/Powerbi-country-flags/blob/main/scripts/PowerQueryScript.m)  
`Flag_URL` ya queda listo para usarse en tablas/matrices/slicers con imágenes.

## 🗄️ Uso en SQL
Crea la tabla `CountryFlags` y cárgala desde el CSV. Haz JOIN por `ISO2` con tu tabla de hechos.  
Scripts: [`scripts/.sql`](https://github.com/Ricardo-Ugarte/Powerbi-country-flags/blob/main/scripts/.sql)
