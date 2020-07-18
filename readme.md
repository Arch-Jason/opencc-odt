# S_T_convert

## What's that?
A script can convert odt files between traditional Chinese and simplified Chinese.

## How it works?
In fact, the odt file is a compressed package, which contains many xml files. content.xml is the most important one, the text you write is contained in it. This script uses this technique to first decompress the odt file, then use opencc to convert content.xml, and finally compress it into a new odt file.

## How to use it?
To simple! Just run it with --help option:
```shell
$ ./S_T_convert.sh --help

    This script can convert odt files between Traditional Chinese and Simplified Chinese.
        Options:
            -s2t Simplified to Traditional
            -t2s Traditional to Simplified
        Example:
            bash S_T_convert.sh -s2t Simplified-Chinese.odt test.odt
            That will convert a Simplified Chinese odt file to a Traditional Chinese odt file and save with file name "test.odt"
```

***

## 這是什麼？
這是一個腳本，可以將繁體中文的odt文件轉換成簡體的，將簡體的odt文件轉換成繁體的。

## 它是怎麼工作的？
其實上，odt文件是一個壓縮包，裏面有着許多xml文件。content.xml是最重要的一個，你寫的文字就包含在這裏面。這個腳本正是利用這個技巧，先解壓這個odt文件，然後用opencc轉換content.xml，最後再壓縮成新的odt文件。

## 怎麼使用？
太簡單了，用--help參數來跑這個腳本看看：
```shell
$ ./S_T_convert.sh --help

    This script can convert odt files between Traditional Chinese and Simplified Chinese.
        Options:
            -s2t Simplified to Traditional
            -t2s Traditional to Simplified
        Example:
            bash S_T_convert.sh -s2t Simplified-Chinese.odt test.odt
            That will convert a Simplified Chinese odt file to a Traditional Chinese odt file and save with file name "test.odt"
```

## PS
<p style="font-size: 150%; color: red;">我非常的菜，請別嘲笑我</p>
這是我第一次寫腳本，寫這個腳本的原因是有實際情況的：這個暑假，我腦子抽了，用繁體字敲了生物作業，我在北京上學，這是絕對不行的，在某技術交流羣一頓亂吹之後，我知道了opencc，但opencc只能喫文本文件，無奈之下，我調用了人工API（羣友的說法），我媽媽敲了好長時間，終於把它轉換成了繁體中文。此後，我研究了odt文件的結構，知道了它是一個壓縮包的事情，再進行進一步的研究，我知道了content.xml這回事，於是便有了寫這個腳本的想法，但是我非常菜，光是解壓和重新壓縮就遇到了不少搞笑問題，更可見寫這個腳本是多麼不易（  。最後在羣大佬的幫助下，我成功了，即使這個腳本裏面的內容十分垃圾，我還是把它放到了GitHub上，分享我的成果。(｡･ω･)ﾉ

本腳本沒有任何開源協議，可以隨便玩。也歡迎大佬們給我改代碼，我會膜拜你們的。
