let rec valid_date (date : string) : bool =
  if date = ""
  then false
  else
    let parts = Str.split date "-"
    in if List.length parts != 3
      then false
      else
        let month = int_of_string List.nth parts 0
        and day = int_of_string List.nth parts 1
        and year = int_of_string List.nth parts 2
        in
          let day_valid =
            if month = 2 && day = 29
            then (year % 4 = 0 && (year % 100 != 0 || year % 400 = 0))
            else if List.mem month [1;3;5;7;8;10;12]
            then day >= 1 && day <= 31
            else if List.mem month [4;6;9;11]
            then day >= 1 && day <= 30
            else false
          in
            month >= 1 && month <= 12
            && day_valid
            && year >= 0 && year <= 9999


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
