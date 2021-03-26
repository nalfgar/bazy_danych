CREATE TABLE ew_text(
	uid BIGINT,
	id BIGINT,
	id_warstwy INT8,
	stan_zmiany INT8,
	operat INT8,
	operat_delete INT8,
	user_create INT8,
	create_ts TIMESTAMP,
	user_modify INT8,
	modify_ts TIMESTAMP,
	user_delete INT8,
	delete_ts TIMESTAMP,
	typ SMALLINT,
	text VARCHAR(128),
	pos_x FLOAT8,
	pos_y FLOAT8,
	pos_z FLOAT,
	h FLOAT,
	kat FLOAT,
	font SMALLINT,
	justyfikacja SMALLINT,
	odn_x FLOAT,
	odn_y FLOAT,
	b_key INT8,
	b_size_x FLOAT,
	b_size_y FLOAT,
	geom geometry(Point, 2178)
);

CREATE INDEX ew_text_geom_idx
ON public.ew_text
USING gist (geom);
