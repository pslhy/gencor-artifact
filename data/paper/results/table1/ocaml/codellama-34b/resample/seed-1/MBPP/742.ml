(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to caluclate the area of a tetrahedron. *)
let rec area_tetrahedron (side : int) : float =
    let height = 
        match side with
        | x when x < 0 -> failwith "Side cannot be negative"
        | x -> sqrt (float_of_int (side * side + side))
    in
    height * side

