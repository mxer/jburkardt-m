function asa183_test05 ( )

%*****************************************************************************80
%
%% ASA183_TEST05 tests R8_UNI.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    14 February 2003
%
%  Author:
%
%    John Burkardt
%
  n = 100000;

  fprintf ( 1, '\n' );
  fprintf ( 1, 'ASA183_TEST05\n' );
  fprintf ( 1, '  Examine the average and variance of a\n' );
  fprintf ( 1, '  sequence generated by R8_UNI.\n' );
%
%  Start with known seeds.
%
  s1 = 12345;
  s2 = 34567;

  fprintf ( 1, '\n' );
  fprintf ( 1, '  Now compute %d elements.\n', n );

  u_avg = 0.0;
  for i = 1 : n
    [ u(i), s1, s2 ] = r8_uni ( s1, s2 );
    u_avg = u_avg + u(i);
  end

  u_avg = u_avg / n;

  u_var = 0.0;
  for i = 1 : n
    u_var = u_var + ( u(i) - u_avg ) * ( u(i) - u_avg );
  end

  u_var = u_var / ( n - 1 );

  fprintf ( 1, '\n' );
  fprintf ( 1, '  Average value = %f\n', u_avg );
  fprintf ( 1, '  Expecting       %f\n', 0.5 );

  fprintf ( 1, '\n' );
  fprintf ( 1, '  Variance =      %f\n', u_var );
  fprintf ( 1, '  Expecting       %f\n', 1.0 / 12.0 );

  return
end