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
  let parts = Str.split_string ~by:"-" date in
  if List.length parts <> 3 || List.mem parts "" then false
  else
    let month = int_of_string (List.nth parts 0) in
    let day = int_of_string (List.nth parts 1) in
    let year = int_of_string (List.nth parts 2) in
    if month < 1 || month > 12 || day < 1 then false
    else
      let days_in_month =
        match List.nth parts 0 with
        | "01" | "03" | "05" | "07" | "08" | "10" | "12" -> 31
        | "04" | "06" | "09" | "11" -> 30
        | "02" -> 28
        | _ -> failwith "invalid month"
      in
      if day > days_in_month then false
      else true
;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:15: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec valid_date (date : string) : bool =
  let parts = Str.split_string ~by:"-" date in
  if List.length parts <> 3 || List.mem parts "" then false
  else
    let month = int_of_string (List.nth parts 0) in
    let day = int_of_string (List.nth parts 1) in
    let year = int_of_string (List.nth parts 2) in
    if month < 1 || month > 12 || day < 1 then false
    else
      let days_in_month =
        match List.nth parts 0 with
        | "01" | "03" | "05" | "07" | "08" | "10" | "12" -> 31
        | "04" | "06" | "09" | "11" -> 30
        | "02" -> 28
        | _ -> failwith "invalid month"
      in
      if day > days_in_month then false
      else true
;;

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:15: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec valid_date (date : string) : bool =
  let parts = String.split_on_char '-' date in
  if List.length parts <> 3 || List.mem parts "" then false
  else
    let month = int_of_string (List.nth parts 0) in
    let day = int_of_string (List.nth parts 1) in
    let year = int_of_string (List.nth parts 2) in
    if month < 1 || month > 12 || day < 1 then false
    else
      let days_in_month =
        match month with
        | 1 | 3 | 5 | 7 | 8 | 10 | 12 -> 31
        | 4 | 6 | 9 | 11 -> 30
        | 2 -> if year mod 4 = 0 then 29 else 28
        | _ -> failwith "invalid month"
      in
      if day > days_in_month then false
      else true
;;

