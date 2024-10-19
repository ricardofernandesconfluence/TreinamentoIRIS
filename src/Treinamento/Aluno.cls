Class Treinamento.Aluno Extends (%Persistent, %XML.Adaptor)
{

// Nome

Property Nome As %String(MAXLEN = 60) [ SqlColumnNumber = 2 ];

// Matricula

Property Matricula As %String [ SqlColumnNumber = 3 ];

// Idade

Property Idade As %Integer [ SqlColumnNumber = 4 ];

Storage Default
{
<Data name="AlunoDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Nome</Value>
</Value>
<Value name="3">
<Value>Matricula</Value>
</Value>
<Value name="4">
<Value>Idade</Value>
</Value>
</Data>
<DataLocation>^Treinamento.AlunoD</DataLocation>
<DefaultData>AlunoDefaultData</DefaultData>
<IdLocation>^Treinamento.AlunoD</IdLocation>
<IndexLocation>^Treinamento.AlunoI</IndexLocation>
<StreamLocation>^Treinamento.AlunoS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
