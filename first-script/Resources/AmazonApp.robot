*** Settings ***
# Library  SeleniumLibrary
Resource  ../Resources/PO/LandingPage.robot
Resource  ../Resources/PO/TopNav.robot
Resource  ../Resources/PO/SearchResults.robot
Resource  ../Resources/PO/Product.robot
Resource  ../Resources/PO/Cart.robot
Resource  ../Resources/PO/SignIn.robot

*** Keywords ***

Login
    [Arguments]  ${Username}  ${Password}
    SignIn.Login with Valid Credentials  ${Username}  ${Password}


Search for products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Enter Search Term
    TopNav.Submit Search
    SearchResults.Verify Search Completed

Select product
    SearchResults.Click Product Link
    Product.Verify Page Loaded

Add Product to Cart
    Product.Add to Cart
    Product.Waiting


Begin Checkout
    Cart.Proceed to Checkout

   # Element Text Should be

