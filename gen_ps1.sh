cat ps1-template | perl -e  '@colors = qw(GREEN RED YELLOW BLUE VIOLET LIGHT_BLUE ORANGE PINK WHITE GRAY); $CMAP = {}; for (1..7) { $CMAP->{"<C$_>"} = $colors[rand @colors]; } for (<>) { print $_ = s/(<C\d>)/$CMAP->{$1}/rge; }' > ~/.ps1
