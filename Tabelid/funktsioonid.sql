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

create function toidupyramiid.calcStPyramiid(@id int)
RETURNS @stPyramiid TABLE 
(	
	cal	float,
    tera float, 
    juur float, 
    piim float, 
    liha float, 
    rasv float,
	magus float
)
as
begin
	declare @cal float;
	declare @tera float;
	declare @juur float;
	declare @piim float;
	declare @liha float;
	declare @rasv float;
	declare @magus float;
/*
	declare @cTera float;
	declare @cJuur float;
	declare @cPiim float;
	declare @cLiha float;
	declare @cRasv float;
	declare @cMagus float;
*/
	set @cal = (select tu.dailycal from toidupyramiid.users tu where tu.id=@id);
	SELECT 
		@tera=((sp.g1min + sp.g1max)/2), 
		@juur=((sp.g2min + sp.g2max)/2), 
		@piim=((sp.g3min + sp.g3max)/2), 
		@liha=((sp.g4min + sp.g4max)/2), 
		@rasv=((sp.g5min + sp.g5max)/2), 
		@magus=((sp.g6min + sp.g6max)/2) 
	FROM toidupyramiid.standardpyramiid sp
	WHERE mincal<@cal and maxcal >= @cal;
/*
	set @ctera=(select pg.unitcal from toidupyramiid.prodgroups where id=1);
	set @cjuur=(select pg.unitcal from toidupyramiid.prodgroups where id=2);
	set @cpiim=(select pg.unitcal from toidupyramiid.prodgroups where id=3);
	set @cliha=(select pg.unitcal from toidupyramiid.prodgroups where id=4);
	set @crasv=(select pg.unitcal from toidupyramiid.prodgroups where id=5);
	set @cmagus=(select pg.unitcal from toidupyramiid.prodgroups where id=6);
*/

	BEGIN
        INSERT @stPyramiid
        SELECT @cal, @tera, @juur, @piim, @liha, @rasv, @magus;
    END;
	RETURN;
END;

--select * from toidupyramiid.prodgroups;
--drop function toidupyramiid.calcstpyramiid;