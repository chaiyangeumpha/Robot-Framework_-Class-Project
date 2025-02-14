*** Settings ***
Library         SeleniumLibrary
Resource        CommonKeywords.robot

*** Variables ***
${REGISTER_BUTTON}    xpath=//button[contains(text(),'สมัครสมาชิก')]
${FNAME_INPUT}    xpath=//input[@name='firstName']
${LNAME_INPUT}    xpath=//input[@name='lastName']
${EMAIL_INPUT}    xpath=//input[@name='email']
${PHONE_INPUT}    xpath=//input[@name='phoneNumber']
${NPASSWORD_INPUT}    xpath=//input[@name='newPassword']
${CPASSWORD_INPUT}    xpath=//input[@name='confirmPassword']
${consentCheckbox}    xpath=//input[@name='consent']
${REGISTER_SUBMIT_BUTTON}    xpath=//button[contains(text(),'สมัครสมาชิก')]
${OTP_MESSAGE}    xpath=//div[contains(text(),'ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์')]

*** Keywords ***
เปิดเบราว์เซอร์เต็มจอ
    Open Browser    ${baseUrl}    chrome
    Maximize Browser Window

คลิกปุ่มสมัครสมาชิก
    CommonKeywords.Wait until element is ready then click element    ${REGISTER_BUTTON}

กรอกข้อมูลสมัครสมาชิก
    CommonKeywords.Wait until element is ready then input text    ${EMAIL_INPUT}    ${email}
    CommonKeywords.Wait until element is ready then input text    ${FNAME_INPUT}    ${firstname}
    CommonKeywords.Wait until element is ready then input text    ${LNAME_INPUT}    ${lastname}
    CommonKeywords.Wait until element is ready then input text    ${PHONE_INPUT}    ${phoneNumber}
    CommonKeywords.Wait until element is ready then input text    ${NPASSWORD_INPUT}    ${password}
    CommonKeywords.Wait until element is ready then input text    ${CPASSWORD_INPUT}    ${password}

เลือกยอมรับข้อกําหนดการใช้งานของ Futureskill
    CommonKeywords.Wait until element is ready then click element    ${consentCheckbox}

คลิกปุ่มสมัครสมาชิกหลังกรอกข้อมูล
    CommonKeywords.Wait until element is ready then click element    ${REGISTER_SUBMIT_BUTTON}

ตรวจสอบข้อความ OTP ที่แสดงหลังสมัครสมาชิก
    CommonKeywords.Wait until page contains element then verify text    ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์
