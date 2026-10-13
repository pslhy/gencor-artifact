(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find whether a given list of integers contains any duplicate element. *)
let rec test_duplicate (arraynums : int list) : bool =
    let containsZero = List.mem 0 arraynums in
    if containsZero then
        true
    else
        let rec loop (arraynums : int list) =
            match arraynums with
            | [] -> false
            | (h : int) :: t ->
            if List.mem h t then
                true
            else
                loop t
        in
        loop arraynums

