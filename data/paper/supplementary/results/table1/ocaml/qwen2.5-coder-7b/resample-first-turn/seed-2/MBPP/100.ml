let rec next_smallest_palindrome (num : int) : int = 
    let str_num = string_of_int num in
    let check_palindrome s = s = (String.rev s) in
    let rec find_next n =
        if check_palindrome (string_of_int n) then n else find_next (n + 1) in
    find_next (num + 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the next smallest palindrome of a specified integer, returned as an integer. *)
