(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the first adverb ending with ly and its positions in a given string. *)
let rec find_adverbs (text : string) : string =
    let len = String.length text in
    for i = 0 to len - 4 do
        if String.sub text i 2 = "ly" then
            Some (String.sub text i (len - i))
        else
            None
    done

