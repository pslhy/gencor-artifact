let rec check_monthnumb_number (monthnum2 : int) : bool =
  match monthnum2 with
  | 1 | 3 | 5 | 7 | 8 | 10 | 12 -> true
  | 4 | 6 | 9 | 11 -> false
  | 2 -> raise (Failure "Febuary does not have just 31 days.")
  | _ -> raise (Failure "Invalid month number.")

let is_31_day_month = check_monthnumb_number 4;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given month number contains 31 days or not. *)
