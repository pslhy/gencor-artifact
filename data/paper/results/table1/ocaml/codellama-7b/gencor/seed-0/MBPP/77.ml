
let rec is_Diff (n : int) : bool =
  if n = 0 then
    true
  else
    let d = n mod 10
    in
    if d = 1 || d = 3 || d = 7 || d = 9 then
      is_Diff (n / 10)
    else
      false
;;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find whether a number is divisible by 11. *)
