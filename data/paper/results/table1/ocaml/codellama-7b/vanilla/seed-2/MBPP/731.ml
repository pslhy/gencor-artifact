let rec lateralsurface_cone (r : int) (h : int) : float =
  let area_of_base = (2. *. float_of_int r *. float_of_int r) *. (float_of_int h /. float_of_int 3.) in
  let area_of_lateral_surface = float_of_int r *. float_of_int h *. 2. in
  area_of_base +. area_of_lateral_surface


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the lateral surface area of a cone given radius r and the height h. *)
