*** Settings ***
Library         SeleniumLibrary
Resource        ../keywords/RegisterPageKeywords.robot
Variables       ../resources/config/config.yaml
Variables       ../resources/testdata/testdata.yaml

*** Test Cases ***
สมัครสมาชิกของ Future Skill
    เปิดเบราว์เซอร์เต็มจอ
    คลิกปุ่มสมัครสมาชิก
    กรอกข้อมูลสมัครสมาชิก
    เลือกยอมรับข้อกําหนดการใช้งานของ Futureskill
    คลิกปุ่มสมัครสมาชิกหลังกรอกข้อมูล
    ตรวจสอบข้อความ OTP ที่แสดงหลังสมัครสมาชิก
