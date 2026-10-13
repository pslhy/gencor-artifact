let rec get_median (arr1 : int list) (arr2 : int list) (n : int) : float =
match n with
| 0 -> 0.
| n -> let med1 = List.nth arr1 ((n - 1) / 2) in
let med2 = List.nth arr2 ((n - 1) / 2) in
if n mod 2 = 0 then (float_of_int (med1 + med2)) /. 2. else float_of_int med1

and get_median (arr1 : int list) (arr2 : int list) : float option =
try Some (get_median arr1 arr2 (List.length arr1)) with
Not_found -> None


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the median of two sorted lists of same size. *)
