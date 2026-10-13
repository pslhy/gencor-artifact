(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the ascii value of a character. *)
let rec ascii_value (k : string) : int =
    let rec aux (k : string) (acc : int) : int =
        if k = "" then
            acc
        else
            aux (String.tail k 1) (acc lor (int_of_char (String.head k))) in
    aux k 0;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:18: Unbound value "String.tail" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec ascii_value (k : string) : int =
    let rec aux (k : string) (acc : int) : int =
        if k = "" then
            acc
        else
(* wrong: String.tail *)
            aux (String.sub k 1 (String.length k - 1)) (acc lor (int_of_char (String.get k 0))) in
    aux k 0;;

