*** Settings ***
Library     RequestsLibrary

*** Test Cases ***
Quick Get Request Test
    ${test}        GET    https://demo.nopcommerce.com/

Quick Get Request With Parametrs Test
    ${response}    GET    https://demo.nopcommerce.com/    expected_status=200
