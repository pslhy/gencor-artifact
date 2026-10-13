
let rec check_monthnumber_number (monthnum3 : int) : bool =
  match monthnum3 with
  | 4 | 6 | 9 | 11 -> true
  | 2 -> (let is_leapyear n =
      n mod 400 = 0 ||
      (n mod 100 <> 0 && n mod 4 = 0)
    in
    is_leapyear 2022 && monthnum3 <> 29)
  | _ -> false

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given month number contains 30 days or not. Months are given as number from 1 to 12. *)
