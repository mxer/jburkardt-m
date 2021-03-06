function [ y, next ] = p06_equil ( neqn, next )

%*****************************************************************************80
%
%% P06_EQUIL returns equilibrium solutions of problem p06.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    19 February 2013
%
%  Author:
%
%    John Burkardt
%
%  Parameters:
%
%    Input, integer NEQN, the number of equations.
%
%    Input, integer NEXT, the index of the previous
%    equilibrium, which should be 0 on first call.
%
%    Output, real Y(NEQN), the "next" equilibrium solution, if any.
%
%    Output, integer NEXT, the index of the current equilibrium, 
%    or 0 if there are no more.
%
  if ( next == 0 )
    next = 1;
    y(1:neqn,1) = [ 0.0; 0.0 ];
  elseif ( next == 1 )
    next = 2;
    y(1:neqn,1) = [ 1.0; 1.0 ];
  else
    next = 0;
    y = [];
  end

  return
end

