#place[class='country'][zoom>=3] {
  text-name: @name_arrr;
  text-face-name: 'Quintessential Regular';
  text-wrap-width: 100;
  text-wrap-before: true;
  text-fill: #842;
  text-size: 14;
  text-halo-fill:fadeout(@land,40);
  text-halo-radius:1.5;
  [zoom>=3][rank=1],
  [zoom>=4][rank=2],
  [zoom>=5][rank=3],
  [zoom>=6][rank>3] {
    text-size: 18;
  }
  [zoom>=4][rank=1],
  [zoom>=5][rank=2],
  [zoom>=6][rank=3],
  [zoom>=7][rank>3] {
    text-size: 24;
  }
}

#poi[zoom>=7][subclass!='aerodrome'][subclass!='railstation'] {
  [zoom<14][rank<=3],
  [zoom>=14][rank<=5],
  [zoom>=15][rank<=10],
  [zoom>=16][rank<=15],
  [zoom>=17][rank<=20] {
    text-name: '[name]';
    text-face-name: 'Gothic Ultra OT Regular';
    text-line-spacing:-5;
    text-fill: #431;
    text-size: 24;
    text-wrap-width: 100;
    text-wrap-before: true;
    text-halo-fill:fadeout(@land,40);
    text-halo-radius:1.5;
  }
}

#water_name {
  [zoom<=13],  // automatic area filtering @ low zooms
    [zoom>=14][area>500000],
    [zoom>=16][area>10000],
    [zoom>=17] {
    text-placement: line;
  	text-name: '[name]';
    text-face-name: 'Gothic Ultra OT Regular';
    text-line-spacing:-5;
    text-fill: #245;
    text-size: 24;
    text-wrap-width: 100;
    text-wrap-before: true;
  }
}

#place[class='city'][zoom<=14][rank<=6] {
  text-name: @name_arrr;
  text-face-name: 'Quintessential Regular';
  text-fill: #421;
  text-halo-fill: @land;
  text-halo-radius: 3;
  [zoom>=3] {
    text-size:10;
    [rank>=0][rank<=2] { text-size: 16; }
    [rank>=3][rank<=5] { text-size: 14; }
    [rank>=6] { text-size: 12; }
  }
  [zoom>=5] {
    text-size:12;
    [rank>=0][rank<=1] { text-size: 18; }
    [rank>=2][rank<=3] { text-size: 17; }
    [rank>=4] { text-size: 14; }
  }
  [zoom>=6] {
    text-size:14;
    [rank>=0][rank<=1] { text-size: 20; }
    [rank>=2][rank<=3] { text-size: 18; }
    [rank>=4] { text-size: 16; }
  }
  [zoom>=8] {
  	text-size: 16;
    [rank>=0][rank<=1] { text-size: 28; }
    [rank>=2][rank<=3] { text-size: 24; }
    [rank>=4] { text-size: 20; }
  }
  [zoom>=10] {
    text-size: 22;
    [rank>=0][rank<=1] { text-size: 32; }
    [rank>=2][rank<=3] { text-size: 28; }
    [rank>=4] { text-size: 26; }
  }
  [zoom>=12] {
    text-size: 28;
    [rank<=3] { text-size: 36; }
    [rank>=4] { text-size: 32; }
  }
  [zoom>=13] {
    text-size: 36;
  }
  [zoom>=14] {
    text-size: 40;
  }
}

#place[class='town'] {
  text-name: @name_arrr;
  text-face-name: 'Quintessential Regular';
  text-fill: #421;
  text-halo-fill: @land;
  text-halo-radius: 2;
  text-min-distance: 20;
  text-size: 16;
  [zoom=9] { text-size: 17; }
  [zoom=10] { text-size: 18; }
  [zoom=11] { text-size: 20; }
  [zoom=12] { text-size: 24; }
  [zoom>=13] { text-size: 28; }
}

#place[class='village'],
#place[class='suburb'] {
  text-name: @name_arrr;
  text-face-name: 'Quintessential Regular';
  text-fill: #532;
  text-halo-fill: @land;
  text-halo-radius: 2;
  text-min-distance: 40;
  text-size: 16;
  [zoom=11] { text-size: 17; }
  [zoom=12] { text-size: 18; }
  [zoom=13] { text-size: 20; }
  [zoom=14] { text-size: 24; }
  [zoom>=15] { text-size: 28; }
}

#place[class='hamlet'],
#place[class='neighbourhood'] {
  text-name: @name;
  text-face-name: 'Quintessential Regular';
  text-fill: #754;
  text-halo-fill: @land;
  text-halo-radius: 2;
  text-wrap-before: true;
  text-wrap-width: 80;
  text-min-distance: 40;
  text-size: 14;
  [zoom=13] { text-size: 16; }
  [zoom=14] { text-size: 18; }
  [zoom=15] { text-size: 20; }
  [zoom=16] { text-size: 24; }
  [zoom>=17] { text-size: 28; }
}

#transportation_name[zoom>=12][class='motorway'],
#transportation_name[zoom>=14][class=~'trunk|primary|secondary|tertiary'],
#transportation_name[zoom>=16] {
  text-name: '[name]';
  text-face-name: 'Gothic Ultra OT Regular';
  text-fill: #654;
  text-placement: line;
  text-avoid-edges: true;
  text-halo-fill: @land;
  text-halo-radius: 2;
  text-size: 18;
}