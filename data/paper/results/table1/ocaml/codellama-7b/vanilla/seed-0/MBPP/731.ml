let rec lateralsurface_cone (r : int) (h : int) : float =
  h * (2 * r) + lateralsurface_cone (r - 1) (h)

let _ =
  print_float (lateralsurface_cone 5 8)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the lateral surface area of a cone given radius r and the height h. *)
