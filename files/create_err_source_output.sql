use Telecom_DWH
go

CREATE TABLE err_src_output (
	id int identity(1,1),
    [Flat File Source Error Output Column] varchar(max),
    [ErrorCode] int,
    [ErrorColumn] int,
    [audit_id] int default (-1)
);