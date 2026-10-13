(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the area of the largest triangle that can be inscribed in a semicircle with a given radius. *)
let rec triangle_area (r : int) : int option =
    if r <= 0 then None
    else begin
        let a = sqrt (r * (r - 1)) in
        let b = sqrt (r * (r - 1) - a) in
        let h = a / 2 in
        let area = h * b / 2 in
        Some area
    end

