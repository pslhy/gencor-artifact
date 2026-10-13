let rec area_tetrahedron (side : int) : float =
  if side <= 0 then 0.
  else
    let area_triangle = area_triangle (side - 1)
    in area_triangle *. side *. side

and area_triangle (base : int) (height : int) : float =
  base *. height /. 2.

let main () =
  printf "Enter side of tetrahedron: ";
  let side = read_int ()
  in printf "Area of tetrahedron: %.2f\n" (area_tetrahedron side)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to caluclate the area of a tetrahedron. *)
