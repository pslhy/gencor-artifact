let rec iscube (a : int) : bool =
  let c = int_of_float (sqrt (float_of_int a)) in
  c * c * c = a


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes an integer a and returns true *)
(*     if this ingeger is a cube of some integer number. *)
(*     Note: you may assume the input is always valid. *)
(*     Examples: *)
(*     >>> iscube 1 *)
(*     true *)
(*     >>> iscube 2 *)
(*     false *)
(*     >>> iscube (-1) *)
(*     true *)
(*     >>> iscube 64 *)
(*     true *)
(*     >>> iscube 0 *)
(*     true *)
(*     >>> iscube 180 *)
(*     false *)
