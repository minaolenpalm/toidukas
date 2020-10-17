create function toidupyramiid.calcAge(@id int)
returns int
as
begin
	declare @age int;
	declare @bd date;
	set @bd=(select tu.birthdate from toidupyramiid.users tu where tu.id=@id);
	set @age=datediff(YY, @bd, getdate());
	return @age
end;

create function toidupyramiid.calcDaily(@id int)
returns float
as
begin
	declare @dvalue float;
	declare @weight int;
	declare @height int;
	declare @aval float;
	declare @gender int;
	declare @age int;

	set @dvalue=0;
	set @age=(select toidupyramiid.calcage(@id));
	select @aval=ta.actvalue, @weight=tu.weight, @height=tu.height, @gender=tu.gender from toidupyramiid.users tu, toidupyramiid.activitylevel ta where tu.id=@id and tu.activitylevel=ta.id;
	
	
--meestel
	if (@gender=1)
		begin
			if (@age<=30)
				begin
				set @dvalue = (0.06 * @weight + 1.31 * @height / 100 + 0.473) * @aval *240;
				return @dvalue;
				end;
			if (@age<=60)
				begin
				set @dvalue = (0.0476 * @weight + 2.26 * @height / 100 - 0.574) * @aval *240;
				return @dvalue;
				end;
			if (@age>60)
				begin
				set @dvalue = (0.0478 * @weight + 2.26 * @height / 100 - 1.0702) * @aval *240;
				return @dvalue;
				end;
		end;
--naised
	else if (@gender=2)
		begin
			if (@age<=30)
				begin
				set @dvalue = (0.0433 * @weight + 2.57 * @height / 100 - 1.180) * @aval *240;
				return @dvalue;
				end;
			if (@age<=60)
				begin
				set @dvalue = (0.0342 * @weight + 2.10 * @height / 100 - 0.0486) * @aval *240;
				return @dvalue;
				end;
			if (@age>60)
				begin
				set @dvalue = (0.0356 * @weight + 1.76 * @height / 100 - 0.0448) * @aval *240;
				return @dvalue;
				end;
		end;
	return 999999;
end;

alter table toidupyramiid.users add dailyCal AS toidupyramiid.calcdaily(id);



CREATE TRIGGER userchange
	ON toidupyramiid.users
	AFTER UPDATE
	AS UPDATE toidupyramiid.users
		SET changedate = GETDATE()
		WHERE ID IN (SELECT DISTINCT ID FROM Inserted);
