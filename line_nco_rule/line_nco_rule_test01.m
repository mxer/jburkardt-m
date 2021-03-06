function line_nco_rule_test01 ( )

%*****************************************************************************80
%
%% LINE_NCO_RULE_TEST01 computes and prints NCO rules.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license. 
%
%  Modified:
%
%    28 July 2014
%
%  Author:
%
%    John Burkardt
%
  a = -1.0;
  b = +1.0;

  fprintf ( 1, '\n' );
  fprintf ( 1, 'LINE_NCO_RULE_TEST01\n' );
  fprintf ( 1, '  LINE_NCO_RULE computes the Newton-Cotes Open rule\n' );
  fprintf ( 1, '  using N equally spaced points for an interval [A,B].\n' );

  for n = 1 : 12

    [ x, w ] = line_nco_rule ( n, a, b );
    fprintf ( 1, '\n' );
    fprintf ( 1, '  Newton-Cotes Open Rule #%d\n', n );
    fprintf ( 1, '   I       X(I)            W(I)\n' );
    fprintf ( 1, '\n' );
    for i = 1 : n
      fprintf ( 1, '  %2d  %14.6g  %14.6g\n', i, x(i), w(i) );
    end
    fprintf ( 1, '        Sum(|W)|) =  %14.6g\n', sum ( abs ( w(1:n) ) ) );

  end

  return
end
