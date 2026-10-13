(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the two numbers differ at one bit position only or not. *)
let rec differ_At_One_Bit_Pos (a : int) (b : int) : bool =
  if a = b then false
  else
    let differ_by_one a b =
      a = b lxor (a land (b lxor a))
    in
    let rec check_diff Bits =
      if Bits = 0 then false
      else if differ_by_one a b || differ_by_one b a then true
      else check_diff (Bits lsl 1)
    in
    check_diff 1
;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:24: Unbound constructor "Bits" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec differ_At_One_Bit_Pos (a : int) (b : int) : bool =
  if a = b then false
  else
    let differ_by_one a b =
      a = b lxor (a land (b lxor a))
    in
    let rec check_diff bits =
      if bits = 0 then false
      else if differ_by_one a b || differ_by_one b a then true
      else check_diff (bits lsl 1)
    in
    check_diff 1
;;

