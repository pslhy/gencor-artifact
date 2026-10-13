
let rec text_match_wordz_middle (text : string) : bool = 
    let rec recursion chars = 
        match chars with 
        | [] | [_] -> false 
        | 'z' :: 'z' :: _ | _ :: 'z' :: 'z' :: _ -> false 
        | _ :: tail -> recursion tail 
    in 
    let chars = String.to_seq text |> Seq.filter (fun c -> c <> ' ') |> Seq.to_dispenser in
    recursion (List.of_seq chars)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that checks if a strings contains 'z', except at the start and end of the word. *)
