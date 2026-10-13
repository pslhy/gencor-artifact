
let rec valid_date (date : string) : bool = 
    (* Check if the date string is empty *)
    if (date = "") then 
        false 
    (* Get the month, day, and year parts of the date string *)
    else 
        let month, day, year = 
            String.split_on_char '-' date 
            |> List.map int_of_string in

        (* Check if the month is valid *)
        if (month < 1 || month > 12) then 
            false 
        (* Check if the day is valid for the month *)
        else if (day < 1 || day > 31) then 
            false 
        (* Check if the year is not in the past *)
        else if (year < 0) then 
            false
        (* If all parts of the date are valid, return true *)
        else if (month, day, year) = (month, day, year) then
              true
        (* Otherwise, return false *)     
        else
            false

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
