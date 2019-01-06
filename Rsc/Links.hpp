#define CT_HTML 9
#define ST_CENTER 2

class RscHTMLText {
  access = 0;
  idc = -1;
  type = CT_HTML;
  style = ST_CENTER; 
  text = "";
  font = "PuristaMedium";
  x = 0;
  y = 0;
  h = 0;
  w = 0;

  colorBackground[] = {1,1,1,0.0};
  colorBold[] = {1,1,1,1};
  colorLink[] = {1,1,1,1};
  colorLinkActive[] = {1,1,1,1};
  colorPicture[] = {1,1,1,1};
  colorPictureBorder[] = {1,1,1,1};
  colorPictureLink[] = {1,1,1,1};
  colorPictureSelected[] = {1,1,1,1};
  colorText[] = {1,1,1,1};

  prevPage = "\ca\ui\data\arrow_left_ca.paa";
  nextPage = "\ca\ui\data\arrow_right_ca.paa";

  class H1 {
    font = "PuristaMedium";
    fontBold = "PuristaMedium";
    sizeEx = 0.02474;
    align = "center";
  };

  class H2 {
    font = "PuristaMedium";
    fontBold = "PuristaMedium";
    sizeEx = 0.0286458;
    align = "center";
  };

  class H3 {
    font = "PuristaMedium";
    fontBold = "PuristaMedium";
    sizeEx = 0.0286458;
    align = "center";
  };

  class H4 {
    font = "PuristaMedium";
    fontBold = "PuristaMedium";
    sizeEx = 0.0208333;
    align = "center";
  };

  class H5 {
    font = "PuristaMedium";
    fontBold = "PuristaMedium";
    sizeEx = 0.0208333;
    align = "center";
  };

  class H6 {
    font = "PuristaMedium";
    fontBold = "PuristaMedium";
    sizeEx = 0.0208333;
    align = "center";
  };

  class P {
    font = "PuristaMedium";
    fontBold = "PuristaMedium";
    sizeEx = 0.0208333;
    align = "center";
  };

  class A {
    font = "PuristaMedium";
    fontBold = "PuristaMedium";
    sizeEx = 0.0208333;
    color = "#000000";
    align = "center";
    valign = "middle";
    shadow = false;
    shadowColor = "#ff0000";
    size = "1";
  };
};

class RscHTMLTextServer : RscHTMLText {
  filename = "Rsc\serverlink.html";
};

class RscHTMLTextTeamSpeak : RscHTMLText {
  filename = "Rsc\tslink.html";
};

