let rec valid_date (date : string) : bool =
  let month, day, year = split_date date in
  let num_days = num_days_in_month month in
  if Int.compare month 1 = -1 || Int.compare month 12 = 1 then
    false
  else if Int.compare (int_of_string day) 1 = -1 ||
          Int.compare (int_of_string day) num_days = 1 then
    false
  else if year < 0 then
    false
  else
    true

and split_date (date : string) : int * int * int =
  match String.split_on_char '-' date with
  | [month; day; year] ->
    (int_of_string month, int_of_string day, int_of_string year)
  | _ ->
    failwith "Invalid date format"

and num_days_in_month (month : int) : int =
  match month with
  | 2 ->
    28
  | 4 | 6 | 9 | 11 ->
    30
  | _ ->
    31

let () =
  assert (valid_date "03-11-2000" = true);
  assert (valid_date "15-01-2012" = false);
  assert (valid_date "04-0-2040" = false);
  assert (valid_date "06-04-2020" = true);
  assert (valid_date "06/04/2020" = false);

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
