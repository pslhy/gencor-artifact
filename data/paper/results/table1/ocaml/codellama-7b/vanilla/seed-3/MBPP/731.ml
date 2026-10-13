let rec lateralsurface_cone (r : int) (h : int) : float =
  if h = 0 then
    (* This is the base of the cone, which has a surface area of pi*r*r *)
    let base_surface_area = 3.14 *. (float_of_int r) *. (float_of_int r) in
    base_surface_area
  else
    (* This is the height of the cone above the base, which has a surface area of 2*pi*r*h *)
    let cone_surface_area = 2. * 3.14 *. (float_of_int r) *. (float_of_int h) in
    (* And the total surface area is the sum of these two components *)
    lateralsurface_cone r h + cone_surface_area


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the lateral surface area of a cone given radius r and the height h. *)
