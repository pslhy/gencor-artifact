(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that checks if a strings contains 'z', except at the start and end of the word. *)
let rec text_match_wordz_middle (text : string) : bool = 
    let rec recursion chars = 
        match chars with 
        | [] | [_] -> false 
        | 'z' :: 'z' :: _ | _ :: 'z' :: 'z' :: _ -> false 
        | _ :: tail -> recursion tail 
    in 
    let chars = String.to_seq text |> Seq.toList in
    match chars with 
    | [] | [_] -> false 
    | _ when List.hd chars = 'z' || List.rev chars |> List.hd = 'z' -> false 
    | _ -> recursion (List.tl (List.rev (List.tl chars)))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:39: Unbound value "Seq.toList" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec text_match_wordz_middle (text : string) : bool = 
    let rec recursion chars = 
        match chars with 
        | [] | [_] -> false 
        | 'z' :: 'z' :: _ | _ :: 'z' :: 'z' :: _ -> false 
        | _ :: tail -> recursion tail 
    in 
    let chars = String.fold_left (fun acc c -> c :: acc) [] text |> List.rev in
    match chars with 
    | [] | [_] -> false 
    | _ when List.hd chars = 'z' || List.rev chars |> List.hd = 'z' -> false 
    | _ -> recursion (List.tl (List.rev (List.tl chars)))

