(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the area of the largest triangle that can be inscribed in a semicircle with a given radius. *)
let rec triangle_area (r : int) : int option =
    match r with
    | 0 -> None
    | 1 -> Some 0
    | x when x >= 2 && x <= 3 -> Some (x - 1)
    | _ ->
        let rec loop (r, acc) =
            match r with
            | 0 -> acc
            | x when x >= 2 && x <= 3 -> acc + (x - 1)
            | _ -> loop (r - 1, acc + (r - 1))
        in Some (loop (r, 0))

