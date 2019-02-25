# Araiwa

ตัวอย่างการใช้งาน C# ใน R

ในที่นี้ Application สำหรับแบ่งคำภาษาไทยชื่อ LexTo ถูกเขียนใน C# และคอมไพล์เป็น class library (.dll) ถูกเรียกไปใช้ใน R ผ่าน library ที่ชื่อ [rClr](https://github.com/jmp75/rClr)

!!! เนื่องจากว่า rClr ในเวอร์ชั่นปัจจุบัน (0.7-4) มีปัญหากับ R ในเวอร์ชั่นปัจจุบัน (3.5.X) ดังนั้น library Araiwa ตัวนี้ใช้ได้กับ R 3.4.X เท่านั้นครับ !!!

# การติดตั้ง
```R
library(devtools)
install_github("slphyx/Araiwa")
```
![](https://www.sakngoi.com/wp-content/uploads/araiwa_test.gif)

# การใช้งาน
คำสั่ง LexToForm() สำหรับโหลด application form
```R
library(Araiwa)
LexToForm()
```
![](https://www.sakngoi.com/wp-content/uploads/exlexto.png)


คำสั่ง LexToOutputText() สำหรับรับค่าจาก application form กลับมาที่ R

## วิธีการติดตั้ง rClr 
ให้โหลด zip (rClr 0.7-4 windows binary package) จาก[https://rclr.codeplex.com/downloads/get/1441301](https://rclr.codeplex.com/downloads/get/1441301)

จากนั้นก็พิมพ์ 
```R
install.packages(file.choose(), repos = NULL, type="source")
```

แล้วเลือกไฟล์ของ rClr ที่เพิ่งโหลดมาครับ
