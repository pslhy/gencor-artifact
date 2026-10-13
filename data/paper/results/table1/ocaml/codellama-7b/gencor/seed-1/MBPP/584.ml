
let rec find_adverbs (text : string) : string =
    let rec aux (i : int) (acc : string) =
        if i >= String.length text then
            acc
        else if text.[i] = ' ' && (String.get text (i + 1)) = 'l' && (String.get text (i + 2)) = 'y' then
            String.make 1 text.[i] ^ " " ^ acc
        else
            aux (i + 1) (acc ^ " ")
    in aux 0 ""

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the first adverb ending with ly and its positions in a given string. *)
