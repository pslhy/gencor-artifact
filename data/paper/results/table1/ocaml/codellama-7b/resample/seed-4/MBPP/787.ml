(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that matches a string that has an a followed by three 'b'. *)
let rec text_match_three (text : string) : bool = 
    (* base case: if the string is empty, there are no more `a's or `b's to match *)
    if text = ""
    then false
    (* recursive case: check for an `a' followed by three `b's *)
    else
        let (head, tail) = String.split_at (text, 1) in
        if head = "a"
        then text_match_three tail = 3 (* move along the tail *)
        else false (* if the head is not an `a`, there is no way it will match *)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:28: Unbound value "String.split_at" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec text_match_three (text : string) : bool = 
    let len = String.length text in
    if len < 4
    then false
    else
        let (head, tail) = String.split_at (text, 1) in
        if head = "a"
        then text_match_three tail = 3
        else false

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:28: Unbound value "String.split_at" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec text_match_three (text : string) : bool = 
    let len = String.length text in
    if len < 4
    then false
    else
        let (head, tail) = String.split text 1 in
        if head = "a"
        then text_match_three tail = 3
        else false

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:28: Unbound value "String.split" *)
(*     Hint: Did you mean "blit"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec text_match_three (text : string) : bool = 
    let len = String.length text in
    if len < 4
    then false
    else
        let (head, tail) = String.blit text 1 in
        if head = "a"
        then text_match_three tail = 3
        else false

