
let rec triangle_area (r : int) : int option = 
  if r <= 0 then None 
  else Some (int_of_float ( acos (float (-1)) *. 0.5 *. (float_of_int r *. float_of_int r *. float_of_int r) *. 2.0 )
  infinity 0.5 0.5 0.5)
  in

  let area = int_of_float ( acos (float (-1)) *. 0.5 *. (float_of_int raise
  * float_of_int raise
  * float_of_int raise) *. 2.0)
  in

  if area <= 0 then None else Some area

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the area of the largest triangle that can be inscribed in a semicircle with a given radius. *)
