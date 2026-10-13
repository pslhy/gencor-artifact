let rec surfacearea_cube (l : int) : int =
    let area = [l * l] * 6 in
    match area with
    | [] -> []
    | x :: [] -> x
    | x :: y :: [] -> x + y
    | _ -> failwith "Invalid input"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the surface area of a cube of a given size. *)
