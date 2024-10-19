Class Treinamento.Data.Turma Extends (%Persistent, %XML.Adaptor)
{

// Instrutor

Property Instrutor As Treinamento.Data.Instrutor [ SqlColumnNumber = 2 ];

// Data inicio

Property DataInicio As %Date [ SqlColumnNumber = 3 ];

// Status

Property Status As %Boolean [ SqlColumnNumber = 4 ];

// Alunos

Property Alunos As list Of Treinamento.Data.Aluno [ SqlColumnNumber = 5 ];

// Curso

Property Curso As Treinamento.Data.Curso [ SqlColumnNumber = 6 ];

Storage Default
{
<Data name="TurmaDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Instrutor</Value>
</Value>
<Value name="3">
<Value>DataInicio</Value>
</Value>
<Value name="4">
<Value>Status</Value>
</Value>
<Value name="5">
<Value>Alunos</Value>
</Value>
<Value name="6">
<Value>Curso</Value>
</Value>
</Data>
<DataLocation>^Treinamento.Data.TurmaD</DataLocation>
<DefaultData>TurmaDefaultData</DefaultData>
<IdLocation>^Treinamento.Data.TurmaD</IdLocation>
<IndexLocation>^Treinamento.Data.TurmaI</IndexLocation>
<StreamLocation>^Treinamento.Data.TurmaS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
