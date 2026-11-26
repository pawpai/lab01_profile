# Lab L1 · About me

**ชื่อ–สกุล** ปวริศร์ จันทวรรณ์

**รหัสนักศึกษา** 67110643

**ลิงก์ GitHub** [pawpai/lab01_profile](https://github.com/pawpai/lab01_profile)

## Q1 · เครื่องมือ

ตอนแรก `flutter doctor` หา Android SDK ไม่เจอ เลยลง SDK ด้วย `sdkmanager` ตั้งค่า SDK กับ JDK แล้วกดยอมรับ license พอรันอีกที Flutter กับ Android toolchain ขึ้นเครื่องหมายถูกทั้งคู่ [คู่มือ Flutter](https://docs.flutter.dev/platform-integration/android/setup)

รอบล่าสุดเปิดงานใน VS Code ที่ลงส่วนเสริม Dart กับ Flutter แล้วเช็กซ้ำ ยังรันบน Android Emulator ได้

## Q2 · Hot reload และ hot restart

กด Like 3 ทีแล้วแก้หัวแถบ พอกด `r` หัวแถบเปลี่ยนและ Likes ยังอยู่ที่ 3 เพราะเก็บ state เดิมไว้ พอกด `R` แอปเริ่มใหม่ Likes เลยกลับเป็น 0

## Q3 · `setState` และ Git

ใส่ `_likes++` ใน `setState` เพื่อให้ Flutter วาดหน้าใหม่แล้วโชว์เลขที่เพิ่มขึ้น

Commit `Add like counter with setState` เปลี่ยน `HomePage` เป็น `StatefulWidget` แล้วเพิ่มปุ่ม Like กับตัวนับ

## ตารางทดสอบ

| ประเภท | การกระทำ | ผลที่คาดหวัง | ผลจริง |
| --- | --- | --- | --- |
| Normal | เปิดแอป | เห็นรหัส ไอคอน ชื่อ และ `Likes: 0` | ขึ้นครบ |
| Normal | กด Like 1 ที | `Likes: 1` | ขึ้น 1 |
| Boundary | เริ่มจาก 0 แล้วกดเร็ว ๆ 20 ที | `Likes: 20` ไม่มี error | ขึ้น 20 ปุ่มยังกดได้ |
| Boundary | หมุนจอแนวนอน | อยู่กลางจอและไม่ล้น | ยังอยู่กลางจอ เห็นครบ |
| Reload | กด Like 3 ที แก้หัวแถบ แล้วกด `r` กับ `R` | หลัง `r` ได้ 3 หลัง `R` ได้ 0 | หัวแถบเปลี่ยน ตัวนับได้ 3 แล้วกลับเป็น 0 |
| Failure | ปิด emulator แล้วรัน `flutter run -d emulator-5554` | แจ้งว่าไม่พบ emulator | `No supported devices found with name or id matching 'emulator-5554'.` |

## การใช้ AI

ใช้ Codex ช่วยเขียนโค้ด ตั้งค่า SDK ทำ commit ทดสอบ เก็บภาพ และร่างคำตอบ
