using Toybox.WatchUi;
using Toybox.Graphics;
using Toybox.System;
using Toybox.Lang;

// BLUE     #39C4E6     3785958   
// AQUA     #3BE6A1     3925665
// GREEN    #84E654     8709716
// YELLOW   #E0C94A     14731594

// GOLD     #E6A837     15116343
// ORANGE   #E67D3C     15105340
// PINK     #E66AB4     15100596
// RED      #E65F56     15097686

// PURPLE   #A558DF     10836191

var hourColorLookup as Lang.Dictionary<Lang.Number, Lang.Number> = {
    0 => 10836191, // PURPLE
    1 => 3785958, // BLUE
    2 => 3925665, // AQUA
    3 => 8709716, // GREEN
    4 => 3785958, // BLUE
    5 => 3925665, // AQUA
    6 => 8709716, // GREEN
    7 => 14731594, // YELLOW
    8 => 3925665, // AQUA
    9 => 8709716, // GREEN
    10 => 14731594, // YELLOW
    11 => 15116343, // GOLD
    12 => 8709716, // GREEN
    13 => 14731594, // YELLOW
    14 => 15116343, // GOLD
    15 => 15105340, // ORANGE
    16 => 14731594, // YELLOW
    17 => 15116343, // GOLD
    18 => 15105340, // ORANGE
    19 => 15100596, // PINK
    20 => 15116343, // GOLD
    21 => 15105340, // ORANGE
    22 => 15100596, // PINK
    23 => 15097686, // RED
    24 => 10836191, // PURPLE
};

var minuteRowLookup as Lang.Dictionary<Lang.Number, Lang.Array<Lang.String>> = {
    0 => [
        "",
        "{{hour}}",
        ""
    ],
    1 => [
        "ABOUT",
        "{{hour}}",
        ""
    ],
    2 => [
        "{{hour}}",
        "OH TWO",
        ""
    ],
    3 => [
        "{{hour}}",
        "OH THREE",
        ""
    ],
    4 => [
        "{{hour}}",
        "OH FOUR",
        ""
    ],
    5 => [
        "{{hour}}",
        "OH FIVE",
        ""
    ],
    6 => [
        "{{hour}}",
        "OH SIX",
        ""
    ],
    7 => [
        "{{hour}}",
        "OH SEVEN",
        ""
    ],
    8 => [
        "{{hour}}",
        "OH EIGHT",
        ""
    ],
    9 => [
        "ALMOST",
        "TEN PAST",
        "{{hour}}",
    ],
    10 => [
        "TEN PAST",
        "{{hour}}",
        ""
    ],
    11 => [
        "ABOUT",
        "TEN PAST",
        "{{hour}}"
    ],
    12 => [
        "{{hour}}",
        "TWELVE",
        ""
    ],
    13 => [
        "{{hour}}",
        "THIRTEEN",
        ""
    ],
    14 => [
        "ALMOST A",
        "QUARTER PAST",
        "{{hour}}"
    ],
    15 => [
        "A QUARTER",
        "PAST",
        "{{hour}}",
    ],
    16 => [
        "ABOUT A",
        "QUARTER PAST",
        "{{hour}}"
    ],
    17 => [
        "{{hour}}",
        "SEVENTEEN",
        "",
    ],
    18 => [
        "{{hour}}",
        "EIGHTEEN",
        ""
    ],
    19 => [
        "ALMOST",
        "TWENTY PAST",
        "{{hour}}"
    ],
    20 => [
        "TWENTY PAST",
        "{{hour}}",
        ""
    ],
    21 => [
        "ABOUT",
        "TWENTY PAST",
        "{{hour}}"
    ],
    22 => [
        "{{hour}}",
        "TWENTY",
        "TWO",
    ],
    23 => [
        "{{hour}}",
        "TWENTY",
        "THREE",
    ],
    24 => [
        "{{hour}}",
        "TWENTY",
        "FOUR",
    ],
    25 => [
        "{{hour}}",
        "TWENTY",
        "FIVE",
    ],
    26 => [
        "{{hour}}",
        "TWENTY",
        "SIX",
    ],
    27 => [
        "{{hour}}",
        "TWENTY",
        "SEVEN",
    ],
    28 => [
        "{{hour}}",
        "TWENTY",
        "EIGHT",
    ],
    29 => [
        "ALMOST",
        "HALF PAST",
        "{{hour}}",
        "",
    ],
    30 => [
        "HALF PAST",
        "{{hour}}",
        "",
    ],
    31 => [
        "ABOUT",
        "HALF PAST",
        "{{hour}}",
        "",
    ],
    32 => [
        "{{hour}}",
        "THIRTY",
        "TWO",
    ],
    33 => [
        "{{hour}}",
        "THIRTY",
        "THREE",
    ],
    34 => [
        "{{hour}}",
        "THIRTY",
        "FOUR"
    ],
    35 => [
        "{{hour}}",
        "THIRTY",
        "FIVE"
    ],
    36 => [
        "{{hour}}",
        "THIRTY",
        "SIX"
    ],
    37 => [
        "{{hour}}",
        "THIRTY",
        "SEVEN"
    ],
    38 => [
        "{{hour}}",
        "THIRTY",
        "EIGHT"
    ],
    39 => [
        "ALMOST",
        "TWENTY TO",
        "{{hourNext}}",
    ],
    40 => [
        "TWENTY TO",
        "{{hourNext}}",
        "",
    ],
    41 => [
        "ABOUT",
        "TWENTY TO",
        "{{hourNext}}",
        "",
    ],
    42 => [
        "{{hour}}",
        "FORTY",
        "TWO",
    ],
    43 => [
        "{{hour}}",
        "FORTY",
        "THREE",
    ],
    44 => [
        "ALMOST",
        "A QUARTER TO",
        "{{hourNext}}",
    ],
    45 => [
        "A QUARTER TO",
        "{{hourNext}}",
        "",
    ],
    46 => [
        "ABOUT",
        "A QUARTER TO",
        "{{hourNext}}",
    ],
    47 => [
        "{{hour}}",
        "FORTY",
        "SEVEN",
    ],
    48 => [
        "{{hour}}",
        "FORTY",
        "EIGHT",
    ],
    49 => [
        "ALMOST",
        "TEN TO",
        "{{hourNext}}",
    ],
    50 => [
        "TEN TO",
        "{{hourNext}}",
        "",
    ],
    51 => [
        "ABOUT",
        "TEN TO",
        "{{hourNext}}",
    ],
    52 => [
        "{{hour}}",
        "FIFTY",
        "TWO",
    ],
    53 => [
        "{{hour}}",
        "FIFTY",
        "THREE",
    ],
    54 => [
        "{{hour}}",
        "FIFTY",
        "FOUR",
    ],
    55 => [
        "{{hour}}",
        "FIFTY",
        "FIVE",
    ],
    56 => [
        "{{hour}}",
        "FIFTY",
        "SIX",
    ],
    57 => [
        "{{hour}}",
        "FIFTY",
        "SEVEN",
    ],
    58 => [
        "{{hour}}",
        "FIFTY",
        "EIGHT",
    ],
    59 => [
        "ALMOST",
        "{{hourNext}}",
        "",
    ],
};

