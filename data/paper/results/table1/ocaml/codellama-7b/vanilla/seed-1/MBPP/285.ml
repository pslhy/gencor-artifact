let rec text_match_two_three (text : string) : bool =
    let rec aux (i : int) (acc : int) : bool =
        if i >= String.length text then
            acc = 2 || acc = 3
        else
            if text.[i] = 'a' then
                aux (i + 1) (acc + 1)
            else
                aux (i + 1) 0
    in
    aux 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that checks whether a string contains the 'a' character followed by two or three 'b' characters. *)
