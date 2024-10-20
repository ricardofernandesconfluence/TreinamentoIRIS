Class Treinamento.Data.Usuario Extends (%Persistent, %XML.Adaptor)
{

// Nome usuario

Property Nome As %String(MAXLEN = 60) [ SqlColumnNumber = 2 ];

// SobreNome

Property Sobrenome As %String(MAXLEN = 60) [ SqlColumnNumber = 3 ];

// Sexo

Property Sexo As %String(MAXLEN = 10) [ SqlColumnNumber = 4 ];

// email

Property email As %String(MAXLEN = 30) [ SqlColumnNumber = 5 ];

Storage Default
{
<Data name="UsuarioDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Nome</Value>
</Value>
<Value name="3">
<Value>Sobrenome</Value>
</Value>
<Value name="4">
<Value>Sexo</Value>
</Value>
<Value name="5">
<Value>email</Value>
</Value>
</Data>
<DataLocation>^Treinamento.Data.UsuarioD</DataLocation>
<DefaultData>UsuarioDefaultData</DefaultData>
<IdLocation>^Treinamento.Data.UsuarioD</IdLocation>
<IndexLocation>^Treinamento.Data.UsuarioI</IndexLocation>
<StreamLocation>^Treinamento.Data.UsuarioS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
