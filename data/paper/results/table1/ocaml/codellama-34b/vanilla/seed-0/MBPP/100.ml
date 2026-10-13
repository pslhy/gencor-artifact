let rec next_smallest_palindrome (num : int) : int =
    if is_palindrome num then num
    else
        let incremented = num + 1
        if is_palindrome incremented then incremented
        else next_smallest_palindrome incremented

let is_palindrome (num : int) : bool =
    let str_num = string_of_int num
    let len = String.length str_num
    let is_palindrome_from_index i =
        i > len / 2 || str_num.[i] = str_num.[len - i - 1]
    List.for_all is_palindrome_from_index [0..len-1]


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the next smallest palindrome of a specified integer, returned as an integer. *)
