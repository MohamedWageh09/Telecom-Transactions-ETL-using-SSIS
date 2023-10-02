use Telecom_DWH
go

create table audit_table(
	id int identity(1,1) not null primary key,
	batch_id int,
	package_name nvarchar(255) not null,
	file_path nvarchar(255) not null,
	rows_extracted int, -- rows in the source file
	rows_inserted int,
	--rows_updated int,
	rows_rejected int,
	created_at datetime default(getdate()),
	updated_at datetime default(getdate()),
	success nchar(1) not null default 'N'
);