Imports System.Data
Imports System.Data.SqlClient

Public Class CustomerSampleApproval
    Private _ID As Integer
    Private _SampleReqizitionID As Integer
    Private _SRRefID As String
    Private _SampleApprovedByCustomer As String
    Private _CustomerReportFilePath As String
    Private _OnTrackForSaleToCustomer As String
    Private _ReasonForNotOnTrack As String
    Private _NextStepToTrackForSale As String
    Private _ExpectedOrderDate As Date
    Private _InsertedDate As DateTime

    ' Properties
    Public Property ID() As Integer
        Get
            Return _ID
        End Get
        Set(ByVal value As Integer)
            _ID = value
        End Set
    End Property

    Public Property SampleReqizitionID() As Integer
        Get
            Return _SampleReqizitionID
        End Get
        Set(ByVal value As Integer)
            _SampleReqizitionID = value
        End Set
    End Property

    Public Property SRRefID() As String
        Get
            Return _SRRefID
        End Get
        Set(ByVal value As String)
            _SRRefID = value
        End Set
    End Property

    Public Property SampleApprovedByCustomer() As String
        Get
            Return _SampleApprovedByCustomer
        End Get
        Set(ByVal value As String)
            _SampleApprovedByCustomer = value
        End Set
    End Property

    Public Property CustomerReportFilePath() As String
        Get
            Return _CustomerReportFilePath
        End Get
        Set(ByVal value As String)
            _CustomerReportFilePath = value
        End Set
    End Property

    Public Property OnTrackForSaleToCustomer() As String
        Get
            Return _OnTrackForSaleToCustomer
        End Get
        Set(ByVal value As String)
            _OnTrackForSaleToCustomer = value
        End Set
    End Property

    Public Property ReasonForNotOnTrack() As String
        Get
            Return _ReasonForNotOnTrack
        End Get
        Set(ByVal value As String)
            _ReasonForNotOnTrack = value
        End Set
    End Property

    Public Property NextStepToTrackForSale() As String
        Get
            Return _NextStepToTrackForSale
        End Get
        Set(ByVal value As String)
            _NextStepToTrackForSale = value
        End Set
    End Property

    Public Property ExpectedOrderDate() As Date
        Get
            Return _ExpectedOrderDate
        End Get
        Set(ByVal value As Date)
            _ExpectedOrderDate = value
        End Set
    End Property

    Public Property InsertedDate() As DateTime
        Get
            Return _InsertedDate
        End Get
        Set(ByVal value As DateTime)
            _InsertedDate = value
        End Set
    End Property

    ' Method to insert data into CustomerSampleApproval
    Public Shared Function InsertCustomerSampleApproval(ByVal approval As CustomerSampleApproval) As Boolean
        Try
            Dim params(7) As SqlParameter
            params(0) = New SqlParameter("@SampleReqizitionID", approval.SampleReqizitionID)
            params(1) = New SqlParameter("@SRRefID", approval.SRRefID)
            params(2) = New SqlParameter("@SampleApprovedByCustomer", approval.SampleApprovedByCustomer)
            params(3) = New SqlParameter("@CustomerReportFilePath", approval.CustomerReportFilePath)
            params(4) = New SqlParameter("@OnTrackForSaleToCustomer", approval.OnTrackForSaleToCustomer)
            params(5) = New SqlParameter("@ReasonForNotOnTrack", approval.ReasonForNotOnTrack)
            params(6) = New SqlParameter("@NextStepToTrackForSale", approval.NextStepToTrackForSale)
            params(7) = New SqlParameter("@ExpectedOrderDate", approval.ExpectedOrderDate)

            Dim storedProcName As String = "InsertCustomerSampleApproval"

            Return SqlHelper.ExecuteNonQuery(WebGlobalVariables.Connection, CommandType.StoredProcedure, storedProcName, params)
        Catch ex As Exception
            ' Log the exception (implement logging as per your application needs)
            Console.WriteLine("Error occurred: " & ex.Message)
            Return False
        End Try
    End Function
End Class
