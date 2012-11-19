/*

title:      12025 Steak Bijari - LED Waterfall
author:     DNKUPFER 2012-11-19

email:      daniel@steakstudio.com
site:       http://www.steakstudio.com

Copyright:  Steak Studio Ltd 2012

*/

int mousex, mousey;

void interaction()
{
  fill( 255 );
  ellipse( mousex, mousey, fingerWidth, fingerWidth );
  fill( appColour );
}

void mouseMoved()
{
  mousex = mouseX;
  mousey = mouseY;
}

void keyPressed()
{
  switch( key )
  {
    case 'f' :
      break;
    case 'i' :
      break;
    default :
      int scene = keyCode - 48;
      animation = ( scene >= 1 && scene <= 9 ) ? scene : 0;
      
      switch ( animation )
      {
        case 1 :
          break;
        case 0 :
        default :
          break;
      }
      break;
  }
}
