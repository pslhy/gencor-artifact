let rec lateralsurface_cube (l : int) : int =
    match l with
    | 0 -> 0
    | n -> 4 * (n * (n + 1)) + (lateralsurface_cube (n - 1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the lateral surface area of a cube given its side length. *)
