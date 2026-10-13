(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the directrix of a parabola. *)
let rec parabola_directrix (a : int) (b : int) (c : int) : int =
    match a with
    | 0 -> c - b
    | _ -> if b = 0 then
             let d = a / c in
             if d > 0 then 0 else parabola_directrix (a + 1) (b + 1) c
           else parabola_directrix (a + 1) (b - 1) c

