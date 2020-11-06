CALL SYSRDL#CG.REMOTE_EXECUTE ('
BEGIN

    DROP TABLE city;

    DROP TABLE hotel;

END');

CALL SYSRDL#CG.REMOTE_EXECUTE ('
BEGIN

    CREATE TABLE city ( 
        zip VARCHAR(5) PRIMARY KEY,
        name VARCHAR(30) NOT NULL,
        state VARCHAR(2) NOT NULL
    );

    CREATE TABLE hotel (
        hno INTEGER PRIMARY KEY,
        name VARCHAR(50) NOT NULL,
        zip VARCHAR(5),
        address VARCHAR(40) NOT NULL
    );

    INSERT INTO city VALUES (''60601'', ''Chicago'', ''IL'');
    INSERT INTO city VALUES (''75243'', ''Dallas'', ''TX'');
    INSERT INTO city VALUES (''32018'', ''Daytona Beach'', ''FL'');
    INSERT INTO city VALUES (''48226'', ''Detroit'', ''MI'');
    INSERT INTO city VALUES (''90029'', ''Hollywood'', ''CA'');
    INSERT INTO city VALUES (''90804'', ''Long Beach'', ''CA'');
    INSERT INTO city VALUES (''11788'', ''Long Island'', ''NY'');
    INSERT INTO city VALUES (''90018'', ''Los Angeles'', ''CA'');
    INSERT INTO city VALUES (''70112'', ''New Orleans'', ''LA'');

    INSERT INTO hotel VALUES (10, ''Long Island'', ''11788'', ''1499 Grove Street'');
    INSERT INTO hotel VALUES (30, ''Lake Michigan'', ''60601'', ''354 Oak Terrace'');
    INSERT INTO hotel VALUES (100, ''Beachside'', ''32018'', ''1980 34th St.'');
    INSERT INTO hotel VALUES (110, ''Atlantic'', ''33441'', ''111 78th St.'');
    INSERT INTO hotel VALUES (120, ''Calypso'', ''90804'', ''35 Broadway'');
    INSERT INTO hotel VALUES (130, ''Evening Star'', ''90029'', ''13 Beechwood Place'');
    INSERT INTO hotel VALUES (140, ''Steamboat Louis Armstrong'', ''70112'', ''788 Main St.'');

END');
