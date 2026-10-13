
let rec is_polite (n : int) : int =
  if n <= 1 then n else
  if n = (2 ** (log n |> int_of_float |> succ)) / 2 then 1 else 0

and count_bits (n : int) : int =
  String.length (string_of_int n)

let nth_polite (n : int) : int = 
  let rec loop i curr count =
    if count = n then curr else loop (succ i) (if is_polite i = 1 then succ curr else curr) count
  in
  loop 0 0 n

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/ *)
