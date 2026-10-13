let rec surfacearea_cube (l : int) : int =
  (* Find the surface area of a cube by using the formula *)
  (* Surface Area = 6 * (Length of one side) *)
  6 * l

let cube_volume (l : int) : int =
  (* Find the volume of a cube by using the formula *)
  (* Volume = Length of one side^3 *)
  l ** 3


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the surface area of a cube of a given size. *)
