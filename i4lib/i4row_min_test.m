function i4row_min_test ( )

%*****************************************************************************80
%
%% I4ROW_MIN_TEST tests I4ROW_MIN;
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    17 November 2014
%
%  Author:
%
%    John Burkardt
%
  m = 3;
  n = 4;

  fprintf ( 1, '\n' );
  fprintf ( 1, 'I4ROW_MIN_TEST\n' );
  fprintf ( 1, '  I4ROW_MIN computes row minimums;\n' );

  k = 0;
  for i = 1 : m
    for j = 1 : n
      k = k + 1;
      a(i,j) = k;
    end
  end

  i4mat_print ( m, n, a, '  The matrix:' );

  amin = i4row_min ( m, n, a );

  i4vec_print ( m, amin, '  Row minimums:' );

  return
end
