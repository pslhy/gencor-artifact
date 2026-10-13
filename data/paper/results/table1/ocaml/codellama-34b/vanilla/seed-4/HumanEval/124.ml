let rec valid_date (date : string) : bool = 
    let date_parts = date with pattern for e optionality with let (month, day, year) = date in
    let check_mm (month : int) : bool = month in [1, 3, 5, 7, 8, 10, 12] and
    let check_dd (day : int) : bool = day in [28-31] and
    let is_leap_year = if year mod 400 = 0 then true else if year mod 100 = 0 then false else if year mod 4 = 0 then true else false in
    if date_parts < [1, 1] or date_parts > [12, 31] then
        false
    elif (month = 2 and (day < 1 or day > 28 (or day > 29 if is_leap_year))) or (month in [1, 3, 5, 7, 8, 10, 12] and (day < 1 or day > 31)) or (month in [4, 6, 9, 11] and (day < 1 or day > 30)) then 
        false
    else
        true


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     You have to write a function which validates a given date string and *)
(*     returns true if the date is valid otherwise false. *)
(*     The date is valid if all of the following rules are satisfied: *)
(*     1. The date string is not empty. *)
(*     2. The number of days is not less than 1 or higher than 31 days for months 1,3,5,7,8,10,12. And the number of days is not less than 1 or higher than 30 days for months 4,6,9,11. And, the number of days is not less than 1 or higher than 29 for the month 2. *)
(*     3. The months should not be less than 1 or higher than 12. *)
(*     4. The date should be in the format: mm-dd-yyyy *)
(*     >>> valid_date "03-11-2000" *)
(*     true *)
(*     >>> valid_date "15-01-2012" *)
(*     false *)
(*     >>> valid_date "04-0-2040" *)
(*     false *)
(*     >>> valid_date "06-04-2020" *)
(*     true *)
(*     >>> valid_date "06/04/2020" *)
(*     false *)
