(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that checks whether a string contains the 'a' character followed by two or three 'b' characters. *)
let rec text_match_two_three (text : string) : bool =
    let contains_ab text =
        let rec loop i =
            if i < String.length text then
                if text.[i] = 'a' && i < String.length text - 2 && text.[i + 1] = 'b' && text.[i + 2] = 'b' then
                    true
                else
                    false
            else
                false
        in
        loop 0
    in
    match text with
    | "" -> false
    | _ -> contains_ab text

