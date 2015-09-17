

import de.fhpotsdam.unfolding.*;
import de.fhpotsdam.unfolding.geo.*;
import de.fhpotsdam.unfolding.utils.*;  
import de.fhpotsdam.unfolding.providers.Microsoft;
// ... other imports ...
 
UnfoldingMap map;
 
void setup() {
  size(800, 600, P2D);
  map = new UnfoldingMap(this, new Microsoft.AerialProvider());
  map.zoomAndPanTo(new Location(47.608784, -122.29833), 12);
  MapUtils.createDefaultEventDispatcher(this, map);
}
 
void draw() {
  map.draw();
  Location location = map.getLocation(mouseX, mouseY);
    fill(250, 0, 0);
    textSize(12);
    text(location.getLat() + ", " + location.getLon(), mouseX, mouseY);
}
