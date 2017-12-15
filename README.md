# Araiwa

ตัวอย่างการใช้งาน C# ใน R

ในที่นี้ Application สำหรับแบ่งคำภาษาไทยชื่อ LexTo ถูกเขียนใน C# และคอมไพล์เป็น class library (.dll) ถูกเรียกไปใช้ใน R ผ่าน library ที่ชื่อ [rClr](https://github.com/jmp75/rClr)

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
