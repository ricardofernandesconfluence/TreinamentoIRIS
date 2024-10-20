Class Treinamento.Data.Perfil Extends (%Persistent, %XML.Adaptor)
{

// Nome Perfil

Property NomePerfil As %String(MAXLEN = 60) [ SqlColumnNumber = 2 ];

// Codigo Perfil

Property Codigo As %Numeric [ SqlColumnNumber = 3 ];

Storage Default
{
<Data name="PerfilDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>NomePerfil</Value>
</Value>
<Value name="3">
<Value>Codigo</Value>
</Value>
</Data>
<DataLocation>^Treinamento.Data.PerfilD</DataLocation>
<DefaultData>PerfilDefaultData</DefaultData>
<IdLocation>^Treinamento.Data.PerfilD</IdLocation>
<IndexLocation>^Treinamento.Data.PerfilI</IndexLocation>
<StreamLocation>^Treinamento.Data.PerfilS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
