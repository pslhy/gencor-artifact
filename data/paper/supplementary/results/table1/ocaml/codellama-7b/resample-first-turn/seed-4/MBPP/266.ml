let rec lateralsurface_cube (l : int) : int = 
    (* Get all the sides in pixels *)
    List.map (fun x -> x * x * 6) [Complex.rect 1 0; Complex.rect 0 1; Complex.rect 1 1];;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the lateral surface area of a cube given its side length. *)
