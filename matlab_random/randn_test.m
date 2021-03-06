function randn_test ( )

%*****************************************************************************80
%
%% RANDN_TEST shows how random numbers are generated in MATLAB.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license. 
%
%  Modified:
%
%    11 June 2012
%
%  Author:
%
%    John Burkardt
%
  timestamp ( );
  fprintf ( 1, '\n' );
  fprintf ( 1, 'RANDN_TEST:\n' );
  fprintf ( 1, '  MATLAB version\n' );
  fprintf ( 1, '  Test the MATLAB RAND function.\n' );

  randn_test01 ( );

  seed = 123456789;
  randn_test02 ( seed );

  seed = 987654321;
  randn_test02 ( seed );

  seed = 123456789;
  randn_test02 ( seed );

  randn_test03 ( );
%
%  Terminate.
%
  fprintf ( 1, '\n' );
  fprintf ( 1, 'RANDN_TEST:\n' );
  fprintf ( 1, '  Normal end of execution.\n' );

  fprintf ( 1, '\n' );
  timestamp ( );

  return
end
function randn_test01 ( )

%*****************************************************************************80
%
%% RANDN_TEST01 simply calls the randn() generator a few times.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license. 
%
%  Modified:
%
%    11 June 2012
%
%  Author:
%
%    John Burkardt
%
  fprintf ( 1, '\n' );
  fprintf ( 1, 'RANDN_TEST01:\n' );
  fprintf ( 1, '  In MATLAB, normal random numbers are generated by calling RANDN:\n' );
  fprintf ( 1, '\n' );
  fprintf ( 1, '  A = randn ( )      a random scalar value.\n' );
  fprintf ( 1, '  B = randn ( 5, 1 ) a random column vector of 5 entries.\n' );
  fprintf ( 1, '  C = randn ( 1, 5 ) a random row vector of 5 entries.\n' );
  fprintf ( 1, '  D = randn ( 3, 4 ) a 3 by 4 random matrix.\n' );
  fprintf ( 1, '  E = randn ( 5 )    a 5 by 5 random matrix.\n' );

  a = randn ( )
  b = randn ( 5, 1 )
  c = randn ( 1, 5 )
  d = randn ( 3, 4 )
  e = randn ( 5 )

  return
end
function randn_test02 ( seed )

%*****************************************************************************80
%
%% RANDN_TEST02 sets the seed before calling RANDN.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license. 
%
%  Modified:
%
%    11 June 2012
%
%  Author:
%
%    John Burkardt
%
  fprintf ( 1, '\n' );
  fprintf ( 1, 'RANDN_TEST02:\n' );
  fprintf ( 1, '  By setting the random number seed, you can control\n' );
  fprintf ( 1, '  how the random number sequence begins.\n' );
  fprintf ( 1, '\n' );
  fprintf ( 1, '  The command "rng ( 123456789 )" sets the seed to 123456789.\n' );

  seed = 123456789;

  rng ( seed );
  fprintf ( 1, '\n' );
  fprintf ( 1, '  Seed has been set to %d\n', seed );
  fprintf ( 1, '\n' );
  fprintf ( 1, '  Now generate 5 random values.\n' );

  for i = 1 : 5
    a = randn ( );
    fprintf ( 1, '  RANDN() = %g\n', a );
  end

  rng ( seed );

  fprintf ( 1, '\n' );
  fprintf ( 1, '  Seed has been reset to %d\n', seed );
  fprintf ( 1, '\n' );
  fprintf ( 1, '  Now generate 5 more random values.\n' );

  for i = 1 : 5
    a = randn ( );
    fprintf ( 1, '  RANDN() = %g\n', a );
  end

  return
end
function randn_test03 ( )

%*****************************************************************************80
%
%% RANDN_TEST03 generate a lot of random values.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license. 
%
%  Modified:
%
%    11 June 2012
%
%  Author:
%
%    John Burkardt
%
  fprintf ( 1, '\n' );
  fprintf ( 1, 'RANDN_TEST03:\n' );
  fprintf ( 1, '  Compute a lot of random values.\n' );
  fprintf ( 1, '\n' );
  fprintf ( 1, '  The average should be 0.0\n' );
  fprintf ( 1, '  The variance should be 1.\n' );
  fprintf ( 1, '\n' );
  fprintf ( 1, '         N    Ave        Var\n' );
  fprintf ( 1, '\n' );

  n = 1;

  for n_log = 0 : 7
    x = randn ( n, 1 );
    x_ave = sum ( x(1:n,1) ) / n;
    x_var = var ( x(1:n,1) );
    fprintf ( 1, '  %8d  %f %f\n', n, x_ave, x_var );
    n = n * 10;
  end

  return
end
function timestamp ( )

%*****************************************************************************80
%
%% TIMESTAMP prints the current YMDHMS date as a timestamp.
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
  t = now;
  c = datevec ( t );
  s = datestr ( c, 0 );
  fprintf ( 1, '%s\n', s );

  return
end
