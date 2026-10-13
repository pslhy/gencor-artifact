let rec prime_num (num : int) : bool =
    let rec aux (i : int) : bool =
        if i < num then
            num mod i = 0 && aux (i + 1)
        else
            num mod i <> 0
    in
    aux 2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if the given integer is a prime number. *)
