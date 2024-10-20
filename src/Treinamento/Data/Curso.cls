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
<ExtentSize>1</ExtentSize>
<IdLocation>^Treinamento.Data.CursoD</IdLocation>
<IndexLocation>^Treinamento.Data.CursoI</IndexLocation>
<Property name="%%CLASSNAME">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="%%ID">
<AverageFieldSize>3</AverageFieldSize>
<Selectivity>1</Selectivity>
</Property>
<Property name="Duracao">
<AverageFieldSize>3</AverageFieldSize>
<OutlierSelectivity>.999999:12</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="Nome">
<AverageFieldSize>13</AverageFieldSize>
<OutlierSelectivity>.999999:"Objeto IRIS"</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="Preco">
<AverageFieldSize>6</AverageFieldSize>
<OutlierSelectivity>.999999:1200.2</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<SQLMap name="IDKEY">
<BlockCount>-4</BlockCount>
</SQLMap>
<StreamLocation>^Treinamento.Data.CursoS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
