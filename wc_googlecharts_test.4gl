MAIN
    OPTIONS FIELD ORDER FORM
    OPTIONS INPUT WRAP
    CLOSE WINDOW SCREEN
    CALL ui.Interface.loadStyles("wc_googlecharts_test")
    OPEN WINDOW googlechart_test WITH FORM "wc_googlecharts_test" ATTRIBUTES(TEXT="GoogleCharts Test")
    DISPLAY FGL_GETENV("FGLIMAGEPATH")
    MENU ""
        BEFORE MENU
            #CALL googlecharts_pie_test()
            
        ON ACTION gauge ATTRIBUTES(TEXT="Gauge")
            CALL googlecharts_gauge_test()

        ON ACTION pie ATTRIBUTES(TEXT="Pie")
            CALL googlecharts_pie_test()

        ON ACTION line ATTRIBUTES(TEXT="Line")
            CALL FGL_WINMESSAGE("Info","Not implemented yet","info")
            #CALL googlecharts_line_test()

        ON ACTION bar ATTRIBUTES(TEXT="Bar")
            CALL FGL_WINMESSAGE("Info","Not implemented yet","info")
            #CALL googlecharts_bar_test()

        ON ACTION close
            EXIT MENU
    END MENU
END MAIN