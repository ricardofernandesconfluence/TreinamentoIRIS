/// Classe com os dados do aluno
Class Treinamento.Data.Curso Extends (%Persistent, %XML.Adaptor)
{

// Nome do Curso

Property Nome As %String(MAXLEN = 60) [ SqlColumnNumber = 2 ];

// Preco

Property Preco As %Numeric [ SqlColumnNumber = 3 ];

// Duracao

Property Duracao As %Integer [ SqlColumnNumber = 4 ];

// Indice por Nome

Index IENome On Nome;

Storage Default
{
<Data name="CursoDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Nome</Value>
</Value>
<Value name="3">
<Value>Preco</Value>
</Value>
<Value name="4">
<Value>Duracao</Value>
</Value>
</Data>
<DataLocation>^Treinamento.Data.CursoD</DataLocation>
<DefaultData>CursoDefaultData</DefaultData>
<IdLocation>^Treinamento.Data.CursoD</IdLocation>
<IndexLocation>^Treinamento.Data.CursoI</IndexLocation>
<StreamLocation>^Treinamento.Data.CursoS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