class TextWatchView extends WatchUi.WatchFace {

    hidden var row1;
    hidden var row2;
    hidden var row3;

    function initialize() {
        View.initialize();
    }

    function onShow() {

        var font = WatchUi.loadResource(Rez.Fonts.watch_face_font);

        row1 = new WatchUi.Text({
            :font=>font,
            :locX =>50,
            :locY=>145
        });
        row2 = new WatchUi.Text({
            :font=>font,
            :locX =>50,
            :locY=>200
        });
        row3 = new WatchUi.Text({
            :font=>font,
            :locX =>50,
            :locY=>255
        });
        updateTextFields();
    }

    hidden function resolveHourText(hour) {
        switch (hour) {
            case 0:
                return "TWELVE";
            case 1:
                return "ONE";
            case 2:
                return "TWO";
            case 3:
                return "THREE";
            case 4:
                return "FOUR";
            case 5:
                return "FIVE";
            case 6:
                return "SIX";
            case 7:
                return "SEVEN";
            case 8:
                return "EIGHT";
            case 9:
                return "NINE";
            case 10:
                return "TEN";
            case 11:
                return "ELEVEN";
            case 12:
                return "TWELVE";
            case 13:
                return "ONE";
            case 14:
                return "TWO";
            case 15:
                return "THREE";
            case 16:
                return "FOUR";
            case 17:
                return "FIVE";
            case 18:
                return "SIX";
            case 19:
                return "SEVEN";
            case 20:
                return "EIGHT";
            case 21:
                return "NINE";
            case 22:
                return "TEN";
            case 23:
                return "ELEVEN";
            default:
                return "TWELVE";
        }
    }

    function setRows(row1Val, row2Val, row3Val) {
        row1.setText(row1Val);
        row2.setText(row2Val);
        row3.setText(row3Val);
    }

    function updateTextFields() {
        var now = System.getClockTime();
        var hour = now.hour;
        var rows = minuteRowLookup[now.min];

        if (rows[0].find("{{hour}}") != null) {
            row1.setText(resolveHourText(hour));
            row1.setColor(hourColorLookup[hour]);
        } else if (rows[0].find("{{hourNext}}") != null) {
            row1.setText(resolveHourText(hour + 1));
            row1.setColor(hourColorLookup[hour + 1]);
        } else {
            row1.setText(rows[0]);
            row1.setColor(Graphics.COLOR_DK_GRAY);
        }

        if (rows[1].find("{{hour}}") != null) {
            row2.setText(resolveHourText(hour));
            row2.setColor(hourColorLookup[hour]);
        } else if (rows[1].find("{{hourNext}}") != null) {
            row2.setText(resolveHourText(hour + 1));
            row2.setColor(hourColorLookup[hour + 1]);
        } else {
            row2.setText(rows[1]);
            row2.setColor(Graphics.COLOR_DK_GRAY);
        }

        if (rows[2].find("{{hour}}") != null) {
            row3.setText(resolveHourText(hour));
            row3.setColor(hourColorLookup[hour]);
        } else if (rows[2].find("{{hourNext}}") != null) {
            row3.setText(resolveHourText(hour + 1));
            row3.setColor(hourColorLookup[hour + 1]);
        } else {
            row3.setText(rows[2]);
            row3.setColor(Graphics.COLOR_DK_GRAY);
        }
    }

    function onEnterSleep() {

    }

    function onExitSleep() {

    }


    function onUpdate(dc) {
        dc.setColor(Graphics.COLOR_WHITE, Graphics.COLOR_BLACK);
        dc.clear();
        updateTextFields();
        row1.draw(dc);
        row2.draw(dc);
        row3.draw(dc);
    }
}
