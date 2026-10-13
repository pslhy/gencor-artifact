let rec is_undulating (n : int) : bool =
  let rec check_digits (digs : int list) : bool =
    match digs with
    | [] | [_] -> true
    | hd :: nd :: rest -> hd != nd && check_digits (nd :: rest)
  in
  let rec get_digits (n : int) : int list =
    if n = 0 then [] else n mod 10 :: get_digits (n / 10)
  in
  check_digits (get_digits n)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is undulating or not. *)
