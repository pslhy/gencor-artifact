let rec valid_date (date : string) : bool = 
  let is_digit c = Char.code c >= Char.code '0' && Char.code c <= Char.code '9' in
  let is_valid_format date = 
    String.length date = 10 
    && date.[2] = '-' 
    && date.[5] = '-' 
    && is_digit date.[0] 
    && is_digit date.[1] 
    && is_digit date.[3] 
    && is_digit date.[4] 
    && is_digit date.[6] 
    && is_digit date.[7] 
    && is_digit date.[8] 
    && is_digit date.[9] in
  if not (is_valid_format date) then false else
    let month = int_of_string (String.sub date 0 2) in
    let day = int_of_string (String.sub date 3 2) in
    let year = int_of_string (String.sub date 6 4) in
    if month < 1 || month > 12 || day < 1 || year < 0 then false else
      let days_in_month = match month with
        | 1 | 3 | 5 | 7 | 8 | 10 | 12 -> 31
        | 4 | 6 | 9 | 11 -> 30
        | 2 when (year mod 4 = 0 && year mod 100 <> 0) || year mod 400 = 0 -> 29
        | 2 -> 28
        | _ -> invalid_arg "Invalid month" in
      day <= days_in_month


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
