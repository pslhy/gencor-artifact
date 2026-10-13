
let rec strlen (string : string) : int =
    let rec aux (string : string) (acc : int) : int =
        if string = "" then
            acc
        else
            aux (String.sub string 1 (String.length string - 1)) (acc + 1)
    in
    aux string 0

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Return length of given string *)
(*     >>> strlen "" *)
(*     0 *)
(*     >>> strlen "abc" *)
(*     3 *)
