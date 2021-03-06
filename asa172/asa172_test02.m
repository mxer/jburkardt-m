function asa172_test02 ( )

%*****************************************************************************80
%
%% TEST02 compares indices computed by a triple loop.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    26 July 2008
%
%  Author:
%
%    John Burkardt
%
  kdim = 3;
  nr(1:3) = [ 3, 2, 4 ];

  fprintf ( 1, '\n' );
  fprintf ( 1, 'TEST02:\n' );
  fprintf ( 1, '  SIMDO can convert between compressed and\n' );
  fprintf ( 1, '  vector indices representing a nested loop.\n' );
  fprintf ( 1, '\n' );
  fprintf ( 1, '  Here, we set QFOR = TRUE, meaning we DO\n' );
  fprintf ( 1, '  want to convert from the FORTRAN\n' );
  fprintf ( 1, '  ordering to lexical convention.\n' );
  fprintf ( 1, '\n' );
  fprintf ( 1, '  Here, we actually carry out a triple loop\n' );
  fprintf ( 1, '  list the indices, and then compare.\n' );

  qfor = 1;

  iprod(1) = nr(1);
  for i = 2 : kdim
    iprod(i) = iprod(i-1) * nr(i);
  end

  n = iprod(kdim);
%
%  Carry out the nested loops, and use JSUB to count each iteration.
%  In the inmost loop, print JSUB and the corresponding (I1,I2,I3) vector.
%
  jsub = 0;

  fprintf ( 1, '\n' );
  fprintf ( 1, '  #1: Generate JSUB by counting as we do the loops.\n' );
  fprintf ( 1, '\n' );
  fprintf ( 1, '  DO I3 = 1, N3\n' );
  fprintf ( 1, '    DO I2 = 1, N2\n' );
  fprintf ( 1, '      DO I1 = 1, N1\n' );
  fprintf ( 1, '\n' );
  fprintf ( 1, '      JSUB            I1        I2        I3\n' );
  fprintf ( 1, '\n' );
  for i3 = 1 : nr(3)
    ivec(3) = i3;
    for i2 = 1 : nr(2)
      ivec(2) = i2;
      for i1 = 1 : nr(1)
        ivec(1) = i1;
        jsub = jsub + 1;
        fprintf ( 1, '  %8d      %8d  %8d  %8d\n', jsub, i1, i2, i3 );
      end
    end
  end
%
%  Reverse the order, so that the loop indices are generated in lexical order.
%
  qind = 1;

  fprintf ( 1, '\n' );
  fprintf ( 1, '  #2: Setting QFOR false means loop indices\n' );
  fprintf ( 1, '  are generated in lexical order.\n' );
  fprintf ( 1, '      QIND = TRUE J -> I(J)\n' );
  fprintf ( 1, '      QFOR = TRUE\n' );
  fprintf ( 1, '\n' );
  fprintf ( 1, '      JSUB            I1        I2        I3\n' );
  fprintf ( 1, '\n' );

  for j = 1 : n
    jsub = j;
    ivec = simdo ( qind, qfor, iprod, kdim, jsub );
    fprintf ( 1, '  %8d      %8d  %8d  %8d\n', jsub, ivec(1), ivec(2), ivec(3) );
  end
%
%  Carry out the nested loops, and DO NOT compute JSUB.
%  Have SIMDO determine JSUB.
%
  qind = 0;

  fprintf ( 1, '\n' );
  fprintf ( 1, '  #3: For any set of loop indices, retrieve JSUB\n' );
  fprintf ( 1, '      QIND = FALSE I(J) -> J\n' );
  fprintf ( 1, '      QFOR = TRUE\n' );
  fprintf ( 1, '\n' );
  fprintf ( 1, '      JSUB            I1        I2        I3\n' );
  fprintf ( 1, '\n' );
  for i3 = 1 : nr(3)
    ivec(3) = i3;
    for i2 = 1 : nr(2)
      ivec(2) = i2;
      for i1 = 1 : nr(1)
        ivec(1) = i1;
        jsub = simdo ( qind, qfor, iprod, kdim, ivec );
        fprintf ( 1, '  %8d      %8d  %8d  %8d\n', jsub, i1, i2, i3 );
      end
    end
  end

  return
end
