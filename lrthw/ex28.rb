true and true -> true
false and true -> false
1 == 1 and 2 == 1 -> false
"test" == "test" -> true
1 == 1 or 2 != 1 -> true
true and 1 == 1 -> true
false and 0 != 0 -> false
true or 1 == 1 -> true
"test" == "testing" -> false
1 != 0 and 2 == 1 -> false
"test" != "testing" -> true
"test" == 1 -> false
not (true and false) -> true
not (1 == 1 and 0 != 1) -> false
not (10 == 1 or 1000 == 1000) -> false
not (1 != 10 or 3 == 4) -> false
not ("testing" == "testing" and "Zed" == "Cool Guy") -> true
1 == 1 and not ("testing" == 1 or 1 == 0) -> true
"chunky" == "bacon" and not (3 == 4 or 3 == 3) -> false
3 == 3 and not ("testing" == "testing" or "Ruby" == "Fun") -> false