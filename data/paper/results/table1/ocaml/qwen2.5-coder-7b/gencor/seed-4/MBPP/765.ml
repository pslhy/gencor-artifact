
let rec is_polite (n : int) : int = 
  if (n && ((n && (n land 1)) = 0)) then
    1
  else
    0

let rec nth_polite (n : int) (count : int) (i : int) : int = 
  if count = n then
    i
  else
    nth_polite n (count + is_polite i) (i + 1)

let nth_polite_number (n : int) : int = 
  nth_polite n 0 1

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/ *)
