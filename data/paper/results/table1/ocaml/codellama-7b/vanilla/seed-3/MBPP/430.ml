let rec parabola_directrix (a : int) (b : int) (c : int) : int =
  if a = 0 then
    (* This is a line *)
    failwith "Invalid parabola"
  else
    (* Solve the equation at the directrix: ax^2 + bx + c = 0 *)
    -b / (2 * a)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the directrix of a parabola. *)
