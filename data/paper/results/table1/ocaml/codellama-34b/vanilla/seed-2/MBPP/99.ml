let rec decimal_to_binary (n : int) : string =
    match n with
    | 0 -> "0"
    | 1 -> "1"
    | _ ->
        let (d, m) = (n / 2, n mod 2) in
        if m = 1 then
            "1" ^ decimal_to_binary d
        else
            "0" ^ decimal_to_binary d


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert the given decimal number to its binary equivalent, represented as a string with no leading zeros. *)
