let rec find_adverb_position (text : string) :  int * int * string =
    let sub = String.sub text 0 1 in
    if sub = " " then
        find_adverb_position (String.sub text 1 (String.length text - 1))
    else
        match sub with
        | "at" | "by" | "for" | "from" | "of" | "on" | "to" | "with" | "in" | "into" -> (0, 1, sub)
        | _ -> let pos = String.index text ' ' in
                 (pos, pos + 1, String.sub text 0 pos)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the first adverb and their positions in a given sentence. *)
