
let rec count_Substrings (s : string) : int =
  let len = String.length s in
  let digit_sum (n : int) : int =
    if n = 0 then 0 else n mod 10 + (n / 10) in
  let rec aux (i : int) (j : int) : int =
    if i = len then 0 else
      let sum = digit_sum (int_of_string (String.sub s i (j - i + 1))) in
      if sum = j - i + 1 then 1 + aux i (j + 1) else aux (i + 1) (j + 1) in
  aux 0 0

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of substrings with the sum of digits equal to their length. *)
