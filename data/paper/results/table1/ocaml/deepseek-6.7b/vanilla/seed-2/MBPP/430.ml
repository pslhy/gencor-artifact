let rec parabola_directrix (a : int) (b : int) (c : int) : int =
  let sum = a +. b +. c in
  let difference = a -. b -. c in
  int_of_float (sum /. 2.) + int_of_float ((difference /. 2.) ** 2)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the directrix of a parabola. *)
