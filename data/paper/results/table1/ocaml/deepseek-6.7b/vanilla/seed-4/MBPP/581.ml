let rec surface_Area (b : int) (s : int) : int =
  match b, s with
  | b, _ when b <= 0 -> invalid_arg "base edge should be positive"
  | 0, s when s <= 0 -> invalid_arg "height should be positive"
  | _, _ -> (b * b) + 2 * (b * s)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the surface area of a square mlramid with a given base edge and height. *)
