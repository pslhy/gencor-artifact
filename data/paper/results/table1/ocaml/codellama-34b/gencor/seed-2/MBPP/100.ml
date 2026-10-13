
let rec next_smallest_palindrome (num : int) : int =
    let num_str = string_of_int num in
    let len = String.length num_str in
    let is_palindrome s =
        let slen = String.length s in
        let stride = slen / 2 in
        let is_symmetric i = s.[i] = s.[slen - i - 1] in
        List.for_all is_symmetric [0..(stride - 1)]
    in
    if is_palindrome num_str then num
    else
        let rec find_next_smallest curr =
            let curr_str = string_of_int curr in
            if is_palindrome curr_str then curr
            else find_next_smallest (curr + 1)
        in
        find_next_smallest (num + 1)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the next smallest palindrome of a specified integer, returned as an integer. *)
