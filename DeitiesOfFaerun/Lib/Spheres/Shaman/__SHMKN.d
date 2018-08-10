
	BEGIN ~%MOD_PREFIX%SHMKN~
	IF	~True()~	THEN	BEGIN	0
		SAY	(AT tra_start)
		IF	~False()~	THEN	REPLY	(AT tra_quit)	DO	~~	EXIT
	END
