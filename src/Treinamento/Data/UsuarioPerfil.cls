Class Treinamento.Data.UsuarioPerfil Extends (%Persistent, %XML.Adaptor)
{

Relationship UsuarioLista As Treinamento.Data.Usuario [ Cardinality = one, Inverse = UsuarioPerfil ];

Relationship PerfilLista As Treinamento.Data.Perfil [ Cardinality = one, Inverse = UsuarioPerfilId ];

Relationship NivelLista As Treinamento.Data.Nivel [ Cardinality = one, Inverse = UsuarioNivelId ];

Storage Default
{
<Data name="UsuarioPerfilDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>UsuarioLista</Value>
</Value>
<Value name="3">
<Value>PerfilLista</Value>
</Value>
<Value name="4">
<Value>NivelLista</Value>
</Value>
</Data>
<DataLocation>^Treinamento5652.UsuarioPerfilD</DataLocation>
<DefaultData>UsuarioPerfilDefaultData</DefaultData>
<IdLocation>^Treinamento5652.UsuarioPerfilD</IdLocation>
<IndexLocation>^Treinamento5652.UsuarioPerfilI</IndexLocation>
<StreamLocation>^Treinamento5652.UsuarioPerfilS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
