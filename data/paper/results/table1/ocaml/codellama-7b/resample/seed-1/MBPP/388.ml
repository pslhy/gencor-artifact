(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the highest power of 2 that is less than or equal to n. *)
let rec highest_Power_of_2 (n : int) : int =
match n with
| 1 -> 1
| x when x mod 2 = 0 -> highest_Power_of_2 (x/2)
| _ -> highest_Power_of_2 (x/2) + 1

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:28: Unbound value "x" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec highest_Power_of_2 (n : int) : int =
  if n = 1 then
    1
  else if (n mod 2) = 0 then
    highest_Power_of_2 (n / 2)
  else
    highest_Power_of_2 (n / 2) + 1

