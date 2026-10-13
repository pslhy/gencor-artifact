let rec check_monthnumber_number (monthnum3 : int) : bool =
  match monthnum3 with
  | 4 | 6 | 9 | 11 -> true
  | 2 -> is_leapyear
  | _ -> false

and is_leapyear -> (yearnum : int) : bool =
  match yearnum with
  | 0 | 2 | 4 | 6 | 8 | 10 -> false
  | 1 | 3 | 5 | 7 | 9 | 12 -> true
  | _ -> failwith "invalid year"

check_monthnumber_number 7


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given month number contains 30 days or not. Months are given as number from 1 to 12. *)
