(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find common first element in given list of lists. *)
let rec group_tuples (input : string list list) : string list list =
    let rec aux input acc =
        match input with
        | [] -> acc
        | (lhd::lrtl) ->
            if lrtl = [] then
                lhd::acc
            else
                aux lrtl (lhd::acc)
    in
    aux input []

