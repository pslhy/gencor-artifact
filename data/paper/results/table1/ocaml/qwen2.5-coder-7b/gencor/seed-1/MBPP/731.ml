
let rec lateralsurface_cone (r : int) (h : int) : float = 
  let slant_height = sqrt (float (r * r + h * h)) in
  2.0 *. Float.pi *. float r *. slant_height;;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the lateral surface area of a cone given radius r and the height h. *)
