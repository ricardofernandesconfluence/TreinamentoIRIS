Class Treinamento.Data.Turma Extends (%Persistent, %XML.Adaptor)
{

// Instrutor

Property Instrutor As Treinamento.Data.Instrutor [ SqlColumnNumber = 2 ];

// Data inicio

Property DataInicio As %Date [ SqlColumnNumber = 3 ];

// Status

Property Status As %String [ SqlColumnNumber = 4 ];

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

Method VerificaStatus(pCurso As %String) As %String [ Language = objectscript ]
{
	Set tSQL="Select Status from Treinamento_Data.Turma where Curso->Nome = ?"
	Set tRs = ##class(%ResultSet).%New()
	Set tRt = tRs.Prepare(tSQL)
	Set tRt = tRs.Execute(pCurso)
	Set tStatus=""
	If tRs.Next()
	{
		Set tStatus=tRs.Get("Status")
	}
	Do tRs.Close() Kill tRs
	
	return tStatus
}

/// Imprime turma
ClassMethod ImprimeTurma(pCurso As %String) As %Status
{
	Set sc = $$$OK
	
	// Pesquisa alunos de determinado curso
	Set tSQL="Select Alunos from Treinamento_Data.Turma where Curso->Nome = ? "
	Set tRs = ##class(%ResultSet).%New()
	Set tRt = tRs.Prepare(tSQL)
	Set tRt = tRs.Execute(pCurso)
	If tRs.Next()
	{
		
		Set tObjAlunos = tRs.Get("Alunos")
		For tcont=1:1:tObjAlunos.Count()
		{
		}

	}
	Do tRs.Close() Kill tRs

	Return sc
}

}
