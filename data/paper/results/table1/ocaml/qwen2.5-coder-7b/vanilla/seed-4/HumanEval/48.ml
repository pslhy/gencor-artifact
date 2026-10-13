let rec is_palindrome (text : string) : bool = 
  let len = String.length text in
  let rec helper (start : int) (end_ : int) : bool = 
    if start >= end_ then true
    else text.[start] = text.[end_] && helper (start + 1) (end_ - 1)
  in
  helper 0 (len - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Checks if given string is a palindrome *)
(*     >>> is_palindrome "" *)
(*     true *)
(*     >>> is_palindrome "aba" *)
(*     true *)
(*     >>> is_palindrome "aaaaa" *)
(*     true *)
(*     >>> is_palindrome "zbcd" *)
(*     false *)
