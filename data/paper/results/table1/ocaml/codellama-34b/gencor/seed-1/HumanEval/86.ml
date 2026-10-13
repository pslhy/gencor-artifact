
let rec anti_shuffle (s : string) : string =
    let ascending_order s =
        let rec helper (acc : string) (curr : char) (rest : string) =
            if curr == ' ' then acc ^ " " else helper (acc ^ String.make 1 curr) rest (rest.[1])
        in helper "" s.[0] s.[1..((String.length s)-1)] in
    let split s =
        let rec helper (acc : string list) (curr : char) (rest : string) =
            if curr == ' ' then acc :: helper (curr :: rest.[1]) else helper (acc :: (String.make 1 curr)) rest (rest.[1..((String.length rest)-1)])
        in helper [] s.[0] s.[1..((String.length s)-1)] in
    let rec join (l : string list) =
        match l with
        | [] -> ""
        | head :: tail -> head ^ join tail
    in join (List.map ascending_order (split s))

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes a string and returns an ordered version of it. *)
(*     Ordered version of string, is a string where all words (separated by space) *)
(*     are replaced by a new word where all the characters arranged in *)
(*     ascending order based on ascii value. *)
(*     Note: You should keep the order of words and blank spaces in the sentence. *)
(*     For example: *)
(*     >>> anti_shuffle "Hi" *)
(*     "Hi" *)
(*     >>> anti_shuffle "hello" *)
(*     "ehllo" *)
(*     >>> anti_shuffle "Hello World!!!" *)
(*     "Hello !!!Wdlor" *)
