function [ x, w ] = rule10 ( n )

%*****************************************************************************80
%
%% RULE10 returns the rule of degree 10.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    01 July 2014
%
%  Author:
%
%    Original FORTRAN77 version by Hong Xiao, Zydrunas Gimbutas.
%    This MATLAB version by John Burkardt.
%
%  Reference:
%
%    Hong Xiao, Zydrunas Gimbutas,
%    A numerical algorithm for the construction of efficient quadrature
%    rules in two and higher dimensions,
%    Computers and Mathematics with Applications,
%    Volume 59, 2010, pages 663-676.
%
%  Parameters:
%
%    Input, integer N, the number of nodes.
%
%    Output, real X(2,N), the coordinates of the nodes.
%
%    Output, real W(N), the weights.
%
  xs = [ ...
   -0.6980761045495689E+00, ...
    0.9826392235408554E+00, ...
    0.6980761045495691E+00, ...
   -0.9826392235408554E+00, ...
    0.8257758359029634E+00, ...
    0.9394863828167371E+00, ...
   -0.8257758359029632E+00, ...
   -0.9394863828167371E+00, ...
    0.1885861387186400E+00, ...
    0.9535395282015321E+00, ...
   -0.1885861387186399E+00, ...
   -0.9535395282015321E+00, ...
   -0.7120019130753369E+00, ...
    0.5253202503645465E+00, ...
    0.7120019130753369E+00, ...
   -0.5253202503645465E+00, ...
   -0.3156234329152560E+00, ...
    0.8125205483048131E+00, ...
    0.3156234329152561E+00, ...
   -0.8125205483048131E+00, ...
   -0.4248472488486695E+00, ...
    0.4165807191202114E-01, ...
    0.4248472488486695E+00, ...
   -0.4165807191202109E-01 ];
  ys = [ ...
   -0.9826392235408554E+00, ...
   -0.6980761045495690E+00, ...
    0.9826392235408554E+00, ...
    0.6980761045495693E+00, ...
   -0.9394863828167371E+00, ...
    0.8257758359029633E+00, ...
    0.9394863828167371E+00, ...
   -0.8257758359029631E+00, ...
   -0.9535395282015321E+00, ...
    0.1885861387186400E+00, ...
    0.9535395282015321E+00, ...
   -0.1885861387186399E+00, ...
   -0.5253202503645465E+00, ...
   -0.7120019130753369E+00, ...
    0.5253202503645465E+00, ...
    0.7120019130753369E+00, ...
   -0.8125205483048131E+00, ...
   -0.3156234329152560E+00, ...
    0.8125205483048131E+00, ...
    0.3156234329152561E+00, ...
   -0.4165807191202117E-01, ...
   -0.4248472488486695E+00, ...
    0.4165807191202112E-01, ...
    0.4248472488486695E+00 ];
  ws = [ ...
    0.3395580740305119E-01, ...
    0.3395580740305119E-01, ...
    0.3395580740305119E-01, ...
    0.3395580740305119E-01, ...
    0.4671948489426219E-01, ...
    0.4671948489426219E-01, ...
    0.4671948489426219E-01, ...
    0.4671948489426219E-01, ...
    0.6886285066821875E-01, ...
    0.6886285066821875E-01, ...
    0.6886285066821875E-01, ...
    0.6886285066821875E-01, ...
    0.1595417182608940E+00, ...
    0.1595417182608940E+00, ...
    0.1595417182608940E+00, ...
    0.1595417182608940E+00, ...
    0.1497202089079447E+00, ...
    0.1497202089079447E+00, ...
    0.1497202089079447E+00, ...
    0.1497202089079447E+00, ...
    0.2483067110521768E+00, ...
    0.2483067110521768E+00, ...
    0.2483067110521768E+00, ...
    0.2483067110521768E+00 ];

  x(1,1:n) = xs(1:n);
  x(2,1:n) = ys(1:n);
  w(1:n) = ws(1:n);

  return
end