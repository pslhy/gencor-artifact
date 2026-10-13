let rec surfacearea_cube (l : int) : int =
    if l = 1 then
        6
    else
        let n = surfacearea_cube (l - 1) in
        l * l + n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the surface area of a cube of a given size. *)
