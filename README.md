project  
├─ans.txt   
└─src   
        ├─ traffic_light.v  
        └─traffic_light_tb.v  

說明

紅綠燈每27個cycles一個循環，綠燈維持12個cycles，切換成黃燈維持5個cycles，再切換成紅燈維持10個cycles，電路為clock正緣觸發。
輸入訊號： a. pass：1bit訊號，當pass為1時，若當前狀態非綠燈，強制切換成綠燈第一個cycle，若原本為綠燈則不改變燈號和cycle。當pass為0則沒有任何動作。 b. rst：1bit訊號，非同步正緣時觸發，將燈號狀態設成紅燈第1個cycle。 c. clk：1bit clock訊號。
輸出訊號： a. R：1bit訊號，代表紅燈的輸出訊號。 b. G：1bit訊號，代表綠燈的輸出訊號。 c. Y：1bit訊號，代表黃燈的輸出訊號。 三個輸出
