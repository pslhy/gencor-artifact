
let rec is_decimal (num : string) : bool =
    match num with
    | [] -> true
    | hd :: tl -> (
        match hd with
        | '.' -> is_decimal (tl)
        | _ -> (
            match tl with
            | [] -> false
            | _ :: _ -> is_decimal (tl)
        )
    )

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether a given string is a decimal number with a precision of 2. *)
