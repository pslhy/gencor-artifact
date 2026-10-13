(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to reverse words seperated by spaces in a given string. *)
let rec reverse_words (s : string) : string =
    let reverse (s : string) : string =
        let rec reverse_aux (s : string) (i : int) (j : int) : string =
            if i < 0 then
                s
            else
                reverse_aux (s.[i] :: s.[j] :: []) (i - 1) (j - 1)
        in
        reverse_aux s (String.length s - 1) 0
    in
    reverse s

