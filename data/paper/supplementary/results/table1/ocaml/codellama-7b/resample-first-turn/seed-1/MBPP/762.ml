let rec check_monthnumber_number (monthnum3 : int) : bool =
match monthnum3 with
| 4 | 6 | 9 | 11 -> true
| 1 | 3 | 5 | 7 | 8 | 10 -> false
| _ ->
let month = string_of_int (monthnum3 + 1) in
match String.get (month, 0) with
| '0' | '2' -> true
| '1' | '3' | '5' | '7' | '8' | '10' -> false
| _ ->
let (a, b, c) = String.split_on_char '-' month in
String.length c = 2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given month number contains 30 days or not. Months are given as number from 1 to 12. *)
