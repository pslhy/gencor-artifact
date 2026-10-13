let rec surfacearea_cylinder (r : int) (h : int) : float =
  if h = 0 then
    (* base case *)
    r * r * 3.14
  else
    (* recursive case *)
    let orientation = surfacearea_cylinder h (r * (h - 1)) in
    r * 2.0 + orientation


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the surface area of a cylinder. *)
