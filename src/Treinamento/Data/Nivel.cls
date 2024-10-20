Class Treinamento.Data.Nivel Extends (%Persistent, %XML.Adaptor)
{

Property NomeNivel As %String(MAXLEN = 200) [ SqlColumnNumber = 2 ];

Property Codigo As %String [ SqlColumnNumber = 3 ];

Relationship IdPerfil As Treinamento.Data.Perfil [ Cardinality = many, Inverse = ListaNiveis ];

Relationship UsuarioNivelId As Treinamento.Data.UsuarioPerfil [ Cardinality = many, Inverse = UsuarioNivelId ];

Storage Default
{
<Data name="NivelDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>NomeNivel</Value>
</Value>
<Value name="3">
<Value>Codigo</Value>
</Value>
</Data>
<DataLocation>^Treinamento.Data.NivelD</DataLocation>
<DefaultData>NivelDefaultData</DefaultData>
<IdLocation>^Treinamento.Data.NivelD</IdLocation>
<IndexLocation>^Treinamento.Data.NivelI</IndexLocation>
<StreamLocation>^Treinamento.Data.NivelS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
