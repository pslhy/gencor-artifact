(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
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
let rec valid_date (date : string) : bool =
    if date = "" then false
    else
        let segments = String.split_on_char '-' date in
        match segments with
        | [|""; ""; "";|] ->
            let month = int_of_string segments.(0) in
            let day = int_of_string segments.(1) in
            let year = int_of_string segments.(2) in
            valid_month day month day && valid_day day month year
        | _ -> false

and valid_month (day : int) (month : int) (year : int) : bool =
    match month with
    | 1 | 3 | 5 | 7 | 8 | 10 | 12 -> day >= 1 && day <= 31
    | 4 | 6 | 9 | 11 -> day >= 1 && day <= 30
    | 2 ->
        if is_leap_year year then
            day >= 1 && day <= 29
        else
            day >= 1 && day <= 28
    | _ -> false

and is_leap_year (year : int) : bool =
    year mod 4 = 0 && (year mod 100 <> 0 || year mod 400 = 0)

and valid_day (day : int) (month : int) (year : int) : bool =
    match month with
    | 12 -> day = 31
    | 11 -> day = 30 || (is_leap_year year && day = 29)
    | 10 -> day >= 1 && day <= (if is_leap_year year then 30 else 29)
    | 9 -> day >= 1 && day <= 30
    | 8 -> day >= 1 && day <= 31
    | 7 -> day >= 1 && day <= 31
    | 6 -> day >= 1 && day <= 30
    | 5 -> day >= 1 && day <= 31
    | 4 -> day >= 1 && day <= 30
    | 3 -> day >= 1 && day <= 31
    | 2 -> day >= 1 && (if is_leap_year year then day <= 29 else day <= 28)
    | _ -> day >= 1 && day <= 31

