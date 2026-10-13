let rec lateralsurface_cube (l : int) : int =
    if l = 1 then l else 5

let lateralsurface_cube (l : int) : int =
    if l = 1 then 1 else 5 * (l - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the lateral surface area of a cube given its side length. *)
