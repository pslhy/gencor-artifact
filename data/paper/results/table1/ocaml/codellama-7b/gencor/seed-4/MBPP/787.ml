
let rec text_match_three (text : string) : bool = 
    (* base case: if the string is empty, there are no more `a's or `b's to match *)
    if text = ""
    then false
    (* recursive case: check for an `a' followed by three `b's *)
    else
        let (head, tail) = String.split_on_char 'a' text in
        if head = "" || tail = ""
        then false
        else text_match_three tail

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that matches a string that has an a followed by three 'b'. *)
