Class Treinamento.Data.Instrutor Extends (%Persistent, %XML.Adaptor)
{

// Nome do instrutor

Property Nome As %String(MAXLEN = 60) [ SqlColumnNumber = 2 ];

// Matricula

Property Matricula As %String [ SqlColumnNumber = 3 ];

// Indice por nome de instrutor

Index IndxNome On Nome;

Storage Default
{
<Data name="InstrutorDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Nome</Value>
</Value>
<Value name="3">
<Value>Matricula</Value>
</Value>
</Data>
<DataLocation>^Treinamento.Data.InstrutorD</DataLocation>
<DefaultData>InstrutorDefaultData</DefaultData>
<IdLocation>^Treinamento.Data.InstrutorD</IdLocation>
<IndexLocation>^Treinamento.Data.InstrutorI</IndexLocation>
<StreamLocation>^Treinamento.Data.InstrutorS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
