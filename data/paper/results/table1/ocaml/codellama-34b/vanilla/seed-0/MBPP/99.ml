let rec decimal_to_binary (n : int) : string =
    if n = 0 then "0"
    else
        let (quotient, remainder) = (n / 2, n mod 2)
        decimal_to_binary(quotient) + string_of_int(remainder)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert the given decimal number to its binary equivalent, represented as a string with no leading zeros. *)
