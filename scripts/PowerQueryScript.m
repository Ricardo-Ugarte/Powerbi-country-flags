let
    // URL del CSV en GitHub (rama main)
    CsvUrl = "https://raw.githubusercontent.com/Ricardo-Ugarte/Powerbi-country-flags/main/data/countries_flags.csv",

    Source = Csv.Document(
        Web.Contents(CsvUrl),
        [Delimiter = ",", Columns = 4, Encoding = 65001, QuoteStyle = QuoteStyle.Csv]
    ),
    Promote = Table.PromoteHeaders(Source, [PromoteAllScalars = true]),
    ChangeTypes = Table.TransformColumnTypes(Promote,{
        {"Country", type text},
        {"Continent", type text},
        {"ISO2", type text},
        {"Flag_URL", type text}
    })
in
    ChangeTypes
