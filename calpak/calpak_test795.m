function calpak_test795 ( )

%*****************************************************************************80
%
%% CALPAK_TEST795 tests YMDF_TO_WEEKDAY_ISLAMIC_A.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license. 
%
%  Modified:
%
%    23 April 2013
%
%  Author:
%
%    John Burkardt
%
  fprintf ( 1, '\n' );
  fprintf ( 1, 'CALPAK_TEST795\n' );
  fprintf ( 1, '  For the Islamic-A calendar:\n' );
  fprintf ( 1, '  YMDF_TO_WEEKDAY_ISLAMIC_A\n' );
  fprintf ( 1, '  returns the day of the week.\n' );
  fprintf ( 1, '\n' );
  fprintf ( 1, '  JED   YMDF           Day of the week\n' );
  fprintf ( 1, '\n' );

  jed_epoch = epoch_to_jed_islamic_a ( );

  i = 0;

  while ( 1 )

    i = i + 1;
    jed1 = jed_test ( i );

    if ( jed1 < 0 )
      break
    end

    if ( jed_epoch <= jed1 )

      jed2 = jed_to_next_noon ( jed1 );

      [ y1, m1, d1, f1 ] = jed_to_ymdf_islamic_a ( jed2 );
      s1 = ymdf_to_s_islamic ( y1, m1, d1, f1 );

      w2 = ymdf_to_weekday_islamic_a ( y1, m1, d1, f1 );
      s2 = weekday_to_name_islamic ( w2 );

      fprintf ( 1, '  %11.2f  %20s  %d  %20s\n', jed2, s1, w2, s2 );

    end

  end

  return
end
