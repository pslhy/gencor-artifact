
let rec differ_At_One_Bit_Pos (a : int) (b : int) : bool =
  if a = b then false
  else
    let differ_by_one a b =
      a = b lxor (a land (b lxor a))
    in
    let rec check_diff Bool.((not) as a) b =
      match a with
      | [] -> false
      | x :: xs -> (x && b) || check_diff xs (b lsr 1)
    in
    check_diff (differ_by_one a b) b
;;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the two numbers differ at one bit position only or not. *)
