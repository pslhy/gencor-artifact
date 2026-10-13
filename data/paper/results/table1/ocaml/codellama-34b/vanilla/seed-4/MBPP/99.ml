let rec decimal_to_binary (n : int) : string = 
    if n = 0 then
        "0"
    else
        let (q, r) = (n / 2, n % 2) in
        if r = 1 then
            "1" ^ decimal_to_binary(q)
        else
            "0" ^ decimal_to_binary(q)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert the given decimal number to its binary equivalent, represented as a string with no leading zeros. *)
