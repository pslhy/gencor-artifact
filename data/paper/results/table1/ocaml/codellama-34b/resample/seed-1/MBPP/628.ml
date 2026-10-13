(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to replace all spaces in the given string with '%20'. *)
let rec replace_spaces (string : string) : string =
    let space = " " in
    let url = "%20" in
    let len = String.length string in
    let rec loop (i : int) (acc : string) : string =
        if i = len - 1 then
            if string.[i] = space then
                acc ^ url
            else
                acc ^ (string.[i])
        else
            if string.[i] = space then
                loop (i + 1) (acc ^ url)
            else
                loop (i + 1) (acc ^ string.[i])
    in loop 0 ""

