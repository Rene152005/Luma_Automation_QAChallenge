#!/usr/bin/env python3

#Selects the browser for the robots
# WEB_BROWSER = "Chrome"
# BROWSER_TYPE = "Firefox"

#Environments
ENVIRONMENT = "https://magento.softwaretestingboard.com/"

#Valid test data
ORDER_ID = "000026977"
BILLING_LAST_NAME = "DE LEON"
EMAIL = "renedeleon15@gmail.com"

#Table contents for headers and purchased products
TABLE_HEADERS = {
    1: 'Product Name',
    2: 'SKU',
    3: 'Price',
    4: 'Qty',
    5: 'Subtotal'
}

PURCHASED_PRODUCT_1 = {
    1: 'Tiberius Gym Tank',
    2: 'MT10-S-Yellow',
    3: '$18.00',
    4: '2',
    5: '$36.00'
}

PURCHASED_PRODUCT_2 = {
    1: 'Antonia Racer Tank',
    2: 'WT08-S-Purple',
    3: '$34.00',
    4: '1',
    5: '$34.00'
}