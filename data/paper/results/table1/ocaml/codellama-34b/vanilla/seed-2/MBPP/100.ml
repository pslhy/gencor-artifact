let rec next_smallest_palindrome (num : int) : int =
    let num_str = string_of_int num in
    let len = String.length num_str in
    let is_palindrome s =
        let slen = String.length s in
        let stride = slen / 2 in
        let is_symmetric i = s.[i] = s.[slen - i - 1] in
        List.for_all is_symmetric [0 .. stride - 1]
    in
    let rec helper i =
        if i >= len then
            0
        else if is_palindrome (String.sub num_str i (len - i)) then
            String.sub num_str i (len - i)
        else
            helper (i + 1)
    in
    int_of_string (helper 0)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the next smallest palindrome of a specified integer, returned as an integer. *)
