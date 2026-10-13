let rec valid_date (date : string) : bool =
    if date = "" then false
    else
    let date_parts = split_date date in
    let month = List.nth date_parts 0 in
    let day = List.nth date_parts 1 in
    let year = List.nth date_parts 2 in
    if not (String.length month = 2 && String.length day = 2 && String.length year = 4) then false
    else
    let month = int_of_string month in
    let day = int_of_string day in
    let year = int_of_string year in
    if month < 1 || month > 12 || day < 1 || year < 0 then false
    else
    if (month = 4 || month = 6 || month = 9 || month = 11) && (day > 30) then false
    else if month = 2 && day > 29 then false
    else if (month = 1 || month = 3 || month = 5 || month = 7 || month = 8 || month = 10 || month = 12) && (day > 31) then false
    else true

and split_date (date : string) : string list =
    if String.length date <> 10 then []
    else
    let month = String.sub date 0 2 in
    let day = String.sub date 3 2 in
    let year = String.sub date 6 4 in
    [month; day; year]


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
