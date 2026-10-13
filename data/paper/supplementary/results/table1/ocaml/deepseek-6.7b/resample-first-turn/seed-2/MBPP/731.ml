let rec lateralsurface_cone (r : int) (h : int) : float =
  float_of_int (2 * (if r >= 0 && h >= 0 then Float.iround_to_int (Float.pi *. float_of_int r *. (sqrt ((float_of_int r)**2. +. (float_of_int h)**2.))) else 0))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the lateral surface area of a cone given radius r and the height h. *)
