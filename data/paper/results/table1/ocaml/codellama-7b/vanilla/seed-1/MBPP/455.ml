let rec check_monthnumb_number (monthnum2 : int) : bool =
match monthnum2 with
| 9 | 4 | 6 | 11 -> false
| _ -> true


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given month number contains 31 days or not. *)
