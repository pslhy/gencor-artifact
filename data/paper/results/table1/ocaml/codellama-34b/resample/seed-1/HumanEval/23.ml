(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Return length of given string *)
(*     >>> strlen "" *)
(*     0 *)
(*     >>> strlen "abc" *)
(*     3 *)
let rec strlen (string : string) : int =
    let rec aux (string : string) (acc : int) : int =
        if string = "" then
            acc
        else
            aux (String.tail string) (acc + 1)
    in
    aux string 0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:18: Unbound value "String.tail" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec strlen (string : string) : int =
    let rec aux (string : string) (acc : int) : int =
        if string = "" then
            acc
        else
            aux (String.sub string 1 (String.length string - 1)) (acc + 1)
    in
    aux string 0

