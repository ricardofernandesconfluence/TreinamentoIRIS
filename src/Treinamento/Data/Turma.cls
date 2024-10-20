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
<ExtentSize>1</ExtentSize>
<IdLocation>^Treinamento.Data.TurmaD</IdLocation>
<IndexLocation>^Treinamento.Data.TurmaI</IndexLocation>
<Property name="%%CLASSNAME">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="%%ID">
<AverageFieldSize>3</AverageFieldSize>
<Selectivity>1</Selectivity>
</Property>
<Property name="Alunos">
<AverageFieldSize>17</AverageFieldSize>
<OutlierSelectivity>.999999:$lb($lb("1"),$lb("2"),$lb("3"))</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="Curso">
<AverageFieldSize>3</AverageFieldSize>
<OutlierSelectivity>.999999:1</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="DataInicio">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="Instrutor">
<AverageFieldSize>3</AverageFieldSize>
<OutlierSelectivity>.999999:1</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="Status">
<AverageFieldSize>12</AverageFieldSize>
<OutlierSelectivity>.999999:"Incompleta"</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<SQLMap name="IDKEY">
<BlockCount>-4</BlockCount>
</SQLMap>
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
	Try
	{
		Set tsc = $$$OK
		
		// Pesquisa alunos de determinado curso
		Set tSQL="Select $LISTLENGTH(Alunos) as NumAlunos,ID from Treinamento_Data.Turma where Curso->Nome = ? "
		Set tRs = ##class(%SQL.Statement).%New()
		Set tRt = tRs.%Prepare(tSQL)
		Set tsr = tRs.%Execute(pCurso)
		If tsr.%Next()
		{			
			Set tIdTurma = tsr.%Get("ID")
			Set total = tsr.%Get("NumAlunos")
			Set turma = ##class(Treinamento.Data.Turma).%OpenId(tIdTurma)
		}
		Do tsr.Close() Kill tsr
		
		For tcont=1:1:total
		{
			Set aluno = turma.Alunos.GetAt(tcont)
			w !,"Nome: ",aluno.Nome
			w " Matricula: ",aluno.Matricula
			w " Idade: ",aluno.Idade

		}
	}
	Catch exception
	{
		Set tsc = exception.AsStatus()
		Set tsc = $SYSTEM.Status.GetErrorText(tsc)
		Throw tsc
	}
	
	Return tsc
}

}
