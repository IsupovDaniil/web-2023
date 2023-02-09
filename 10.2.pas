PROGRAM Legenda(INPUT, OUTPUT);
VAR
  Ch, Flag: CHAR;
BEGIN
  Flag := 'N';
  WHILE (NOT EOLN) AND (Flag <> 'E')
  DO
    BEGIN
      READ(Ch);
      IF Flag = 'K'
      THEN
        BEGIN
          IF Ch = ';'
          THEN
            BEGIN
              Flag := ';';
              WRITELN;
              WRITE('  ')
            END
          ELSE
            IF Ch <> ' '
            THEN
              Flag := 'N'
        END;
      IF (Ch = 'B') AND (Flag = 'N') 
      THEN 
        Flag := 'B';
      IF (Ch = 'E') AND (Flag = 'N')
      THEN
        Flag := 'E';
      IF (Ch = 'R') AND (Flag = 'N')
      THEN
        BEGIN
          Flag := 'R';
          WRITELN;
          WRITE('  ')
        END;
      IF (Ch = 'W') AND (Flag = 'N')
      THEN
        BEGIN
          Flag := 'W';
          WRITELN;
          WRITE('  ')
        END;
      IF (Ch = 'L') AND (Flag = 'N')
      THEN
        Flag := 'L';
      IF (Ch = '(') AND (Flag = 'N')
      THEN
        Flag := '(';
      IF (Ch = ';') AND (Flag = 'N')
      THEN
        Flag := ';';       
      IF Flag = 'B'
      THEN
        BEGIN
          WRITE(Ch);
          IF Ch = 'N'
          THEN
            Flag := 'K'
        END;  
      IF Flag = 'R'
      THEN
        BEGIN
          WRITE(Ch);
            IF Ch = 'D'
            THEN
              Flag := 'N'
        END;
      IF Flag = 'W'
      THEN
        BEGIN
          WRITE(Ch);
            IF Ch = 'E'
            THEN
              Flag := 'N';
            IF Ch = ';'
            THEN
              BEGIN
                WRITELN;
                WRITE('  ')
              END
        END;
      IF Flag = 'L'
      THEN
        BEGIN
          WRITE(Ch);
          IF Ch = 'N'
          THEN
            Flag := 'N'
        END;
      IF (Flag = '(') AND (Ch <> ' ')
      THEN
        BEGIN
          WRITE(Ch);
          IF Ch = ','
          THEN
            WRITE(' ');
          IF Ch = ')'
          THEN
            Flag := 'N'
        END;
      IF Flag = ';'
      THEN
        BEGIN
          WRITE(Ch);
          Flag := 'N'           
        END;             
      IF Flag = 'E'
      THEN
        BEGIN
          WRITELN;
          WRITE('END.')
        END;
    END     
END.
