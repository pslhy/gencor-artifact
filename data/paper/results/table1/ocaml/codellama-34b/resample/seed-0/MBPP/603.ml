(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to get all lucid numbers smaller than or equal to a given integer. *)
let rec get_ludic (n : int) : int list =
    if n <= 2 then [2; n] else
    let ludic = get_ludic (n - 1) in
    let num =
        match List.hd (List.filter (fun x -> not (List.mem x ludic)) [n - 2; n - 1]) with
        | Some x -> x
        | None -> n in
    num :: ludic;;

