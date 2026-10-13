let rec decimal_to_binary (n : int) : string =
    let rec aux (n : int) (acc : string) : string =
        if n = 0 then
            acc
        else
            let (digit, remainder) = n / 2, n % 2 in
            aux remainder (string_of_int digit ^ acc)
    in
    if n < 0 then
        "-" ^ aux (abs n) ""
    else
        aux n ""


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert the given decimal number to its binary equivalent, represented as a string with no leading zeros. *)
