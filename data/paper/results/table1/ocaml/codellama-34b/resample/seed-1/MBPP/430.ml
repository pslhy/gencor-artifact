(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the directrix of a parabola. *)
let rec parabola_directrix (a : int) (b : int) (c : int) : int =
    let delta = b ** 2 - 4. * a * c in
    if delta > 0 then
        let d = (b -. sqrt(delta)) /. (2. * a) in
        Some d
    else
        None

