(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether a list is sublist of another or not. *)
let rec is_Sub_Array (a : int list) (b : int list) : bool =
  if a = [] then true
  else
    if b = [] then false
    else
      if hd a = hd b then is_Sub_Array (tl a) (tl b)
      else false
;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:10: Unbound value "hd" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_Sub_Array (a : int list) (b : int list) : bool =
  match a with
  | [] -> true
  | hd :: tl ->
      if hd = List.hd b then
        is_Sub_Array tl (List.tl b)
      else
        is_Sub_Array tl b
;;

